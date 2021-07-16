<?php


// echo $_POST['destino_hospedagem'];
// echo  $_POST['data_entrada_hospedagem'];
// echo  $_POST['data_saida_hospedagem'];
// echo  $_POST['quarto_hospedagem'];
// echo $_POST['numero_hospedagem'];
// echo  $_POST['idade_hopedagem'];
// echo  $_POST['nome_completo_hospedagem'];
// echo  $_POST['cpf_hospedagem'];
// echo  $_POST['numero_cartao_hospedagem'];
// echo  $_POST['cvv_cartao_hospedagem'];
// echo  $_POST['mes_ano_hospedagem'];

// echo "<br />";
// echo $_POST['idade_hospedagem_1'];
// echo "<br />"; 
// echo $_POST['idade_hospedagem_2'];
// echo "<br />";
// echo $_POST['idade_hospedagem_3'];
// echo "<br />";
// echo $_POST['idade_hospedagem_4'];
// echo "<br />";
// echo $_POST['idade_hospedagem_5'];
// echo "<br />";
// echo $_POST['idade_hospedagem_6'];
// echo "<br />";

// $destino_hospedagem = $_POST['destino_hospedagem'];
// $data_entrada_hospedagem = $_POST['data_entrada_hospedagem'];
// $data_saida_hospedagem = $_POST['data_saida_hospedagem'];
// $quarto_hospedagem = $_POST['quarto_hospedagem'];
// $numero_hospedagem = $_POST['numero_hospedagem'];
// $nome_completo_hospedagem = $_POST['nome_completo_hospedagem'];
// $cpf_hospedagem = $_POST['cpf_hospedagem'];
// $numero_cartao_hospedagem = $_POST['numero_cartao_hospedagem'];
// $cvv_cartao_hospedagem = $_POST['cvv_cartao_hospedagem'];
// $mes_ano_hospedagem = $_POST['mes_ano_hospedagem'];

// $parcela_x12_hospedagem = $_POST['parcela_x12_hospedagem'];
// $parcela_x6_hospedagem = $_POST['parcela_x6_hospedagem'];
// $parcela_x1_hospedagem = $_POST['parcela_x1_hospedagem'];

$idade_hospedagem_1 = $_POST['idade_hospedagem_1'];
$idade_hospedagem_2 = $_POST['idade_hospedagem_2'];
$idade_hospedagem_3 = $_POST['idade_hospedagem_3'];
$idade_hospedagem_4 = $_POST['idade_hospedagem_4'];
$idade_hospedagem_5 = $_POST['idade_hospedagem_5'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_6'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_7'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_8'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_9'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_10'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_11'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_12'];

$idades_hospedagem = ''; 
for ($i=1; $i <= (int)$numero_hospedagem; $i++) {
    // $idade_hospedagem_+$i = $_POST['idade_hospedagem_'+$i];
    // echo $i;
    // echo "<br />";
    $idades_hospedagem .= strval($idade_hospedagem_+($i)).";";
    // echo $idade_hopedagem_+($i);
    // echo "<br />";
}
// echo "<br />";
// echo $idades_hospedagem;


// $array = array(
// 	"destino_hospedagem"=> $destino_hospedagem,
// 	"data_entrada_hospedagem"=> $data_entrada_hospedagem,
// 	"data_saida_hospedagem"=> $data_saida_hospedagem,
// 	"quarto_hospedagem"=> $quarto_hospedagem,
// 	"numero_hospedagem"=> $numero_hospedagem,
// 	"idade_hopedagem"=> $idades_hopedagem,
// 	"nome_completo_hospedagem"=> $nome_completo_hospedagem,
// 	"cpf_hospedagem"=> $cpf_hospedagem,
// 	"numero_cartao_hospedagem"=> $numero_cartao_hospedagem,
// 	"cvv_cartao_hospedagem"=> $cvv_cartao_hospedagem,
// 	"mes_ano_hospedagem"=> $mes_ano_hospedagem,
//  "parcela_x12_hospedagem"=> $parcela_x12_hospedagem,
//  "parcela_x6_hospedagem"=> $parcela_x6_hospedagem,
//  "parcela_x1_hospedagem"=> $parcela_x1_hospedagem
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