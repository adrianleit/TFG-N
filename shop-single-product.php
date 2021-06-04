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
    <link href="./css/custom.css" rel="stylesheet">
</head>

<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <?php
        include("./header.html");
        $id_producto = $_GET['id'];
        if ($conexion = mysqli_connect('localhost', 'root', '', 's05bd7e4_streetwear')) {
            mysqli_set_charset($conexion, 'utf8');
            $consulta = "SELECT  * FROM productos WHERE id='$id_producto';";
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
                                [7] => Descripcion
                                */
                while ($fila = mysqli_fetch_row($resultado)) {
                    $marca = $fila[0];
                    $nombre = $fila[1];
                    $precio = $fila[2];
                    $id = $fila[3];
                    $parte = $fila[4];
                    $comentario = $fila[5];
                    $sexo = $fila[6];
                    $descripcion = $fila[7];
        ?>
                    <section id="product-page" class="product-page p-b-0">
                        <div class="container">
                            <div class="product">
                                <div class="row m-b-40">
                                    <div class="col-lg-5">
                                        <div class="product-image">
                                            <!-- Carousel slider -->
                                            <div class="carousel dots-inside dots-dark arrows-visible" data-items="1" data-loop="true" data-autoplay="true" data-animate-in="fadeIn" data-animate-out="fadeOut" data-autoplay="2500" data-lightbox="gallery">
                                                <?php
                                                for ($i = 1; $i < 3; $i++) {
                                                    echo ("<a href='./images/productos/" . $fila[3] . "_{$i}'><img alt='Shop product image!' src='./images/productos/" . $fila[3] . "_{$i}'>");
                                                    echo ("</a>");
                                                }
                                                ?>
                                            </div>
                                            <!-- Carousel slider -->
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="product-description">
                                            <div class="product-category">
                                                <?php
                                                $mayus = strtoupper($fila[6]);
                                                echo ($mayus);
                                                ?>
                                            </div>
                                            <div class="product-title">
                                                <h3><a href="#"><?php echo ($fila[1]) ?></a></h3>
                                            </div>
                                            <div class="product-price"><ins><?php echo ($fila[2]) ?>&euro;</ins>
                                            </div>
                                            <div class="product-reviews"><a href="#">3 customer reviews</a>
                                            </div>
                                            <div class="seperator m-b-10"></div>
                                            <?php echo("<p>$fila[7]</p>") ?>
                                            <div class="seperator m-t-20 m-b-10"></div>
                                        </div>
                                        <form action="controlador_carrito.php" method="POST">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <h6>Selecciona la talla</h6>
                                                    <ul class="product-size">
                                                        <li>
                                                            <label>
                                                                <input type="radio" value="XS" name="size"><span>XS</span>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="radio" value="S" name="size"><span>S</span>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="radio" value="M" name="size"><span>M</span>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="radio" value="L" name="size"><span>L</span>
                                                            </label>
                                                        </li>
                                                        <li>
                                                            <label>
                                                                <input type="radio" value="XL" name="size"><span>XL</span>
                                                            </label>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-lg-6">
                                                    <h6>Selecciona la cantidad</h6>
                                                    <div class="cart-product-quantity">
                                                        <div class="quantity m-l-5">
                                                            <input type="button" class="minus" onclick="menos();" value="-">
                                                            <input type="text" class="qty" name="cantidad" id="cantidad" value="1">
                                                            <input type="button" class="plus" onclick="sumar();" value="+">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <h6>Añadir al carrito</h6>
                                                    <input type="hidden" id="marca" name="marca" value="<?php echo ($marca); ?>">
                                                    <input type="hidden" id="precio" name="precio" value="<?php echo ($precio); ?>">
                                                    <input type="hidden" id="id" name="id" value="<?php echo ($id); ?>">
                                                    <input type="hidden" id="parte" name="parte" value="<?php echo ($parte); ?>">
                                                    <input type="hidden" id="comentario" name="comentario" value="<?php echo ($comentario); ?>">
                                                    <input type="hidden" id="sexo" name="sexo" value="<?php echo ($sexo); ?>">
                                                    <input type="hidden" id="nombre" name="nombre" value="<?php echo ($nombre); ?>">
                                                    <button type="submit" class="btn" id="añadir"><i class="icon-shopping-cart"></i>&nbsp;Añadir al carrito</button>

                                                    <!-- Mirar como meter las tallas -->
                                                    <!-- <a class="btn" href="#"><i class="icon-shopping-cart"></i>&nbsp;Añadir al carrito</a> -->
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- Product additional tabs -->
                                <div class="tabs tabs-folder">
                                    <ul class="nav nav-tabs" id="myTab3" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active show" id="home-tab" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="false"><i class="fa fa-align-justify"></i>Descripcion</a></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="true"><i class="fa fa-info"></i>Informacion Adicional</a></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact3" role="tab" aria-controls="contact" aria-selected="false"><i class="fa fa-star"></i>Reseñas</a></a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent3">
                                        <div class="tab-pane fade active show" id="home3" role="tabpanel" aria-labelledby="home-tab">
                                            <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo
                                                minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis
                                                dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
                                                necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non
                                                recusandae. </p>
                                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
                                                voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                                                occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt
                                                mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et
                                                expedita distinctio.</p>
                                        </div>
                                        <div class="tab-pane fade " id="profile3" role="tabpanel" aria-labelledby="profile-tab">
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <td>Size</td>
                                                        <td>Small, Medium &amp; Large</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Color</td>
                                                        <td>Pink &amp; White</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Waist</td>
                                                        <td>26 cm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Length</td>
                                                        <td>40 cm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Chest</td>
                                                        <td>33 inches</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Fabric</td>
                                                        <td>Cotton, Silk &amp; Synthetic</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Warranty</td>
                                                        <td>3 Months</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab">
                                            <div class="comments" id="comments">
                                                <div class="comment_number">
                                                    Reviews <span>(3)</span>
                                                </div>
                                                <div class="comment-list">
                                                    <!-- Comment -->
                                                    <div class="comment" id="comment-1">
                                                        <div class="image"><img alt="" src="images/blog/author.jpg" class="avatar">
                                                        </div>
                                                        <div class="text">
                                                            <div class="product-rate">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-half-o"></i>
                                                            </div>
                                                            <h5 class="name">John Doe</h5>
                                                            <span class="comment_date">Posted at 15:32h, 06 December</span>
                                                            <a class="comment-reply-link" href="#">Reply</a>
                                                            <div class="text_holder">
                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                                                    industry. Lorem Ipsum has been the industry's standard dummy
                                                                    text ever since the 1500s.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end: Comment -->
                                                    <!-- Comment -->
                                                    <div class="comment" id="comment-1-1">
                                                        <div class="image"><img alt="" src="images/blog/author2.jpg" class="avatar">
                                                        </div>
                                                        <div class="text">
                                                            <div class="product-rate">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-half-o"></i>
                                                            </div>
                                                            <h5 class="name">John Doe</h5>
                                                            <span class="comment_date">Posted at 15:32h, 06 December</span>
                                                            <a class="comment-reply-link" href="#">Reply</a>
                                                            <div class="text_holder">
                                                                <p>It is a long established fact that a reader will be distracted by
                                                                    the readable content.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end: Comment -->
                                                    <!-- Comment -->
                                                    <div class="comment" id="comment-1-2">
                                                        <div class="image"><img alt="" src="images/blog/author3.jpg" class="avatar">
                                                        </div>
                                                        <div class="text">
                                                            <div class="product-rate">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-half-o"></i>
                                                            </div>
                                                            <h5 class="name">John Doe</h5>
                                                            <span class="comment_date">Posted at 15:32h, 06 December</span>
                                                            <a class="comment-reply-link" href="#">Reply</a>
                                                            <div class="text_holder">
                                                                <p>There are many variations of passages of Lorem Ipsum available,
                                                                    but the majority have suffered alteration in some form, by
                                                                    injected humour.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end: Comment -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end: Product additional tabs -->
                            </div>
                        </div>
                    </section>
        <?php
                }
                mysqli_close($conexion);
            }
        }
        ?>
        <!-- SHOP PRODUCT PAGE -->

        <!-- end: SHOP PRODUCT PAGE -->
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
    <script>
        function sumar() {
            $('#cantidad').val(Number($('#cantidad').val()) + 1).change();
        }

        function menos() {
            if (document.getElementById('cantidad').value > 0) {
                $('#cantidad').val(Number($('#cantidad').val()) - 1).change();
            }
        }
    </script>
</body>

</html>