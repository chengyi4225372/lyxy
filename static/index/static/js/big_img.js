function toBig(obj) {
    var imgsrc = $(obj).attr("src");
    var opacityBottom = '<div id="opacityBottom" style="display: none">' +
        '<img class="bigImg" src="' + imgsrc + '" ></div>';
    $(document.body).append(opacityBottom);
    toBigImg();//变大函数
}

function toBigImg() {
    $("#opacityBottom").addClass("opacityBottom");
    $("#opacityBottom").show();
//                    $("html,body").addClass("none-scroll");//下层不可滑动

    $(".bigImg").addClass("bigImg");
    /*隐藏*/
    $("#opacityBottom").bind("click", clickToSmallImg);
    $(".bigImg").bind("click", clickToSmallImg);
    var imgHeight = $(".bigImg").prop("height");
    function clickToSmallImg() {
//                        $("html,body").removeClass("none-scroll");
        $("#opacityBottom").remove();
    }
}
