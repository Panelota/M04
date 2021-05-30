<?php
if (isset($_COOKIE['visites'])) {

    setcookie('visites', $_COOKIE['visites'] + 1, time() + 3600 * 24);
    $mensaje = 'Número de visites: ' . $_COOKIE['visites'];
} else {

    setcookie('visites', 1, time() + 3600 * 24);
    $mensaje = 'Benvingut por primer cop al nostre web';
}
?>  
<html>
    <head>
        <title>Cookie</title>
    </head>
    <body>
        <p>
            <?php echo $mensaje; ?>
        </p>    
    </body>
</html>  