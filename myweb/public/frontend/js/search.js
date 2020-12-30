$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
$(function () {
    $('.search_category').click(function () {
        // alert("moc");
        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(url);
        alert(id);
        var html = "";
        $.post(url, { id: id })
            .done(function (data) {
                if (data.status == 'success') {
                    // alert("moc");
                    toastr.success(data.msg);
                    for (var i in data.list.data) {
                        html += ' <div class="col-xs-12 col-sm-6 col-md-4"><div class="single-product"><div class="product-img">';
                        html += '<a href="#"><img width="200px" height="230px" src="' + data.list.data[i]['pro_image'] + '" alt="Product Title" /></a>';
                        html += '<div class="actions-btn">';
                        html += '<a class="addtocart" data-href="/////////" data-id="' + i + '"><i class="mdi mdi-cart"></i></a>';
                        html += ' <a href="#" data-toggle="modal" data-target="#quick-view{{($item->id)}}"><i class="mdi mdi-eye"></i></a>';
                        html += '<a href="#"><i class="mdi mdi-heart"></i></a>';
                        html += '</div> </div>';
                        html += '<div class="product-dsc"> <p><a href="#">' + data.list.data[i]['product_name'] + '</a></p> <div class="ratting">';
                        html += '<i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star-half"></i> <i class="mdi mdi-star-outline"></i>';
                        html += ' </div> <span>' + data.list.data[i]['price'] + '</span>';
                        html += '</div> </div> </div>';
                    }
                    $('#showproduct').html(html);
                }
                else
                    toastr.error(data.msg);
            })
    })
    $('.search_brand').click(function () {
        // alert("moc");

        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(url);
        // alert(id);
        var html = "";
        $.post(url, { id: id })
            .done(function (data) {
                if (data.status == 'success') {
                    // alert("moc");
                    toastr.success(data.msg);
                    for (var i in data.list.data) {
                        html += ' <div class="col-xs-12 col-sm-6 col-md-4"><div class="single-product"><div class="product-img">';
                        html += '<a href="#"><img width="200px" height="230px" src="' + data.list.data[i]['pro_image'] + '" alt="Product Title" /></a>';
                        html += '<div class="actions-btn">';
                        html += '<a class="addtocart" data-href="/////////" data-id="' + i + '"><i class="mdi mdi-cart"></i></a>';
                        html += ' <a href="#" data-toggle="modal" data-target="#quick-view{{($item->id)}}"><i class="mdi mdi-eye"></i></a>';
                        html += '<a href="#"><i class="mdi mdi-heart"></i></a>';
                        html += '</div> </div>';
                        html += '<div class="product-dsc"> <p><a href="#">' + data.list.data[i]['product_name'] + '</a></p> <div class="ratting">';
                        html += '<i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star-half"></i> <i class="mdi mdi-star-outline"></i>';
                        html += ' </div> <span>' + data.list.data[i]['price'] +'</span>';
                        html += '</div> </div> </div>';
                    }
                    $('#showproduct').html(html);
                }
                else
                    toastr.error(data.msg);
            })
    })
    $('.search_provider').click(function () {
        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(url);
        // alert(id);
        var html = "";
        $.post(url, { id: id })
            .done(function (data) {
                if (data.status == 'success') {
                    // alert("moc");
                    toastr.success(data.msg);
                    for (var i in data.list.data) {
                        html += ' <div class="col-xs-12 col-sm-6 col-md-4"><div class="single-product"><div class="product-img">';
                        html += '<a href="#"><img width="200px" height="230px" src="' + data.list.data[i]['pro_image'] + '" alt="Product Title" /></a>';
                        html += '<div class="actions-btn">';
                        html += '<a class="addtocart" data-href="/////////" data-id="' + i + '"><i class="mdi mdi-cart"></i></a>';
                        html += ' <a href="#" data-toggle="modal" data-target="#quick-view{{($item->id)}}"><i class="mdi mdi-eye"></i></a>';
                        html += '<a href="#"><i class="mdi mdi-heart"></i></a>';
                        html += '</div> </div>';
                        html += '<div class="product-dsc"> <p><a href="#">' + data.list.data[i]['product_name'] + '</a></p> <div class="ratting">';
                        html += '<i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star"></i> <i class="mdi mdi-star-half"></i> <i class="mdi mdi-star-outline"></i>';
                        html += ' </div> <span>' + data.list.data[i]['price'] + '</span>';
                        html += '</div> </div> </div>';
                    }
                    $('#showproduct').html(html);
                }
                else
                    toastr.error(data.msg);
            })
    })
})

