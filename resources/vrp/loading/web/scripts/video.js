var cityName = "";
var videoId = "";
// Remover a importação ES6 que está causando o erro
// import cityConfigs from "./cityConfigs.js";

// Definir cityConfigs diretamente no arquivo
var cityConfigs = {
  "Universo": "l6yNBw9KbAY",
  "Santa": "hHkW2OovuQs",
  "Alexandria": "HFNXWBnNRUY",
  "Kingdom": "xiukPO28Wrw",
  "Maresia": "dBOszg1TrDA",
  "CidadeNobre": "G7AnX0r3ozk",
  "Caravelas": "xRt5M0k4g14"
};

// Simplified video loading with fallback options
var videoLoaded = false;
var videoLoadTimeout;
var videoLoadAttempts = 0;
var maxVideoLoadAttempts = 3;

// Function to hide video if it takes too long to load
function setupVideoLoadingTimeout() {
  clearTimeout(videoLoadTimeout);
  videoLoadTimeout = setTimeout(function() {
    if (!videoLoaded && videoLoadAttempts >= maxVideoLoadAttempts) {
      console.log("Video loading timeout - hiding video background");
      const videoBackground = document.querySelector('.video-background');
      if (videoBackground) {
        videoBackground.style.display = 'none';
      }
      
      // Show a static background as fallback
      document.body.style.backgroundColor = '#000000';
      
      // Make sure content is displayed even if video fails
      if (typeof showLoadedContent === 'function') {
        showLoadedContent();
      }
    } else if (!videoLoaded) {
      // Try loading again with lower quality
      videoLoadAttempts++;
      console.log(`Video load attempt ${videoLoadAttempts} of ${maxVideoLoadAttempts}`);
      loadYouTubeVideo(true);
    }
  }, 8000); // 8 seconds timeout
}

// Load video with appropriate settings based on network conditions
function loadYouTubeVideo(lowQuality) {
  if (typeof YT === 'undefined' || !YT.Player) {
    console.log("YouTube API not ready yet");
    return;
  }
  
  if (videoLoaded) {
    console.log("Video already loaded");
    return;
  }
  
  try {
    // Clear any existing player
    const container = document.getElementById('YouTubeBackgroundVideoPlayer');
    if (container) {
      container.innerHTML = '';
    }
    
    var qualitySetting = lowQuality ? 'small' : 'hd720';
    
    // Create new player with optimized settings
    var player = new YT.Player('YouTubeBackgroundVideoPlayer', {
      videoId: videoId,
      width: 1920,
      height: 1080,
      playerVars: {
        playlist: videoId,
        autoplay: 1,
        autohide: 1,
        disablekb: 1,
        controls: 0,
        showinfo: 0,
        modestbranding: 1,
        loop: 1,
        fs: 0,
        rel: 0,
        enablejsapi: 1,
        // Set lower quality for slow connections
        vq: qualitySetting
      },
      events: {
        onReady: function(e) {
          e.target.mute();
          
          // Set to appropriate quality based on network conditions
          e.target.setPlaybackQuality(qualitySetting);
          
          // Only try to play if the video is loaded
          if (e.target.getPlayerState() !== -1) {
            e.target.playVideo();
            videoLoaded = true;
            clearTimeout(videoLoadTimeout);
          }
        },
        onStateChange: function(e) {
          if (e && e.data === 1) {
            videoLoaded = true;
            clearTimeout(videoLoadTimeout);
            
            var videoHolder = document.getElementById('home-banner-box');
            if (videoHolder && videoHolder.id) {
              videoHolder.classList.remove('loading');
            }
          }
          // If the video ends, replay it
          else if (e && e.data === 0) {
            e.target.playVideo();
          }
          // If there's an error, hide video
          else if (e && e.data === -1) {
            videoLoadAttempts++;
            console.log(`Video error detected, attempt ${videoLoadAttempts}`);
            
            if (videoLoadAttempts >= maxVideoLoadAttempts) {
              // Hide video background
              const videoBackground = document.querySelector('.video-background');
              if (videoBackground) {
                videoBackground.style.display = 'none';
              }
              
              // Show content even if video fails
              if (typeof showLoadedContent === 'function') {
                showLoadedContent();
              }
            }
          }
        },
        onError: function(e) {
          console.error("YouTube player error:", e.data);
          
          // Hide video on error and show content
          const videoBackground = document.querySelector('.video-background');
          if (videoBackground) {
            videoBackground.style.display = 'none';
          }
          
          if (typeof showLoadedContent === 'function') {
            showLoadedContent();
          }
        }
      }
    });
  } catch(e) {
    console.error("Error initializing YouTube player:", e);
    if (typeof showLoadedContent === 'function') {
      showLoadedContent();
    }
  }
}

// Initialize when document is ready
document.addEventListener('DOMContentLoaded', () => {
  console.log("window.nuiHandoverData?.cityName", window.nuiHandoverData?.cityName);

  if (!window.nuiHandoverData?.cityName) {
    console.log("Waiting for city name from backend...");
    setTimeout(loadContent, 500); // Retry after 500ms
    return;
  }
  // Get city name with fallback
  cityName = window.nuiHandoverData?.cityName;
  
  // Get video ID from cityConfigs (now globally available from index.html)
  videoId = window.cityConfigs?.[cityName] || cityConfigs?.[cityName];
  
  console.log("Video initialization for city: " + cityName);
  console.log("Video ID: " + videoId);
  
  // Setup timeout to handle slow loading
  setupVideoLoadingTimeout();
});

// YouTube iframe API callback
function onYouTubeIframeAPIReady() {
  console.log("YouTube API ready");
  loadYouTubeVideo(false);
}
