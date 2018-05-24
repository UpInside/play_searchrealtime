$(function () {

    $('input[name="term_search"]').on('keyup', function (e) {
        e.preventDefault();

        var form = $(this).parent('form');

        form.ajaxSubmit({
            url: 'controller.php',
            data: {action: 'search_product'},
            type: 'POST',
            dataType: 'json',
            success: function (data) {

                if (data.product) {

                    if (!$(form).find('.j_term_content').length) {
                        form.append("<div class='j_term_content'></div>");
                    }

                    $('.j_term_content').empty();

                    $.each(data.product, function (key, value) {
                        $('.j_term_content').append("<div class='j_term_content_item'>" +
                            "<img src='_img/" + value['product_image'] + "' width='100' height='100'>" +
                            "<div class='j_term_content_item_description'>" +
                            "<p><a href='https://localhost/play/autocomplete/produto/" + value['product_url'] + "'>" + value['product_name'] + "</a></p>" +
                            "<p>R$ " + value['product_price_full'] + "</p>" +
                            "<p>5x de R$ " + value['product_price_installment'] + "</p>" +
                            "</div>" +
                            "</div>");
                    });
                }

                if (data.product_clear) {
                    if ($('.j_term_content').length) {
                        $('.j_term_content').remove();
                    }
                }
            }
        });

    });


    $('body').on('click', function (e) {
        if (!$('.j_term_content').has(e.target).length) {
            $('.j_term_content').remove();
        }
    });


});