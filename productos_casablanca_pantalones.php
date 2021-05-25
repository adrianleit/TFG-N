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
    <link href="./css/plugins.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Topbar y Header -->
        <?php include("header.html") ?>
        <!-- Fin Header -->
        <!-- Shop products -->
        <section>
            <div class="container">
                <div class="row m-b-20">
                    <div class="col-lg-6 p-t-10 m-b-20">
                        <h2 class="m-b-20">Sudaderas Casablanca</h2>
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
                        $marca = "casablanca";
                        $parte = "pantalones";
                        if ($conexion = mysqli_connect('localhost', 'root', '', 's05bd7e4_streetwear')) {
                            mysqli_set_charset($conexion, 'utf8');
                            $consulta = "SELECT  * FROM productos WHERE marca='$marca' AND parte='$parte';";
                            mysqli_query($conexion, $consulta);
                            if ($resultado = mysqli_query($conexion, $consulta)) {
                                /* 
                                [0] => Marca
                                [1] => Nombre
                                [2] => Precio
                                [3] => Id
                                [4] => Parte
                                [5] => Comentario
                                [6] => Sexo
                                */

                                while ($fila = mysqli_fetch_row($resultado)) {
                                    echo ("<div class='grid-item'>");
                                    echo ("<div class='product'>");
                                    echo ("<div class='product-image'>");
                                    for ($i = 1; $i < 3; $i++) {
                                        echo ("<a href='shop-single-product.php?id=$fila[3]'><img alt='Shop product image!' src='./images/productos/" . $fila[3] . "_{$i}'>");
                                        echo ("</a>");
                                    }
                                    echo ("<span class='product-wishlist'>");
                                    echo ("<a href='#'><i class='fa fa-heart'></i></a>");
                                    echo ("</span>");
                                    echo ("<div class='product-overlay'>");
                                    echo ("<a href='shop-single-product.php?id=$fila[3]' id='vista_rapida'>Ir al producto</a>");
                                    echo ("</div>");
                                    echo ("</div>");
                                    echo ("<div class='product-description'>");
                                    echo ("<div class='product-category'>$fila[6]</div>");
                                    echo ("<div class='product-title'>");
                                    echo ("<h3><a href='shop-single-product.php?id=$fila[3]' id='vista_rapida'>$fila[1]</a></h3>");
                                    echo ("</div>");
                                    echo ("<div class='product-price'><ins>$fila[2]&euro;</ins>");
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
                </div>
            </div>
        </section>
        <p id="respuesta"></p>
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
                            <h3>Envios gratis a partir de envios 60€</h3>
                            <p>Haz envios con un importe superior a 60€</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-plane"></i></a>
                            </div>
                            <h3>Envios a todo el mundo</h3>
                            <p>Nuestros envios se encuentran disponibles a los siguientes paises: EEUU, Canada, Europa, Australia</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="icon-box effect small clean">
                            <div class="icon">
                                <a href="#"><i class="fa fa-history"></i></a>
                            </div>
                            <h3>¡60 dias de garantia!</h3>
                            <p>No estas contento con tu producto, devuelvenoslo gratis y te reembolsaremos el 100% de tu dinero!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end: DELIVERY INFO -->
        <!-- Footer -->
        <footer id="footer">
            <div class="copyright-content">
                <div class="container">
                    <div class="copyright-text text-center">&copy; 2021 MDLR - Hecho con amor y cariño en Madrid.</div>
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