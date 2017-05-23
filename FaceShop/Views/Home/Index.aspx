<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/FontEnd.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Import Namespace="FaceShop.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphMainContent" runat="server">

    <section class="featured">
        <!-- lay slide -->
        <script src="../../Public/site/royalslider/jquery.royalslider.min.js"></script>
        <link type="text/css" href="../../Public/site/royalslider/royalslider.css" rel="stylesheet">
        <link type="text/css" href="../../Public/site/royalslider/skins/minimal-white/rs-minimal-white.css" rel="stylesheet">
        <script type="text/javascript">
            (function ($) {
                $(document).ready(function () {
                    $("#HomeSlide").royalSlider({
                        arrowsNav: true,
                        loop: false,
                        keyboardNavEnabled: true,
                        controlsInside: false,
                        imageScaleMode: "fill",
                        arrowsNavAutoHide: false,
                        autoScaleSlider: true,
                        autoScaleSliderWidth: 580,//chiều rộng slide
                        autoScaleSliderHeight: 205,//chiều cao slide
                        controlNavigation: "bullets",
                        thumbsFitInViewport: false,
                        navigateByClick: true,
                        startSlideId: 0,
                        autoPlay: { enabled: true, stopAtAction: false, pauseOnHover: true, delay: 5000 },
                        transitionType: "move",
                        slideshowEnabled: true,
                        slideshowDelay: 5000,
                        slideshowPauseOnHover: true,
                        slideshowAutoStart: true,
                        globalCaption: false
                    });
                });
            })(jQuery);
        </script>

        <style>
            #HomeSlide.royalSlider {
                width: 100%;
                height: 205px;
                overflow: hidden;
            }
        </style>

        <div id='slide'>
            <div id="img-slide" class="sliderContainer" style='width: 100%'>
                <div id="HomeSlide" class="royalSlider rsMinW">
                    <a href="http://dantri.com.vn/" target='_blank'>
                        <img src="../../Public/upload/slide/31.jpg" style="width: 100%;" />
                    </a>
                    <a href="http://dantri.com.vn/" target='_blank'>
                        <img src="../../Public/upload/slide/21.jpg" style="width: 100%;" />
                    </a>
                    <a href="http://dantri.com.vn/" target='_blank'>
                        <img src="../../Public/upload/slide/11.jpg" style="width: 100%;" />
                    </a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear pb20"></div>
    </section>

    <!-- lay san pham moi nhat -->
    <div class="box-center">
        <!-- The box-center product-->
        <div class="tittle-box-center">
            <h2>Sản phẩm mới</h2>
        </div>
        <div class="box-content-center product">
            <!-- The box-content-center -->
            <% foreach (Product p in ViewBag.lstProduct)
               { %>
            <div class='product_item'>
                <h3>
                    <a href="" title="Sản phẩm">
                        <%= p.Name %>
                    </a>
                </h3>
                <div class='product_img'>
                    <a href="san-pham-Tivi-LG-520/9.html" title="Sản phẩm">
                        <img src="../../Public/upload/product/<%= p.Image %>" alt='' />
                    </a>
                </div>
                <p class='price'>
                    <%= p.Price %> đ
                </p>
                <center>
                <div class='raty' style='margin:10px 0px' id='9' data-score='4'></div>
            </center>
                <div class='action'>
                    <p style='float: left; margin-left: 10px'>Lượt xem: <b><%= p.View %></b></p>
                    <a class='button' href="them-vao-gio-9.html" title='Mua ngay'>Mua ngay</a>
                    <div class='clear'></div>
                </div>
            </div>
            <% } %>
            <div class='clear'></div>
        </div>
        <!-- End box-content-center -->
    </div>
    <!-- End box-center product-->
    <!-- lay san pham dang giam gia -->
    <div class="box-center">
        <!-- The box-center product-->
        <div class="tittle-box-center">
            <h2>Sản phẩm giảm giá</h2>
        </div>
        <div class="box-content-center product">
            <!-- The box-content-center -->
            <% foreach (Product p in ViewBag.lstProduct)
               { %>
            <div class='product_item'>
                <h3>
                    <a href="" title="Sản phẩm">
                        <%= p.Name %>
                    </a>
                </h3>
                <div class='product_img'>
                    <a href="san-pham-Tivi-LG-520/9.html" title="Sản phẩm">
                        <img src="../../Public/upload/product/<%= p.Image %>" alt='' />
                    </a>
                </div>
                <p class='price'>
                    <%= p.Price %> đ
                </p>
                <center>
                <div class='raty' style='margin:10px 0px' id='9' data-score='4'></div>
            </center>
                <div class='action'>
                    <p style='float: left; margin-left: 10px'>Lượt xem: <b><%= p.View %></b></p>
                    <a class='button' href="them-vao-gio-9.html" title='Mua ngay'>Mua ngay</a>
                    <div class='clear'></div>
                </div>
            </div>
            <% } %>
            <div class='clear'></div>
        </div>
        <!-- End box-content-center -->
    </div>
    <!-- End box-center product-->
    <!-- lay san pham xem nhieu -->
    <div class="box-center">
        <!-- The box-center product-->
        <div class="tittle-box-center">
            <h2>Sản phẩm xem nhiều</h2>
        </div>
        <div class="box-content-center product">
            <!-- The box-content-center -->
            <% foreach (Product p in ViewBag.lstProduct)
               { %>
            <div class='product_item'>
                <h3>
                    <a href="" title="Sản phẩm">
                        <%= p.Name %>
                    </a>
                </h3>
                <div class='product_img'>
                    <a href="san-pham-Tivi-LG-520/9.html" title="Sản phẩm">
                        <img src="../../Public/upload/product/<%= p.Image %>" alt='' />
                    </a>
                </div>
                <p class='price'>
                    <%= p.Price %> đ
                </p>
                <center>
                <div class='raty' style='margin:10px 0px' id='9' data-score='4'></div>
            </center>
                <div class='action'>
                    <p style='float: left; margin-left: 10px'>Lượt xem: <b><%= p.View %></b></p>
                    <a class='button' href="them-vao-gio-9.html" title='Mua ngay'>Mua ngay</a>
                    <div class='clear'></div>
                </div>
            </div>
            <% } %>
            <div class='clear'></div>
        </div>
        <!-- End box-content-center -->
    </div>
    <!-- End box-center product-->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cphMainLeft" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="cphMainRight" runat="server">
</asp:Content>
