$(document).ready(function () {
    $("#login-widget-switch").click(function () {
        var lb = $("#lightbox");
        var gray = $("#gray");
        gray.css("display", "block");
        lb.slideDown(300); ;        
        
//        //Disable scroll bar
//        $('html, body').css({
//            "overflow": "hidden",
//            "height": "100%"
//        });

        gray.click(function () {
            $('html, body').css({
                "overflow": "auto",
                "height": "auto"
            });
            lb.slideUp(300);
            gray.css("display", "none");
            //lb.remove();
            //gray.remove();
        });

        $("#btnSubmit").click(function () {

            if ($("#Username").val() == '') {
                $("#msg_error").text('Tên đăng nhập không được trống!');
                return false;
            }

            if ($("#Password").val() == '') {
                $("#msg_error").text('Mật khẩu không được trống!');
                return false;
            }

            if ($("#Email").val() == '') {
                $("#msg_error").text('Email không được trống!');
                return false;
            }

            var info = {
                Username: $("#Username").val(),
                Password: $("#Password").val(),
                Email: $("#Email").val()
            };
            console.log(Ajaxurl.url);
            $.post(
            Ajaxurl.url,
            { strInfo: JSON.stringify(info) },
            function (ret) {
                $("#msg_error").text(ret);

            }
        );

        });
    });
});
