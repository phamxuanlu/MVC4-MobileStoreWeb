$(document).ready(function () {
    $(".pr_add").click(function () {
        var url = $(this).data('post-url');
        var id = $(this).parent().attr("id").split('-')[1];
        var item={ID:id};
        $.ajax({
            type: 'POST',
            url: url,
            data: item,
            success:function(res){
                if (res == 'success') {
                    RefreshPage();
                }
            }
        });
    });

    function RefreshPage()
    {
        $.ajax({
            type: 'GET',
            url: '/Layout/_PartialMiniCart',
            success: function (res) {
                $('#mini_cart').html(res);
                console.log(res);
                jQuery(".minicart_link").toggle(function () {
                    $('.cart_drop').slideDown(300);
                }, function () {
                    $('.cart_drop').slideUp(300);
                });
            }
        });
    }
});