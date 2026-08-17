var rot = 0;
var duration;
var playPercent;
var bufferPercent;
var currentSong = 0;
var arm_rotate_timer;
var arm = document.getElementById("arm");
var next = document.getElementById("next");
var song = document.getElementById("song");
var timer = document.getElementById("timer");
var music = document.getElementById("music");
var volume = document.getElementById("volume");
var playButton = document.getElementById("play");
var timeline = document.getElementById("slider");
var playhead = document.getElementById("elapsed");
var previous = document.getElementById("previous");
var pauseButton = document.getElementById("pause");
var bufferhead = document.getElementById("buffered");
var image = document.getElementById("image");
var timelineWidth = timeline.offsetWidth - playhead.offsetWidth;
var visablevolume = document.getElementsByClassName("volume")[0];
var translations = {};
var defaultVolume = 0.05;
var playlist = [];
var loadingFallback = document.getElementById("loading-fallback");
var loadingText = document.querySelector(".loading-text");
var percentageElement = document.querySelector(".percentage");
var ageClassification = document.querySelector(".age-classification");
var player = document.querySelector(".player");
var isLoadingComplete = false;
var loadingTimeout;
var loadingDotsInterval;

// Create a cache object for assets
var assetCache = {
	translations: null,
	songs: {},
	images: {}
};

// Set loading timeout - if loading takes too long, show fallback content
loadingTimeout = setTimeout(function() {
	if (!isLoadingComplete) {
		forceCompleteLoading();
	}
}, 10000); // 10 seconds timeout

// Animação de pontos de carregamento
function startLoadingTextAnimation() {
	let dots = 0;
	const maxDots = 3;
	
	if (loadingText) {
		loadingDotsInterval = setInterval(function() {
			dots = (dots + 1) % (maxDots + 1);
			let dotsText = '.'.repeat(dots);
			loadingText.textContent = `Carregando${dotsText}`;
		}, 500);
	}
}

function forceCompleteLoading() {
	console.log("Loading timeout - forcing content display");
	showLoadedContent();
}

function showLoadedContent() {
	if (isLoadingComplete) return;
	
	isLoadingComplete = true;
	clearTimeout(loadingTimeout);
	clearInterval(loadingDotsInterval);
	
	if (loadingFallback) {
		loadingFallback.classList.add('loaded');
		
		// Remover completamente após a transição terminar
		setTimeout(function() {
			loadingFallback.style.display = 'none';
		}, 1000);
	}
	
	if (ageClassification) ageClassification.classList.add('loaded');
	if (player) player.classList.add('loaded');
	if (image) image.classList.add('loaded');
}

// Check local storage for cached translations
function getCachedTranslations() {
	try {
		const cachedData = localStorage.getItem('vrp_translations');
		if (cachedData) {
			const parsedData = JSON.parse(cachedData);
			if (parsedData && parsedData.timestamp) {
				// Use cache if less than 1 day old
				const now = new Date().getTime();
				if (now - parsedData.timestamp < 86400000) { // 24 hours
					console.log("Using cached translations");
					return parsedData.data;
				}
			}
		}
	} catch (e) {
		console.error("Error reading cached translations:", e);
	}
	return null;
}

// Cache translations in local storage
function cacheTranslations(data) {
	try {
		const cacheData = {
			timestamp: new Date().getTime(),
			data: data
		};
		localStorage.setItem('vrp_translations', JSON.stringify(cacheData));
		console.log("Translations cached successfully");
	} catch (e) {
		console.error("Error caching translations:", e);
	}
}

// Contador de recursos carregados
var resourcesTotal = 3; // Traduções, música, imagem
var resourcesLoaded = 0;

