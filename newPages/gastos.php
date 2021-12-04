<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indice de gastos</title>
    <link rel="stylesheet" href="../css/form.css"> 
    <link rel="stylesheet" href="../css/pageHome.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
</head>
<body>
<?php
  require_once "../db/conexion.php";
  ?>
  
  <div class="container2">
    <a href="../pageHome.php"><button type="submit" class="boton" title="regresar al inicio">Regresar</button></a>
    <a href="./showGastos.php"><button type="submit" class="boton" title="">Ver gastos</button></a>
</div>
    <form method="GET" action="gastos.php" class="form">
        <h2 style="color:red;">Registro para el control de gastos externos</h2>
        <p>Cuánto dinero se gastará</p>
        <input type="number" name="gasto" placeholder="Ingresa la cantidad que se gastará" required>
        <p>Descripción </p>
        <textarea type="text" name="descripcion" placeholder="Ingresa la descripción del gasto" required></textarea>
        <button type="submit" name="guardar">Guardar</button>
    </form>

    <?php
    if(isset($_GET['guardar'])==1)
    {
    $gasto = $_GET['gasto'];
    $descripcion = $_GET['descripcion'];
    date_default_timezone_set('America/Mexico_City');    
    $Time = date('h:i:s a');
    $Date = date('Y-m-d');
    
$almacenar= "INSERT INTO gastos( gasto, descripcion, fecha, hora) VALUES 
( '$gasto', '$descripcion', '$Date', '$Time')";
$resultado= mysqli_query($db, $almacenar);

if($resultado)
{
  
  ?>
  <script> window.location="../pageHome.php"; 
  alert("Registro Exitoso!");
  </script>
  <?php
}
else{
  ?>
  <script> window.location="./pageHome.php"; 
  alert("Ocurrio un error, intentelo mas tarde");
  </script>
  <?php
}
}
    ?>

</body>
</html>