$(document).ready(function () {
    loadTheme((theme) => {
	})
});

window.addEventListener('message', function(event) {
	const {action, data} = event.data;
	if (action == 'show') {
		$("body").fadeOut(500);
		$("#title").text(data.title);
		// $(".description").text(data.desc);
        $(".description").html(data.desc);
		$("body").fadeIn(500);
		// $(".wrap").animate({right: '-3%'}, "slow");
		// $(".wrap").animate({right: '1.6vw'}, "slow");
	} else if (action == 'hide') {
		$("body").fadeOut(500);
    } else if (action == 'updateText') {
        $("#title").text(data.title);
        $(".description").html(data.desc);
	}
})