function updateLoadingProgress() {
	resourcesLoaded++;
	let progressPercent = Math.min(Math.round((resourcesLoaded / resourcesTotal) * 100), 100);
	console.log(`Carregamento: ${progressPercent}%`);
	
	// Atualiza o elemento de porcentagem
	if (percentageElement) {
		percentageElement.textContent = `${progressPercent}%`;
		
		// Adiciona uma animação suave para a porcentagem
		percentageElement.style.transition = "all 0.3s ease-in-out";
		percentageElement.style.transform = "scale(1.2)";
		setTimeout(() => {
			percentageElement.style.transform = "scale(1)";
		}, 300);
	}
	
	// Se todos os recursos estiverem carregados, mostrar o conteúdo
	if (resourcesLoaded >= resourcesTotal) {
		setTimeout(showLoadedContent, 500);
	}
}

function getCityNameOrWait(callback, maxRetries = 40, interval = 250) {
	let tries = 0;
	function check() {
		if (window.nuiHandoverData?.cityName) {
			callback(window.nuiHandoverData.cityName);
		} else if (tries < maxRetries) {
			tries++;
			setTimeout(check, interval);
		} else {
			// Logue erro fatal e não continue
			console.error('cityName não disponível após várias tentativas. Não é seguro continuar o loading.');
			// Opcional: mostrar mensagem de erro na tela
			if (loadingText) loadingText.textContent = "Erro ao carregar cidade. Tente novamente.";
		}
	}
	check();
}

document.addEventListener('DOMContentLoaded', () => {
	console.log("DOM loaded, initializing loading screen");
	
	// Inicia a animação de texto de carregamento
	startLoadingTextAnimation();
	
	// Try to get cached translations first
	const cachedTranslations = getCachedTranslations();
	if (cachedTranslations) {
		translations = cachedTranslations;
		assetCache.translations = cachedTranslations;
		updateLoadingProgress(); // Traduções carregadas
		loadContent();
		return;
	}
	
	// If no cached translations, fetch them
	fetch('http://localization/getLang', {
		method: 'POST',
		body: JSON.stringify({ resourceName: 'vrp' })
	})
	.then(response => response.json())
	.then(data => {
		translations = data;
		assetCache.translations = data;
		cacheTranslations(data);
		updateLoadingProgress(); // Traduções carregadas
		loadContent();
	})
	.catch(error => {
		console.error("Failed to load translations:", error);
    console.log("window.nuiHandoverData?.cityName", window.nuiHandoverData?.cityName);
		// Use default translations if fetch fails
		translations = getDefaultTranslationsForCity(window.nuiHandoverData?.cityName);
		assetCache.translations = translations;
		updateLoadingProgress(); // Traduções padrão carregadas
		loadContent();
	});
});

function loadContent() {
	// Wait for nuiHandoverData to be available
	if (!window.nuiHandoverData?.cityName) {
		console.log("Waiting for city name from backend...");
		setTimeout(loadContent, 500); // Retry after 500ms
		return;
	}

	var cityName = window.nuiHandoverData.cityName;
	console.log("Loading content for city: " + cityName);
	
	// Preload image and song
	var imageUrl = `https://santaimagens.roleplayrp.com/img/season7_loading_new/${cityName}/banner_cd.png`;
	var songUrl = `https://santaimagens.roleplayrp.com/img/season7_loading_new/${cityName}/song.mp3`;
	
	// Setup playlist with proper loading checks
	playlist = [
		{
			"song": `${cityName}`,
			"image": imageUrl,
			"mp3": songUrl,
			"volume": defaultVolume,
		},
	];
	
	// Preload image
	preloadImage(imageUrl, function() {
		console.log("Image preloaded successfully");
		if (image) image.src = imageUrl;
		
		// Update translations
		updateTranslatedElements();
		
		// Image loaded
		updateLoadingProgress();
		
		// Load audio after image is ready
		load();
	});
}

function preloadImage(url, callback) {
	if (assetCache.images[url]) {
		console.log("Using cached image: " + url);
		callback();
		return;
	}
	
	var img = new Image();
	img.onload = function() {
		console.log("Image loaded: " + url);
		assetCache.images[url] = true;
		if (callback) callback();
	};
	img.onerror = function() {
		console.error("Error loading image: " + url);
		if (callback) callback();
	};
	img.src = url;
}

