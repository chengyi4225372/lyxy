var player = null;
var removeClock = null;
var addClock = null;

function get_custom_id() {
  return Cookies.get('user_key');
}

function get_cc_verification_code(vid) {
  return Cookies.get('access_token');
}

// 初始化播放器配置
function getSWF(objectID) {
  if (window.document[objectID]) {
    return window.document[objectID];
  } else if (navigator.appName.indexOf("Microsoft") == -1) {
    if (document.embeds && document.embeds[objectID]) {
      return document.embeds[objectID];
    }
  } else {
    return document.getElementById(objectID);
  }
}

function on_cc_player_init(vid, swfID) {
  var config = {};
  config.loading_enable = 0;
  config.on_player_start = "onPlayerStart";
  config.on_player_stop = "onPlayerStop";
  config.on_player_ready = "onPlayerReady";
  config.on_player_playerror = "onPlayerPlayError";
  config.on_player_playover = "onPlayerPlayOver";
  config.player_plugins = {
    Marquee: {}
  };
  player = getSWF(swfID);
  player.setConfig(config)
}

// function on_cc_h5player_init(){
//   var h5Player = document.getElementsByTagName('video')[0];
//   h5Player.addEventListener('ended', function(){
//     onPlayerStop();
//   });
//   $(h5Player).click(function () {
//     switchPlayerPlay(h5Player);
//   });
// }

function onPlayerStart() {
  var event = new Event('playing_now');
  document.dispatchEvent(event);
  var currentHref = window.location.href;
  if (currentHref.search("(/micro/play/\\d+|/classmate/play/\\d+)") != -1) {
    addClock = setTimeout("addHorseRaceLamp()", 5000);
  }
}

function onPlayerStop() {
  var event = new Event('playing_stop');
  document.dispatchEvent(event);
  window.clearInterval(addClock);
  window.clearInterval(removeClock);
}

function onPlayerReady() {
  var event = new Event('player_ready');
  document.dispatchEvent(event);
}

function onPlayerPlayError(code) {
  var event = new Event('playing_fail');
  document.dispatchEvent(event);
}

function addHorseRaceLamp() {
  var showText = "";
  if (!player){
    return
  }
  $.ajax({
    url: "https://www.luffycity.com/api/v1/user/info/",
    method: "GET",
    headers: {
      "Authorization": "Bearer " + Cookies.get('access_token')
    },
    data: {},
    dataType: "JSON",
    success: function (response) {
      if (response.error_no === 0) {
        showText = response.data["msg"];
        player.addTextItem(
          "HelloWorld",
          showText,
          15,
          "0xFF0000",
          "微软雅 ",
          [
            {
              index: 0,
              duration:6000,
              start: {
                xpos: 0.112,
                ypos: 0.123,
                alpha: 0.3
              },
              end:{
                xpos: 0.912,
                ypos: 0.943,
                alpha: 0.3
              }
            },
            {
              index: 0,
              duration:6000,
              start: {
                xpos: 0.912,
                ypos: 0.143,
                alpha: 0.3
              },
              end:{
                xpos: 0.112,
                ypos: 0.923,
                alpha: 0.3
              }
            },
            {
              index: 0,
              duration:6000,
              start: {
                xpos: 0.112,
                ypos: 0.543,
                alpha: 0.3
              },
              end:{
                xpos: 0.912,
                ypos: 0.523,
                alpha: 0.3
              }
            }
          ],
          -1
        );
        removeClock = setTimeout("removeHorseRaceLamp()", 18000);
      }
    }
  });
}

function removeHorseRaceLamp() {
  player.removeItem("HelloWorld");
  window.clearInterval(removeClock);
  setTimeout("addHorseRaceLamp()", 42000)
}

function switchPlayerPlay(h5Player) {
  if (h5Player.paused){
    h5Player.play();
  }else {
    h5Player.pause();
  }
}

(function () {
  $(document).keydown(function (e) {
    var h5Player = document.getElementsByTagName('video')[0];

    if (!h5Player) {
      return null;
    }

    if (h5Player.classList.contains("pv-video")) {
      return null;
    }

    switch (e.keyCode) {
      case 32:
        e.preventDefault();
        switchPlayerPlay(h5Player);
        break;
      case 37:
        h5Player.currentTime = h5Player.currentTime - 3;
        break;
      case 39:
        h5Player.currentTime = h5Player.currentTime + 3;
        break;
    }
  });

})();
