<!DOCTYPE html>
<html lang="es">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo, html template">
    <link rel="icon" type="image/png" href="images/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Document title -->
    <title>MDLR | Productos</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Topbar y Header -->
        <?php include("./header.html") ?>
        <!-- Fin Header -->
        <!-- Shop products -->
        <section>
            <div class="container">
                <div class="row m-b-20">
                    <div class="col-lg-6 p-t-10 m-b-20">
                        <h3 class="m-b-20">A Monochromatic Spring ’15</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, sit, exercitationem, consequuntur, assumenda iusto eos commodi alias.</p>
                    </div>
                    <div class="col-lg-3">
                        <div class="order-select">
                            <h6>Sort by</h6>
                            <p>Showing 1&ndash;12 of 25 results</p>
                            <form method="get">
                                <select class="form-control">
                                    <option value="order" selected="selected">Default sorting</option>
                                    <option value="popularity">Sort by popularity</option>
                                    <option value="rating">Sort by average rating</option>
                                    <option value="date">Sort by newness</option>
                                    <option value="price">Sort by price: low to high</option>
                                    <option value="price-desc">Sort by price: high to low</option>
                                </select>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="order-select">
                            <h6>Sort by Price</h6>
                            <p>From 0 - 190$</p>
                            <form method="get">
                                <select class="form-control">
                                    <option value="" selected="selected">0$ - 50$</option>
                                    <option value="">51$ - 90$</option>
                                    <option value="">91$ - 120$</option>
                                    <option value="">121$ - 200$</option>
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
                <!--Product list-->
                <div class="shop">
                    <div class="grid-layout grid-4-columns" data-item="grid-item">
                        <!-- Solo un elemento -->
                        <?php
                        if ($conexion = mysqli_connect('localhost', 'root', '', 's05bd7e4_streetwear')) {
                            mysqli_set_charset($conexion, 'utf8');
                            $consulta = "SELECT  * FROM productos;";
                            mysqli_query($conexion, $consulta);
                            if ($resultado = mysqli_query($conexion, $consulta)) {
                                /* 
                                [0] => Nombre
                                [1] => Precio
                                [2] => Id
                                [3] => Parte
                                [4] => Cantidad
                                [5] => Marca
                                [6] => Comentario
                                [7] => Sexo
                            */

                                while ($fila = mysqli_fetch_row($resultado)) {
                                    echo ("<div class='grid-item'>");
                                    echo ("<div class='product'>");
                                    echo ("<div class='product-image'>");
                                    echo ("<a href='#'><img alt='Shop product image!' src='images/shop/products/1.jpg'>");
                                    echo ("</a>");
                                    echo ("<a href='#'><img alt='Shop product image!' src='images/shop/products/10.jpg'>");
                                    echo ("</a>");
                                    echo ("<span class='product-wishlist'>");
                                    echo ("<a href='#'><i class='fa fa-heart'></i></a>");
                                    echo ("</span>");
                                    echo ("<div class='product-overlay'>");
                                    echo ("<a href='shop-product-ajax-page.html' data-lightbox='ajax'>Quick View</a>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("<div class='product-description'>");
                                    echo ("<div class='product-category'>Women</div>");
                                    echo ("<div class='product-title'>");
                                    echo ("<h3><a href='#'>$fila[0]</a></h3>");
                                    echo ("</div>");
                                    echo ("<div class='product-price'><ins>$fila[1]&euro;</ins>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("</div>");
                                }
                                mysqli_close($conexion);
                            }
                        }
                        ?>
                        <!-- fin Solo un elemento -->
                    </div>
                    <hr>
                    <!-- Pagination -->
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item active"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- end: Pagination -->
                </div>
            </div>
        </section>
        <!-- end: Shop products -->
        <!-- DELIVERY INFO -->
        <section class="background-grey p-t-40 p-b-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-gift"></i></a>
                            </div>
                            <h3>Free shipping on orders $60+</h3>
                            <p>Order more than 60$ and you will get free shippining Worldwide. More info.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-plane"></i></a>
                            </div>
                            <h3>Worldwide delivery</h3>
                            <p>We deliver to the following countries: USA, Canada, Europe, Australia</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-history"></i></a>
                            </div>
                            <h3>60 days money back guranty!</h3>
                            <p>Not happy with our product, feel free to return it, we will refund 100% your money!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: DELIVERY INFO -->
        <!-- Footer -->
        <footer id="footer">
            <div class="footer-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="widget">
                                <div class="widget-title">Polo HTML5 Template</div>
                                <p class="mb-5">Built with love in Fort Worth, Texas, USA<br>
                                    All rights reserved. Copyright © 2019. INSPIRO.</p>
                                <a href="https://themeforest.net/item/polo-responsive-multipurpose-html5-template/13708923" class="btn btn-inverted" target="_blank">Purchase Now</a>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Discover</div>
                                        <ul class="list">
                                            <li><a href="#">Features</a></li>
                                            <li><a href="#">Layouts</a></li>
                                            <li><a href="#">Corporate</a></li>
                                            <li><a href="#">Updates</a></li>
                                            <li><a href="#">Pricing</a></li>
                                            <li><a href="#">Customers</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Features</div>
                                        <ul class="list">
                                            <li><a href="#">Layouts</a></li>
                                            <li><a href="#">Headers</a></li>
                                            <li><a href="#">Widgets</a></li>
                                            <li><a href="#">Footers</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Pages</div>
                                        <ul class="list">
                                            <li><a href="#">Portfolio</a></li>
                                            <li><a href="#">Blog</a></li>
                                            <li><a href="#">Shop</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Support</div>
                                        <ul class="list">
                                            <li><a href="#">Help Desk</a></li>
                                            <li><a href="#">Documentation</a></li>
                                            <li><a href="#">Contact Us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-content">
                <div class="container">
                    <div class="copyright-text text-center">&copy; 2019 POLO - Responsive Multi-Purpose HTML5 Template. All Rights Reserved.<a href="//www.inspiro-media.com" target="_blank" rel="noopener"> INSPIRO</a> </div>
                </div>
            </div>
        </footer>
        <!-- end: Footer -->
    </div> <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
</body>

</html>