function updateTranslatedElements() {
	const classificationTitle = document.querySelector('.classification-title');
	const classificationText = document.querySelector('.classification-text')?.querySelectorAll('p');
	const classificationFooter = document.querySelector('.classification-footer');

  console.log("cityName", window.nuiHandoverData?.cityName);
	
	const cityName = window.nuiHandoverData?.cityName;
	
	if (!translations || !translations.textContent) {
		console.warn("Translations missing or incomplete, using defaults");
		translations = getDefaultTranslationsForCity(cityName);
	}
	
	if (classificationTitle) {
		classificationTitle.textContent = translations.textContent?.classificationTitle || "CLASSIFICAÇÃO INDICATIVA";
	}
	
	if (classificationText && classificationText.length >= 3) {
		classificationText[0].textContent = translations.textContent?.violence || "Violência";
		classificationText[1].textContent = translations.textContent?.drugs || "Drogas";
		classificationText[2].textContent = translations.textContent?.sexualContent || "Conteúdo Sexual";
	}
	
	if (classificationFooter) {
		classificationFooter.innerHTML = translations.textContent?.ageRestriction || "Não recomendado para<br>menores de 18 anos";
	}
}

function getDefaultTranslationsForCity(cityName) {
	const defaultTranslations = {
		"kingdom": {
			textContent: {
				classificationTitle: "CLASSIFICATION INDICATIVE",
				violence: "Violence",
				drugs: "Drugs",
				sexualContent: "Sexual Content",
				ageRestriction: "Not recommended for<br>under 18 years"
			}
		},
		// Portuguese (PT) for Caravelas
		"caravelas": {
			textContent: {
				violence: "Violência",
				drugs: "Drogas",
				sexualContent: "Conteúdo Sexual",
				ageRestriction: "Desaconselhado a menores<br>de 18 ANOS",
				classificationTitle: "CLASSIFICAÇÃO ETÁRIA"
			}
		},
		// Portuguese (BR) for other cities (default)
		"default": {
			textContent: {
				classificationTitle: "CLASSIFICAÇÃO INDICATIVA",
				violence: "Violência",
				drugs: "Drogas",
				sexualContent: "Conteúdo Sexual",
				ageRestriction: "Não recomendado para<br>menores de 18 anos"
			}
		}
	};

	const lowerCityName = cityName?.toLowerCase() || "default";
	
	return defaultTranslations[lowerCityName] || defaultTranslations["default"];
}

music.addEventListener("ended", _next, false);
music.addEventListener("timeupdate", ({ target }) => {
	if (target.duration) {
		playPercent = timelineWidth * (target.currentTime / target.duration);
		playhead.style.width = playPercent + "px";
		timer.innerHTML = formatSecondsAsTime(music.currentTime.toString());
	}
}, false);

function load() {
	pauseButton.style.visibility = "hidden";
	song.innerHTML = playlist[currentSong]['song'];
	song.title = playlist[currentSong]['song'];
	music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/mp3">';
	
	// Add error handling for audio load
	music.onerror = function() {
		console.error("Error loading audio");
		updateLoadingProgress(); // Considera o áudio carregado mesmo com erro
		showLoadedContent(); // Show content even if audio fails
	};
	
	music.oncanplaythrough = function() {
		updateLoadingProgress(); // Áudio carregado
	};
	
	music.load();
	
	// Lower timeout for audio play to improve perceived performance
	setTimeout(() => {
		try {
			music.play().catch(e => {
				console.error("Audio play error:", e);
				updateLoadingProgress(); // Considera o áudio carregado mesmo com erro
				showLoadedContent();
			});
		} catch(e) {
			console.error("Audio play exception:", e);
			updateLoadingProgress(); // Considera o áudio carregado mesmo com erro
			showLoadedContent();
		}
	}, 800);
	
	if (image) image.src = playlist[currentSong]['image'];
	
	const songVolume = playlist[currentSong].volume !== undefined ? playlist[currentSong].volume : defaultVolume;
	music.volume = songVolume;
	volume.value = songVolume;
	visablevolume.style.width = (200 - 11) * songVolume + "px";
}

