<?php
session_start();
// $_SESSION['carrito'][0] => Id
// $_SESSION['carrito'][1] => Talla
// $_SESSION['carrito'][2] => Cantidad
// $_SESSION['carrito'][3] => Precio (solo una unidad)
// $_SESSION['carrito'][4] => Marca
// $_SESSION['carrito'][5] => Parte de Ropa
// $_SESSION['carrito'][6] => Sexo
// $_SESSION['carrito'][7] => Nombre
$operacion = $_POST['operacion'];

// Si la operacion es borrar o actualizar que me coga las demas variables sino no
if (($operacion == "actualizar") || ($operacion == "borrar")) {
    $id = $_POST['id'];
    $talla = $_POST['talla'];
    $cantidad = $_POST['cantidad'];

    if (isset($_POST['id']) && isset($_POST['talla']) && isset($_POST['cantidad']) && isset($_POST['operacion'])) {
        if ($operacion == "actualizar") {
            actualizar_cantidad($id, $talla, $cantidad);
            mostrar();
        }

        if ($operacion == "borrar") {
            borrar_producto($id, $talla);
            mostrar();
        }
    }
}
if (isset($_POST['operacion']) && $_POST['operacion'] == 'mostrar') {
    mostrar();
}

function actualizar_cantidad($id, $talla, $cantidad)
{
    // Comprueba si existe el carrito
    if (isset($_SESSION['carrito'])) {
        //Recorremos la variable de sesion
        /*Si la variable de sesion existe, se recorre con un bucle en busca de conincidencias con el id 
    del producto ($_SESSION['carrito'][0]) y la talla del producto($_SESSION['carrito'][1]) */
        for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
            if ($id == $_SESSION['carrito'][$i][0] && $talla == $_SESSION['carrito'][$i][1]) {
                $_SESSION['carrito'][$i][2] = $cantidad;
            }
        }
    }
}

function borrar_producto($id, $talla)
{
    // Comprueba si existe el carrito
    if (isset($_SESSION['carrito'])) {
        //Recorremos la variable de sesion
        /*Si la variable de sesion existe, se recorre con un bucle en busca de conincidencias con el id 
        del producto ($_SESSION['carrito'][0]) y la talla del producto($_SESSION['carrito'][1]) */
        for ($i = 0; $i < count($_SESSION['carrito']); $i++) {
            if ($id == $_SESSION['carrito'][$i][0] && $talla == $_SESSION['carrito'][$i][1]) {
                unset($_SESSION['carrito'][$i]);
                sort($_SESSION['carrito']);
            }
        }
    }
}

function mostrar()
{
?>
    <section id="shop-cart">
        <div class="container">
            <div class="shop-cart">
                <div class="table table-sm table-striped table-responsive">
                    <?php
                    if (isset($_SESSION['carrito']) && count($_SESSION['carrito']) > 0) {
                    ?>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="cart-product-remove"></th>
                                    <th class="cart-product-thumbnail">Producto</th>
                                    <th class="cart-product-name">Descripción</th>
                                    <th class="cart-product-price">Precio (por unidad)</th>
                                    <th class="cart-product-quantity">Cantidad</th>
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
                                            <a href="" onclick="borrar_producto('<?php echo ($_SESSION['carrito'][$i][0]) ?>', '<?php echo $_SESSION['carrito'][$i][1] ?>');"><i class="fa fa-times"></i></a>
                                        </td>
                                        <td class="cart-product-thumbnail">
                                            <?php echo ("<a href='shop-single-product.php?id=" . $_SESSION['carrito'][$i][0] . "'>");
                                            echo ("<img src='images/productos/" . $_SESSION['carrito'][$i][0] . "_1'.jpg' alt='FOTO'"); ?>
                                            </a>
                                            <div class="cart-product-thumbnail-name"><?php echo ($_SESSION['carrito'][$i][7]) ?></div>
                                        </td>
                                        <td class="cart-product-description">
                                            <p>
                                                <span>Talla: <?php echo ($_SESSION['carrito'][$i][1]) ?></span>
                                                <span>Sexo: <?php echo ($_SESSION['carrito'][$i][6]) ?></span>
                                            </p>
                                        </td>
                                        <td class="cart-product-price">
                                            <span class="amount" id="cantidad_producto_individual<?php echo($i); ?>"><?php echo ($_SESSION['carrito'][$i][3]) ?>&euro;</span>
                                        </td>
                                        <td class="cart-product-quantity">
                                            <div class="quantity">
                                                <input type="button" class="minus" onclick="menos_carrito('<?php echo ($_SESSION['carrito'][$i][0]) ?>', '<?php echo $_SESSION['carrito'][$i][1] ?>');" value="-">
                                                <input type="text" class="qty" id="cantidad" value="<?php echo ($_SESSION['carrito'][$i][2]) ?>" name="quantity">
                                                <input type="button" class="plus" onclick="mas_carrito('<?php echo $_SESSION['carrito'][$i][0] ?>', '<?php echo $_SESSION['carrito'][$i][1] ?>');" value="+">
                                            </div>
                                        </td>
                                        <td class="cart-product-subtotal">
                                            <span class="amount" id="cantidad_producto_total"><?php echo ($_SESSION['carrito'][$i][2] * $_SESSION['carrito'][$i][3]) ?>&euro;</span>
                                        </td>
                                    </tr>
                                    
                                <?php
                                }
                                ?>
                                <span class="amount" id="numero_productos" style="display: none;"><?php echo(count($_SESSION['carrito'])); ?></span>
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
<?php
}
