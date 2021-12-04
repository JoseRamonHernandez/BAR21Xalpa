<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Desglose de gastos</title>
    <link rel="stylesheet" href="../css/showPage2.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
<div class="container2">
    <a href="../pageHome.php"><button type="submit" class="boton2" >Regresar</button></a>
  
</div>
<?php
  require_once "../db/conexion.php";
  ?>

    <form method="GET" action="showGastos.php" >
        <p>Selecciona la fecha: <input type="date" name="date">
        
        <button name="enviar" method="submit"class="boton2" >Search</button></p>
</form>
<center>
<h2 >Se muestra el desglose de GASTOS de la fecha: </h2>
</center>

<?php
if(isset($_GET['enviar'])==1)
{
    $date=$_GET['date'];
   
    echo(" ");
    echo ('<center><h2>'.$date.' </h2></center>');

?>
<br>
<div class="contianer">
<center>
<table class="table">
        <thead>
          <tr>
                <th class="bg-dark text-white">Cantidad</th>
              <th class="bg-dark text-white">Descripción</th>
              <th class="bg-dark text-white">Hora</th>
             
          </tr>
        </thead>
<?php
    $consulta= "SELECT gasto, descripcion, hora FROM gastos WHERE fecha = '$date' ";
    $ejecutarconsulta= mysqli_query($db,$consulta);
    $verfilas= mysqli_num_rows($ejecutarconsulta);
    $fila= mysqli_fetch_array($ejecutarconsulta);

    $consulta2="SELECT SUM(gasto) FROM gastos WHERE fecha = '$date'";
    $ejecutarconsulta2= mysqli_query($db,$consulta2);
    $verfilas2= mysqli_num_rows($ejecutarconsulta2);
    $fila2= mysqli_fetch_array($ejecutarconsulta2);
   
  
// echo $verfilas;
    if(!$ejecutarconsulta)
    {
        echo("ERROR en la consulta");
    }
    else
        {
            if($verfilas<1)
            {
                echo('<h3>Sin Registros</h3>');
            }
            else
            {
                echo('<h2 style="color:red;">Con un total de GASTOS de $'.$fila2[0].' </h2>'); 
                for($x=0; $x<=$fila; $x++)
                {   
                    echo'  
                    <tr>
                    <td>'.$fila[0].'</td>
                    <td>'.$fila[1].'</td>
                    <td>'.$fila[2].'</td>
                    
                    
                </tr>
                   
                ';
                $fila=mysqli_fetch_array($ejecutarconsulta);
            }
         }
     }
    }
 ?>
 
</table>
</center>
</div>
</body>
</html>