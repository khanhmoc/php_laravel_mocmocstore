$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

$(function () {
    $('.addtocart').click(function () {

        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        var html = "";
        var ques = "'Do you want to delete it?'";
        $.post(url, { id: id })
            .done(function (data) {
                if (data.status == 'success') {
                    // alert("moc");
                    toastr.success(data.msg);
                    $('#item-count').text(data.count);
                    $('#total_mes').text(data.total);
                    for (var k in data.cart) {
                        html += '<div class="sin-itme clearfix">';
                        // html += '<a onclick="return confirm(' + ques + ')" class="remoteitem" data-href="http://localhost:8000/client/remove-item" data-id="' + k + '"><i class="mdi mdi-close" ></i></a>';
                        html += '<a class="cart-img" href="cart.html"><img src="' + data.cart[k]['pro_image'] + '" alt="" /></a>';
                        html += '<div class="menu-cart-text">';
                        html += '<a href="#"><h5>' + data.cart[k]['product_name'] + '</h5></a>';
                        html += '<span> Số lượng :  ' + data.cart[k]['qty_order'] + '</span>';
                        html += '<strong> ' + data.cart[k]['price'].toLocaleString() + ' <strong>';
                        html += '</div>';
                        html += '</div>';
                    }
                    html += '<br><div class="total"><span>Tổng tiền <strong>= ' + data.total.toLocaleString() + ' </strong></span></div>';
                    html += '<a class="goto" href="cart">Tới giỏ hàng</a><a class="out-menu" href="/checkout">Thanh Toán</a>';
                    $('#cartmini').html(html);
                    $('#total').text(data.total.toLocaleString());
                    $('#vat').text(0.1 * data.total.toLocaleString());
                    $('#order_total').text(data.order_total.toLocaleString());

                } else
                    toastr.error(data.msg);
            })

    })


    $(document).on("click", ".remoteitem", function () {
        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(id);
        var html = "";
        var ques = "'Do you want to delete it?'";
        var html2="";
        $.post(url, { id: id })
            .done(function (data) {
                if (data.status == 'success') {
                    toastr.success(data.msg);
                    var tong=0;
                    var vat=0;
                    var thanhtien=0;
                    var tong_1_item=0;
                        for (var k in data.cart) {
                        tong += (data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        vat=tong*0.1;
                        thanhtien   =tong+vat
                        tong_1_item=(data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        html += '<tr> ';
                        html += '<td class="td-img text-left">';
                        html += '<a href="#"><img src="' + data.cart[k]['pro_image'] + '" alt="Add Product" /></a>';
                        html += '<div class="items-dsc"> <h5><a href="#">' + data.cart[k]['product_name'] + '</a></h5>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td>' + data.cart[k]['price'].toLocaleString() + '</td>';
                        html += '<td>-' + data.cart[k]['discount'].toLocaleString() + '</td>';
                        html += '<td>';
                        html += '<div class="plus-minus">';
                        html += '<a class="down_item"  data-href="http://localhost:8000/client/update_cart_ajax_down"  data-id="' + k + '">-</a>';
                        html += '<input type="text" value="' + data.cart[k]['qty_order'] + '" name="qtybutton" class="plus-minus-box">';
                        html += '<a class="up_item"  data-href="http://localhost:8000/client/update_cart_ajax_up"  data-id="' + k + '">+</a>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td> <strong>' + tong_1_item.toLocaleString() + '</strong></td>';
                        html += '<td><a onclick="return confirm(' + ques + ')" class="remoteitem" data-href="http://localhost:8000/client/remove-item" data-id="' + k + '"><i class="mdi mdi-close" class="action"><i></i></a></td> </tr>';
                        tong_1_item=0;
                    }

                    html2+='<table> <tbody>';
                        html2+='<tr> <th>Tổng tiền<nav></nav> </th> <td id="total"> '+tong.toLocaleString()+'</td> </tr>';
                        html2+=' <tr> <th>Phí vận chuyển</th> <td>0</td> </tr>';
                        // html2+=' <tr> <th>Tổng tiền được giảm </th> <td>'+tong_discount.toLocaleString()+'</td> </tr>';

                        html2+='<tr> <th>Vat</th> <td id="vat">'+ vat.toLocaleString()+'</td> </tr>  </tbody>';
                        html2+='<tfoot> <tr> <th class="tfoot-padd">Thành tiền</th> <td class="tfoot-padd" id="order_total"> '+thanhtien.toLocaleString()+'</td> </tr>';
                        html2+='<tr> <th class="tfoot-padd"></th> <td class="tfoot-padd"><a href="http://localhost:8000/client/checkout">Thanh Toán</a> </td> </tfoot>';
                        html2+='</tr> </table>';
                    $('#cart_detail').html(html);
                    $('#checkout_detail').html(html2);
                } else {
                    toastr.error(d.msg);
                }
            })

    })

    $(document).on("click", ".up_item", function () {
        // alert("giảm");
        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(id);
        var qty_order = _that.data('val');
        //  alert(qty_order);
        var html = "";
        var html2 = "";
        var ques = "'Do you want to delete it?'";
        $.post(url, { id: id, qty_order: qty_order })
            .done(function (data) {
                if (data.status == 'success') {
                    toastr.success(data.msg);
                    var tong=0;
                    var vat=0;
                    var thanhtien=0;
                    var tong_1_item=0;
                        for (var k in data.cart) {
                        tong += (data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        vat=tong*0.1;
                        thanhtien   =tong+vat
                        tong_1_item=(data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        html += '<tr> ';
                        html += '<td class="td-img text-left">';
                        html += '<a href="#"><img src="' + data.cart[k]['pro_image'] + '" alt="Add Product" /></a>';
                        html += '<div class="items-dsc"> <h5><a href="#">' + data.cart[k]['product_name'] + '</a></h5>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td>' + data.cart[k]['price'].toLocaleString() + '</td>';
                        html += '<td>-' + data.cart[k]['discount'].toLocaleString() + '</td>';
                        html += '<td>';
                        html += '<div class="plus-minus">';
                        html += '<a class="down_item"  data-href="http://localhost:8000/client/update_cart_ajax_down"  data-id="' + k + '">-</a>';
                        html += '<input type="text" value="' + data.cart[k]['qty_order'] + '" name="qtybutton" class="plus-minus-box">';
                        html += '<a class="up_item"  data-href="http://localhost:8000/client/update_cart_ajax_up"  data-id="' + k + '">+</a>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td> <strong>' + tong_1_item.toLocaleString() + '</strong></td>';
                        html += '<td><a onclick="return confirm(' + ques + ')" class="remoteitem" data-href="http://localhost:8000/client/remove-item" data-id="' + k + '"><i class="mdi mdi-close" class="action"><i></i></a></td> </tr>';
                        tong_1_item=0;
                    }

                    html2+='<table> <tbody>';
                        html2+='<tr> <th>Tổng tiền<nav></nav> </th> <td id="total"> '+tong.toLocaleString()+'</td> </tr>';
                        html2+=' <tr> <th>Phí vận chuyển</th> <td>0</td> </tr>';
                        // html2+=' <tr> <th>Tổng tiền được giảm </th> <td>'+tong_discount.toLocaleString()+'</td> </tr>';

                        html2+='<tr> <th>Vat</th> <td id="vat">'+ vat.toLocaleString()+'</td> </tr>  </tbody>';
                        html2+='<tfoot> <tr> <th class="tfoot-padd">Thành tiền</th> <td class="tfoot-padd" id="order_total"> '+thanhtien.toLocaleString()+'</td> </tr>';
                        html2+='<tr> <th class="tfoot-padd"></th> <td class="tfoot-padd"><a href="http://localhost:8000/client/checkout">Thanh Toán</a> </td> </tfoot>';
                        html2+='</tr> </table>';
                    $('#cart_detail').html(html);
                    $('#checkout_detail').html(html2);
                } else {
                    toastr.error(d.msg);
                }
            })

    })
    $(document).on("click", ".down_item", function () {
        // alert("giảm");
        var _that = $(this);
        var url = _that.data('href');
        var id = _that.data('id');
        // alert(id);
        var qty_order = _that.data('val');
        //  alert(qty_order);
        var html = "";
        var html2 = "";
        var ques = "'Do you want to delete it?'";
        $.post(url, { id: id, qty_order: qty_order })
            .done(function (data) {
                if (data.status == 'success') {
                    toastr.success(data.msg);
                    var tong=0;
                    var vat=0;
                    var thanhtien=0;
                    var tong_1_item=0;
                        for (var k in data.cart) {
                        tong += (data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        vat=tong*0.1;
                        thanhtien   =tong+vat
                        tong_1_item=(data.cart[k]['price']-data.cart[k]['discount'])*data.cart[k]['qty_order'];
                        html += '<tr> ';
                        html += '<td class="td-img text-left">';
                        html += '<a href="#"><img src="' + data.cart[k]['pro_image'] + '" alt="Add Product" /></a>';
                        html += '<div class="items-dsc"> <h5><a href="#">' + data.cart[k]['product_name'] + '</a></h5>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td>' + data.cart[k]['price'].toLocaleString() + '</td>';
                        html += '<td>-' + data.cart[k]['discount'].toLocaleString() + '</td>';
                        html += '<td>';
                        html += '<div class="plus-minus">';
                        html += '<a class="down_item"  data-href="http://localhost:8000/client/update_cart_ajax_down"  data-id="' + k + '">-</a>';
                        html += '<input type="text" value="' + data.cart[k]['qty_order'] + '" name="qtybutton" class="plus-minus-box">';
                        html += '<a class="up_item"  data-href="http://localhost:8000/client/update_cart_ajax_up"  data-id="' + k + '">+</a>';
                        html += '</div>';
                        html += '</td>';
                        html += '<td> <strong>' + tong_1_item.toLocaleString() + '</strong></td>';
                        html += '<td><a onclick="return confirm(' + ques + ')" class="remoteitem" data-href="http://localhost:8000/client/remove-item" data-id="' + k + '"><i class="mdi mdi-close" class="action"><i></i></a></td> </tr>';
                        tong_1_item=0;
                    }

                    html2+='<table> <tbody>';
                        html2+='<tr> <th>Tổng tiền<nav></nav> </th> <td id="total"> '+tong.toLocaleString()+'</td> </tr>';
                        html2+=' <tr> <th>Phí vận chuyển</th> <td>0</td> </tr>';
                        // html2+=' <tr> <th>Tổng tiền được giảm </th> <td>'+tong_discount.toLocaleString()+'</td> </tr>';

                        html2+='<tr> <th>Vat</th> <td id="vat">'+ vat.toLocaleString()+'</td> </tr>  </tbody>';
                        html2+='<tfoot> <tr> <th class="tfoot-padd">Thành tiền</th> <td class="tfoot-padd" id="order_total"> '+thanhtien.toLocaleString()+'</td> </tr>';
                        html2+='<tr> <th class="tfoot-padd"></th> <td class="tfoot-padd"><a href="http://localhost:8000/client/checkout">Thanh Toán</a> </td> </tfoot>';
                        html2+='</tr> </table>';
                    $('#cart_detail').html(html);
                    $('#checkout_detail').html(html2);
                } else {
                    toastr.error(d.msg);
                }
            })

    })


})

