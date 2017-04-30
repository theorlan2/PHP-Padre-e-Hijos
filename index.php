<?php 

/*
Estructura Resultante:

serie t
-serie 2
--pelicula 1
--especial 1
-serie 3 
--sub serie 3
*/

$servername = "localhost";
$username = "root";
$password = "clave";
$db = "test"; 
// Creando conecion
$conn = mysqli_connect($servername, $username, $password);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_select_db($conn, $db);
mysqli_set_charset( $conn,"UTF8");  

$sql_cot = "SELECT * FROM padrehijos";
$result_cot = mysqli_query($conn, $sql_cot);

// Variale para guardar los datos en un Array
$data = [];

echo "<h4>Forma 1:</h4>";

// Primera forma, por impresion desde un While
while ($row = mysqli_fetch_array($result_cot)) { 
// Guardando datos
 $data[] = $row; 

if($row['padre'] == 0){
 
 echo ''.$row['nombre']."<br />";   

   }else{
/*
* str_repeat: Repite "n" numero de veces el string 
*/
echo str_repeat('-',$row['padre']).$row['nombre']."<br />";

 } 
}




echo "<h4>Forma 2:</h4>";
 
/* 
*Segunda Forma:
* La funcion se llama a si misma, hasta que ya no encuentra mas elementos en el Array 
o si se le asigna un Numero maximo de elementos a leer
*/

$cont0 = 0;

 function leer_array($hijos='',$cont = 0)
{
global $cont0;

if ($hijos[$cont][2] != 0) {

echo str_repeat('-',$hijos[$cont][2]);
echo $hijos[$cont][1]."<br />"; 

}else{

echo $hijos[$cont][1]."<br />";

}

if($cont < count($hijos) ){
$cont0++;
leer_array($hijos,$cont0); 

 }

}

leer_array($data,$cont0);

// Debug Data
//print_r($data); 

 ?>