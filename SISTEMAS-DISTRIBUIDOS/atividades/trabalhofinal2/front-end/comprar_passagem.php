<?php

// echo $_POST['ida_passagem'];
// echo $_POST['idaevolta_passagem'];
// echo $_POST['origem_passagem'];
// echo $_POST['destino_passagem'];
// echo $_POST['data_ida_passagem'];
// echo $_POST['data_volta_passagem'];
// echo $_POST['nome_completo_passagem'];
// echo $_POST['cpf_passagem'];
// echo $_POST['numero_cartao_passagem'];
// echo $_POST['cvv_cartao_passagem'];
// echo $_POST['mes_ano_passagem'];

// echo "<br />";
// echo $_POST['idade_passagem_1'];
// echo "<br />"; 
// echo $_POST['idade_passagem_2'];
// echo "<br />";
// echo $_POST['idade_passagem_3'];
// echo "<br />";
// echo $_POST['idade_passagem_4'];
// echo "<br />";
// echo $_POST['idade_passagem_5'];
// echo "<br />";
// echo $_POST['idade_passagem_6'];
// echo "<br />";

// $ida_passagem = $_POST['ida_passagem'];
// $idaevolta_passagem = $_POST['idaevolta_passagem'];
// $origem_passagem = $_POST['origem_passagem'];
// $destino_passagem = $_POST['destino_passagem'];
// $data_ida_passagem = $_POST['data_ida_passagem'];
// $data_volta_passagem = $_POST['data_volta_passagem'];
// $nome_completo_passagem = $_POST['nome_completo_passagem'];
// $cpf_passagem = $_POST['cpf_passagem'];
// $numero_cartao_passagem = $_POST['numero_cartao_passagem'];
// $cvv_cartao_passagem = $_POST['cvv_cartao_passagem'];
// $mes_ano_passagem = $_POST['mes_ano_passagem'];

// $parcela_x12_passagem = $_POST['parcela_x12_passagem'];
// $parcela_x6_passagem = $_POST['parcela_x6_passagem'];
// $parcela_x1_passagem = $_POST['parcela_x1_passagem'];

$idade_passagem_1 = $_POST['idade_passagem_1'];
$idade_passagem_2 = $_POST['idade_passagem_2'];
$idade_passagem_3 = $_POST['idade_passagem_3'];
$idade_passagem_4 = $_POST['idade_passagem_4'];
$idade_passagem_5 = $_POST['idade_passagem_5'];
$idade_passagem_6 = $_POST['idade_passagem_6'];
$idade_passagem_6 = $_POST['idade_passagem_7'];
$idade_passagem_6 = $_POST['idade_passagem_8'];
$idade_passagem_6 = $_POST['idade_passagem_9'];
$idade_passagem_6 = $_POST['idade_passagem_10'];
$idade_passagem_6 = $_POST['idade_passagem_11'];
$idade_passagem_6 = $_POST['idade_passagem_12'];

$idades_passagem = ''; 
for ($i=1; $i <= (int)$numero_passagem; $i++) {
    // $idade_passagem_+$i = $_POST['idade_passagem_'+$i];
    // echo $i;
    // echo "<br />";
    $idades_passagem .= strval($idade_passagem_+($i)).";";
    // echo $idade_hopedagem_+($i);
    // echo "<br />";
}
// echo "<br />";
// echo $idades_passagem;

// $array = array(
// 	"ida_passagem"=> $ida_passagem,
// 	"idaevolta_passagem"=> $idaevolta_passagem,
// 	"origem_passagem"=> $origem_passagem,
// 	"destino_passagem"=> $destino_passagem,
// 	"data_ida_passagem"=> $data_ida_passagem,
// 	"data_volta_passagem"=> $data_volta_passagem,
// 	"nome_completo_passagem"=> $nome_completo_passagem,
// 	"cpf_passagem"=> $cpf_passagem,
// 	"numero_cartao_passagem"=> $numero_cartao_passagem,
// 	"cvv_cartao_passagem"=> $cvv_cartao_passagem,
// 	"mes_ano_passagem"=> $mes_ano_passagem,
//     "idade_passagem"=> $idades_passagem,
//     "parcela_x12_passagem"=> $parcela_x12_passagem,
//     "parcela_x6_passagem"=> $parcela_x6_passagem,
//     "parcela_x1_passagem"=> $parcela_x1_passagem
// );

// $json = json_encode($array);
// $ch = curl_init('http://localhost:3000/usuario');

// curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");

// curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// curl_setopt($ch, CURLOPT_HTTPHEADER, array(

//     'Content-Type: application/json',

//     'Content-Length: ' . strlen($json))

// );

// $jsonRet = json_decode(curl_exec($ch));


