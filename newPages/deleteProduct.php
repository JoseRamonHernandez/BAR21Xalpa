<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Producto</title>
    <!-- <link rel="stylesheet" href="./css/form.css"> -->
    <link rel="stylesheet" href="../css/buscador.css">  
    <link rel="stylesheet" href="../css/pageHome.css">
</head>
<body>
<?php
  require_once "../db/conexion.php";
  ?>

<br>

    <?php
    $nombre = $_GET['nombre'];

  

$delete="DELETE FROM products WHERE nombreP = '$nombre'";
$resultado= mysqli_query($db, $delete);
if($resultado)
{
    ?>
    <script> window.location="../pageHome.php"; 
    alert("Producto Eliminado con Exito");
    </script>
    <?php
}
else{
    ?>
    <script> window.location="../pageHome.php"; 
    alert("Ocurrio un error, intentelo mas tarde");
    </script>
    <?php
    }
        
                                   
 ?>
</body>
</html>