function reset() {
	rotate_reset = setInterval(function () {
		if (rot == 0) {
			clearTimeout(rotate_reset);
		}
	}, 1);
	fireEvent(pauseButton, 'click');
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = "";
	currentSong = 0;
	song.innerHTML = playlist[currentSong]['song'];
	song.title = playlist[currentSong]['song'];
	music.innerHTML = '<source src="' + playlist[currentSong].mp3 + '" type="audio/mp3">';
	music.load();
	image.src = playlist[currentSong]['image'];
}

function formatSecondsAsTime(secs, format) {
	var hr = Math.floor(secs / 3600);
	var min = Math.floor((secs - (hr * 3600)) / 60);
	var sec = Math.floor(secs - (hr * 3600) - (min * 60));
	if (sec < 10) {
		sec = "0" + sec;
	}
	return min + ':' + sec;
}

function fireEvent(el, etype) {
	if (el.fireEvent) {
		el.fireEvent('on' + etype);
	} else {
		var evObj = document.createEvent('Events');
		evObj.initEvent(etype, true, false);
		el.dispatchEvent(evObj);
	}
}

function _next() {
	if (currentSong == playlist.length - 1) {
		reset();
	} else {
		fireEvent(next, 'click');
	}
}

playButton.onclick = function () {
	music.play();
}

pauseButton.onclick = function () {
	music.pause();
}

music.addEventListener("play", function () {
	playButton.style.visibility = "hidden";
	pause.style.visibility = "visible";
	rotate_timer = setInterval(function () {
		if (!music.paused && !music.ended && 0 < music.currentTime) {

		}
	}, 10);
	arm_rotate_timer = setInterval(function () {
		if (!music.paused && !music.ended && 0 < music.currentTime) {
			if (arm.style.transition != "") {
				setTimeout(function () {
					arm.style.transition = "";
				}, 1000);
			}
		}
	}, 1000);
}, false);

music.addEventListener("pause", function () {
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	playButton.style.visibility = "visible";
	pause.style.visibility = "hidden";
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
}, false);

next.onclick = function () {
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = "";
	arm.style.transform = 'rotate(-45deg)';
	armrot = -45;
	if ((currentSong + 1) == playlist.length) {
		currentSong = 0;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/mp3">';
	} else {
		currentSong++;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/mp3">';
	}
	song.innerHTML = playlist[currentSong]['song'];
	song.title = playlist[currentSong]['song'];

	image.src = playlist[currentSong]['image'];
	music.load();
	duration = music.duration;
	music.play();
}

previous.onclick = function () {
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = "";
	arm.style.transform = 'rotate(-45deg)';
	armrot = -45;
	if ((currentSong - 1) == -1) {
		currentSong = playlist.length - 1;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/mp3">';
	} else {
		currentSong--;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/mp3">';
	}
	song.innerHTML = playlist[currentSong]['song'];
	song.title = playlist[currentSong]['song'];
	music.load();
	duration = music.duration;
	music.play();


}

volume.oninput = function () {
	music.volume = volume.value;
	visablevolume.style.width = (200 - 11) * volume.value + "px";
}

music.addEventListener("canplay", function () {
	duration = music.duration;
}, false);

const bd = document.body, cur = document.getElementById("fare");
bd.addEventListener("mousemove", function (n) {
	(cur.style.left = n.clientX + "px"), (cur.style.top = n.clientY + "px")
})

// Set initial volume to default value
music.volume = defaultVolume;
volume.value = defaultVolume;
visablevolume.style.width = (200 - 11) * defaultVolume + "px";
