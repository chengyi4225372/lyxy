function player(video) {
    var player = '<div id="player">'+
    '<video id="video" class="video-js vjs-default-skin" controls="" height="720" width="600" autoplay="" preload="'+video+'">'+
        '<source src="'+video+'" type="video/mp4"></source></video></div>';
    $(document.body).append(player);
    toVideo();
}

function toVideo() {
    $("#player").addClass("player");
    $("#player").show();
    /*隐藏*/
    $("#player").bind("click", clickToSmallImg);
    function clickToSmallImg() {
        $("#player").remove();
    }
}