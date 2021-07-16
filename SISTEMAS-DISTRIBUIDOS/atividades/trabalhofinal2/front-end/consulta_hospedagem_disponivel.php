<?php

echo $_POST['pesquisar_hospedagem'];

// $pesquisar_hospedagem = $_POST['pesquisar_hospedagem'];

$array = array("destino_hospedagem" => $pesquisar_hospedagem);

$json = json_encode($array);
$ch = curl_init('http://localhost:3000/usuario');

curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");

curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(

    'Content-Type: application/json',

    'Content-Length: ' . strlen($json))

);

$jsonRet = json_decode(curl_exec($ch));