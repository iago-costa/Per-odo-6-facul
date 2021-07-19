<?php
// Requisição para compra de passagens

// echo 'ida_passagem: ', $_POST['ida_passagem'];
// echo "<br />";
// echo 'idaevolta_passagem', $_POST['idaevolta_passagem'];
// echo "<br />";
// echo 'origem_passagem: ', $_POST['origem_passagem'];
// echo "<br />";
// echo 'destino_passagem: ', $_POST['destino_passagem'];
// echo "<br />";
// echo 'data_ida_passagem: ',$_POST['data_ida_passagem'];
// echo "<br />";
// echo 'data_volta_passagem: ', $_POST['data_volta_passagem'];
// echo "<br />";
// echo 'nome_completo_passagem: ', $_POST['nome_completo_passagem'];
// echo "<br />";
// echo 'cpf_passagem: ', $_POST['cpf_passagem'];
// echo "<br />";
// echo 'numero_cartao_passagem: ', $_POST['numero_cartao_passagem'];
// echo "<br />";
// echo 'cvv_cartao_passagem: ', $_POST['cvv_cartao_passagem'];
// echo "<br />";
// echo 'mes_ano_passagem: ',$_POST['mes_ano_passagem'];
// echo "<br />";

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

$ida_passagem = $_POST['ida_passagem'];
$idaevolta_passagem = $_POST['idaevolta_passagem'];
$origem_passagem = $_POST['origem_passagem'];
$destino_passagem = $_POST['destino_passagem'];
$data_ida_passagem = $_POST['data_ida_passagem'];
$data_volta_passagem = $_POST['data_volta_passagem'];
$numero_passagem = $_POST['numero_passagem'];
$nome_completo_passagem = $_POST['nome_completo_passagem'];
$cpf_passagem = $_POST['cpf_passagem'];
$numero_cartao_passagem = $_POST['numero_cartao_passagem'];
$cvv_cartao_passagem = $_POST['cvv_cartao_passagem'];
$mes_ano_passagem = $_POST['mes_ano_passagem'];

$parcela_x12_passagem = $_POST['parcela_x12_passagem'];
$parcela_x6_passagem = $_POST['parcela_x6_passagem'];
$parcela_x1_passagem = $_POST['parcela_x1_passagem'];

$idade_passagem_1 = $_POST['idade_passagem_1'];
$idade_passagem_2 = $_POST['idade_passagem_2'];
$idade_passagem_3 = $_POST['idade_passagem_3'];
$idade_passagem_4 = $_POST['idade_passagem_4'];
$idade_passagem_5 = $_POST['idade_passagem_5'];
$idade_passagem_6 = $_POST['idade_passagem_6'];
$idade_passagem_7 = $_POST['idade_passagem_7'];
$idade_passagem_8 = $_POST['idade_passagem_8'];
$idade_passagem_9 = $_POST['idade_passagem_9'];
$idade_passagem_10 = $_POST['idade_passagem_10'];
$idade_passagem_11 = $_POST['idade_passagem_11'];
$idade_passagem_12 = $_POST['idade_passagem_12'];

$idades_passagem = array(
    $idade_passagem_1,
    $idade_passagem_2,
    $idade_passagem_3,
    $idade_passagem_4,
    $idade_passagem_5,
    $idade_passagem_6,
    $idade_passagem_7,
    $idade_passagem_8,
    $idade_passagem_9,
    $idade_passagem_10,
    $idade_passagem_11,
    $idade_passagem_12
);

$idades_passagem = implode(",", $idades_passagem);
$pontos = 12 - (int)$numero_passagem;
$tamanho_real = strlen($idades_passagem)-$pontos;

$idades_passagem = substr($idades_passagem, 0,$tamanho_real);
// $idades_passagem = ''; 

// foreach ($variable as $key => $value) {
//     # code...
// }

// for ($i=1; $i <= (int)$numero_passagem; $i++) {
//     // $idade_passagem_+$i = $_POST['idade_passagem_'+$i];
//     // echo $i;
//     echo "<br />";
//     // $idades_passagem .= strval($idade_passagem_.($i)).";";
//     echo $('idade_hopedagem_'.$i);
//     // echo "<br />";
// }
// echo "<br />";
// echo 'idades_passagem: ',$idades_passagem;

$parcela_passagem = '';

if ($parcela_x12_passagem == 'on') {
    $parcela_passagem = '12';
} elseif ($parcela_x6_passagem == 'on'){
    $parcela_passagem = '6';
}elseif ($parcela_x1_passagem = 'on'){
    $parcela_passagem = '1';
}

// echo 'parcela_passagem: ', $parcela_passagem;

if ($ida_passagem == 'on'){
    
    $ida_passagem = true;
}
if ($idaevolta_passagem == 'on'){
    
    $idaevolta_passagem = true;
}
if ($ida_passagem = ''){
    
    $ida_passagem = false;
}
if ($idaevolta_passagem == ''){
    
    $idaevolta_passagem = false;
}

$array = array(
	"ida_passagem"=> $ida_passagem,
	"idaevolta_passagem"=> $idaevolta_passagem,
	"origem_passagem"=> $origem_passagem,
	"destino_passagem"=> $destino_passagem,
	"data_ida_passagem"=> $data_ida_passagem,
	"data_volta_passagem"=> $data_volta_passagem,
    "numero_passagem"=> $numero_passagem,
	"nome_completo_passagem"=> $nome_completo_passagem,
	"cpf_passagem"=> $cpf_passagem,
	"numero_cartao_passagem"=> $numero_cartao_passagem,
	"cvv_cartao_passagem"=> $cvv_cartao_passagem,
	"mes_ano_passagem"=> $mes_ano_passagem,
    "idade_passagem"=> $idades_passagem,
    "parcela_passagem"=> (int)$parcela_passagem
);

$json = json_encode($array);
echo $json;
echo "<br>";
$ch = curl_init('http://05a57ce23b4a.ngrok.io/compra_passagem/');

curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");

curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(

    'Content-Type: application/json',

    'Content-Length: ' . strlen($json))

);

// Requisição para compra de passagens
$jsonRet = json_decode(curl_exec($ch));

// echo $jsonRet;

header('Location: comprar_passagem_page.'.php);