<?php
session_start();
?>

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
    <title>MDLR | Carrito</title>
    <!-- Stylesheets & Fonts -->
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <?php include("./header.html") ?>
        <!-- end: Header -->
        <!-- SHOP CART -->
        <section id="shop-cart">
            <div class="container">
                <div class="shop-cart">
                    <div class="table table-sm table-striped table-responsive">
                        <?php
                        if (isset($_SESSION['carrito'])) {
                        ?>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="cart-product-remove"></th>
                                        <th class="cart-product-thumbnail">Product</th>
                                        <th class="cart-product-name">Description</th>
                                        <th class="cart-product-price">Unit Price</th>
                                        <th class="cart-product-quantity">Quantity</th>
                                        <th class="cart-product-subtotal">Total</th>
                                    </tr>
                                </thead>
                                <!-- EACH PRODUCT -->
                                <tbody>
                                    <?php
                                    // $_SESSION['carrito'][][0] => Id
                                    // $_SESSION['carrito'][][1] => Talla
                                    // $_SESSION['carrito'][][2] => Cantidad
                                    // $_SESSION['carrito'][][3] => Precio (solo una unidad)
                                    // $_SESSION['carrito'][][4] => Marca
                                    // $_SESSION['carrito'][][5] => Parte de Ropa
                                    // $_SESSION['carrito'][][6] => Sexo
                                    // $_SESSION['carrito'][][7] => Nombre

                                    for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
                                        // $producto=explode(",",$_SESSION['carrito']);
                                    ?>
                                        <tr>
                                            <td class="cart-product-remove">
                                                <a href="#"><i class="fa fa-times"></i></a>
                                            </td>
                                            <td class="cart-product-thumbnail">
                                                <?php echo ("<a href='shop-single-product.php?id=" . $_SESSION['carrito'][$i][0] . "'>");
                                                echo ("<img src='./images/productos/" . $_SESSION['carrito'][$i][0] . "_1'.jpg' alt='FOTO'"); ?>
                                                </a>
                                                <div class="cart-product-thumbnail-name"><?php echo ($_SESSION['carrito'][$i][7]) ?></div>
                                            </td>
                                            <td class="cart-product-description">
                                                <p><span>Bolt Sweatshirt</span>
                                                    <span>Talla: <?php echo ($_SESSION['carrito'][$i][1]) ?></span>
                                                    <span>Sexo: <?php echo ($_SESSION['carrito'][$i][6]) ?></span>
                                                </p>
                                            </td>
                                            <td class="cart-product-price">
                                                <span class="amount"><?php echo ($_SESSION['carrito'][$i][3]) ?></span>
                                            </td>
                                            <td class="cart-product-quantity">
                                                <div class="quantity">
                                                    <input type="text" class="qty" value="<?php echo ($_SESSION['carrito'][$i][2]) ?>" name="quantity">
                                                    <input type="button" class="minus" onclick="menos();" value="-">
                                                    <input type="button" class="plus" onclick="sumar();" value="+">
                                                </div>
                                            </td>
                                            <td class="cart-product-subtotal">
                                                <span class="amount">$20.00</span>
                                            </td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <!-- Tiene un evento en cantidad.js -->
                            <button type="button" class="btn" id="update_cart">Update Card</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 p-r-10 ">
                            <div class="table-responsive">
                                <h4>Cart Subtotal</h4>
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td class="cart-product-name">
                                                <strong>Cart Subtotal</strong>
                                            </td>
                                            <td class="cart-product-name text-right">
                                                <span class="amount">$125.96</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-name">
                                                <strong>Shipping</strong>
                                            </td>
                                            <td class="cart-product-name  text-right">
                                                <span class="amount">Free Shipping</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-name">
                                                <strong>Coupon</strong>
                                            </td>
                                            <td class="cart-product-name  text-right">
                                                <span class="amount">-20%</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="cart-product-name">
                                                <strong>Total</strong>
                                            </td>
                                            <td class="cart-product-name text-right">
                                                <span class="amount color lead"><strong>$100.76</strong></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <a href="#" class="btn icon-left float-right"><span>Proceed to Checkout</span></a>
                        </div>
                    </div>
                <?php
                        } else {
                ?>
                    <!-- SHOP CART EMPTY -->
                    <section id="shop-cart">
                        <div class="container">
                            <div class="p-t-10 m-b-20 text-center">
                                <div class="heading-text heading-line text-center">
                                    <h4>El carrito esta vacio</h4>
                                </div>
                                <a class="btn icon-left" href="index.php"><span>Volver a la tienda</span></a>
                            </div>
                        </div>
                    </section>
                    <!-- end: SHOP CART EMPTY -->
                <?php
                        }
                ?>
                </div>
            </div>
        </section>
        <!-- end: SHOP CART -->
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
    <script src="js/cantidad.js"></script>
</body>

</html>