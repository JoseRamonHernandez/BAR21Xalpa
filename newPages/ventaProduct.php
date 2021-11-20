<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venta</title>
    <link rel="stylesheet" href="../css/pageHome.css">
    <link rel="stylesheet" href="../css/sale.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
</head>
<body>
<?php
  require_once "../db/conexion.php";
  ?>
<div class="container2">
    <a href="../pageHome.php"><button type="submit" class="boton">Inicio</button></a>
  </div>
<div class="container">
        <div class="row">

<?php
    $nombre = $_GET['nombre'];
    $consulta= "SELECT * FROM products WHERE nombrep = '$nombre'";
    $ejecutarconsulta= mysqli_query($db,$consulta);
    $verfilas= mysqli_num_rows($ejecutarconsulta);
    $fila= mysqli_fetch_array($ejecutarconsulta);
// echo $verfilas;
    if(!$ejecutarconsulta)
    {
        echo("ERROR en la consulta");
    }
    else
        {
            if($verfilas<1)
            {
                echo('<h3><font color="white">Sin Registros</font></h3>');
            }
            else
            {
                
                    echo' <center> <div class="col-sm-6">
                    <form method="GET" action="ventaProduct.php" class="form">
                    <h1><font color="red">'.$fila[1].'</font></h1>
                    <h3><font color="red">Precio: $'.$fila[2].'</font></h3>
                    <p>Nombre del Producto a vender: </p><input type="text" name="nombreP" value="'.$fila[1].'" readonly="readonly">    
                    <p>Cantidad: </p><input type="number" name="cantidad" placeholder="Ingrese la cantidad de productos a vender:" required>
                        
                        <input style="margin-top:10px;" type="submit" value=" Realizar compra" class="boton" name="comprar">
                    </form>
                    </div></center>
                   
                ';
                $fila=mysqli_fetch_array($ejecutarconsulta);
            
         }
     }

 ?>
 </div>
    </div>
<?php
    if(isset($_GET['comprar'])==1)
    {
        $nombreP= $_GET['nombreP'];
        $cantidadP= $_GET['cantidad'];

        $consulta= "SELECT * FROM products WHERE nombreP = '$nombreP' ";
        $ejecutarconsulta= mysqli_query($db,$consulta);
        $verfilas= mysqli_num_rows($ejecutarconsulta);
        $fila= mysqli_fetch_array($ejecutarconsulta);
        $precioP = $fila[2];
        $resultado=($fila[2] * $cantidadP);
        date_default_timezone_set('America/Mexico_City');    
$Time = date('h:i:s a');
$Date = date('Y-m-d');
        
        
        
$almacenar= "INSERT INTO ventas( nombreP, precioP, cantidadP,  total, fecha, hora) VALUES 
( '$nombreP', '$precioP', '$cantidadP',  '$resultado',  '$Date' , '$Time')";
$resultado= mysqli_query($db, $almacenar);
if($resultado)
{
  
  ?>
  <script> window.location="./showSaleProduct.php"; 
  alert("Registro Exitoso!");
  </script>
  <?php
}
else{
  ?>
  <script> window.location="./ventaProduct.php"; 
  alert("Ocurrio un error, intentelo mas tarde");
  </script>
  <?php
}
    }
?>
</body>
</html>