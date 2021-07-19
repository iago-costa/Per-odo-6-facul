<?php
// Requisição para compra de hospedagens

// echo 'destino_hospedagem: ', $_POST['destino_hospedagem'];
// echo "<br/>";
// echo 'data_entrada_hospedagem: ', $_POST['data_entrada_hospedagem'];
// echo "<br/>";
// echo 'data_saida_hospedagem: ', $_POST['data_saida_hospedagem'];
// echo "<br/>";
// echo 'quarto_hospedagem: ', $_POST['quarto_hospedagem'];
// echo "<br/>";
// echo 'numero_hospedagem: ', $_POST['numero_hospedagem'];
// echo "<br/>";
// echo 'idade_hopedagem: ', $_POST['idade_hopedagem'];
// echo "<br/>";
// echo 'nome_completo_hospedagem: ', $_POST['nome_completo_hospedagem'];
// echo "<br/>";
// echo 'cpf_hospedagem: ', $_POST['cpf_hospedagem'];
// echo "<br/>";
// echo 'numero_cartao_hospedagem: ', $_POST['numero_cartao_hospedagem'];
// echo "<br/>";
// echo 'cvc_cartao_hospedagem: ', $_POST['cvc_cartao_hospedagem'];
// echo "<br/>";
// echo 'mes_ano_hospedagem: ', $_POST['mes_ano_hospedagem'];
// echo "<br/>";

// echo "<br/>";
// echo $_POST['idade_hospedagem_1'];
// echo "<br/>"; 
// echo $_POST['idade_hospedagem_2'];
// echo "<br/>";
// echo $_POST['idade_hospedagem_3'];
// echo "<br/>";
// echo $_POST['idade_hospedagem_4'];
// echo "<br/>";
// echo $_POST['idade_hospedagem_5'];
// echo "<br/>";
// echo $_POST['idade_hospedagem_6'];
// echo "<br/>";

$destino_hospedagem = $_POST['destino_hospedagem'];
$data_entrada_hospedagem = $_POST['data_entrada_hospedagem'];
$data_saida_hospedagem = $_POST['data_saida_hospedagem'];
$quarto_hospedagem = $_POST['quarto_hospedagem'];
$numero_hospedagem = $_POST['numero_hospedagem'];
$nome_completo_hospedagem = $_POST['nome_completo_hospedagem'];
$cpf_hospedagem = $_POST['cpf_hospedagem'];
$numero_cartao_hospedagem = $_POST['numero_cartao_hospedagem'];
$cvc_cartao_hospedagem = $_POST['cvc_cartao_hospedagem'];
$mes_ano_hospedagem = $_POST['mes_ano_hospedagem'];

$parcela_x12_hospedagem = $_POST['parcela_x12_hospedagem'];
$parcela_x6_hospedagem = $_POST['parcela_x6_hospedagem'];
$parcela_x1_hospedagem = $_POST['parcela_x1_hospedagem'];

$idade_hospedagem_1 = $_POST['idade_hospedagem_1'];
$idade_hospedagem_2 = $_POST['idade_hospedagem_2'];
$idade_hospedagem_3 = $_POST['idade_hospedagem_3'];
$idade_hospedagem_4 = $_POST['idade_hospedagem_4'];
$idade_hospedagem_5 = $_POST['idade_hospedagem_5'];
$idade_hospedagem_6 = $_POST['idade_hospedagem_6'];
$idade_hospedagem_7 = $_POST['idade_hospedagem_7'];
$idade_hospedagem_8 = $_POST['idade_hospedagem_8'];
$idade_hospedagem_9 = $_POST['idade_hospedagem_9'];
$idade_hospedagem_10 = $_POST['idade_hospedagem_10'];
$idade_hospedagem_11 = $_POST['idade_hospedagem_11'];
$idade_hospedagem_12 = $_POST['idade_hospedagem_12'];

// $idades_hospedagem = ''; 

$idades_hospedagem = array(
    $idade_hospedagem_1,
    $idade_hospedagem_2,
    $idade_hospedagem_3,
    $idade_hospedagem_4,
    $idade_hospedagem_5,
    $idade_hospedagem_6,
    $idade_hospedagem_7,
    $idade_hospedagem_8,
    $idade_hospedagem_9,
    $idade_hospedagem_10,
    $idade_hospedagem_11,
    $idade_hospedagem_12
);

$idades_hospedagem = implode(",", $idades_hospedagem);
$pontos = 12 - (int)$numero_hospedagem;
$tamanho_real = strlen($idades_hospedagem)-$pontos;

$idades_hospedagem = substr($idades_hospedagem, 0,$tamanho_real);

// for ($i=1; $i <= (int)$numero_hospedagem; $i++) {
//     // $idade_hospedagem_+$i = $_POST['idade_hospedagem_'+$i];
//     // echo $i;
//     // echo "<br />";
//     $idades_hospedagem .= strval($idade_hospedagem_+($i)).";";
//     // echo $idade_hopedagem_+($i);
//     // echo "<br />";
// }
// echo "<br/>";
// echo 'idades_hospedagem: ', $idades_hospedagem;

$parcela_hospedagem = '';

if ($parcela_x12_hospedagem == 'on') {
    $parcela_hospedagem = '12';
} elseif ($parcela_x6_hospedagem == 'on'){
    $parcela_hospedagem = '6';
}elseif ($parcela_x1_hospedagem = 'on'){
    $parcela_hospedagem = '1';
}
// echo "<br/>";
// echo 'parcela_hospedagem: ',$parcela_hospedagem;

$array = array(
	"destino_hospedagem"=> $destino_hospedagem,
	"data_entrada_hospedagem"=> $data_entrada_hospedagem,
	"data_saida_hospedagem"=> $data_saida_hospedagem,
	"quarto_hospedagem"=> $quarto_hospedagem,
	"numero_hospedagem"=> $numero_hospedagem,
	"idade_hospedagem"=> $idades_hospedagem,
	"nome_completo_hospedagem"=> $nome_completo_hospedagem,
	"cpf_hospedagem"=> $cpf_hospedagem,
	"numero_cartao_hospedagem"=> $numero_cartao_hospedagem,
	"cvc_cartao_hospedagem"=> $cvc_cartao_hospedagem,
	"mes_ano_hospedagem"=> $mes_ano_hospedagem,
    "parcela_hospedagem"=> (int)$parcela_hospedagem
);

$json = json_encode($array);
// echo $json;

$ch = curl_init('http://05a57ce23b4a.ngrok.io/compra_hospedagem');

curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");

curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

curl_setopt($ch, CURLOPT_HTTPHEADER, array(

    'Content-Type: application/json',

    'Content-Length: ' . strlen($json))

);
// Envio de requisição para compra de hospedagens
$jsonRet = json_decode(curl_exec($ch));

// echo $jsonRet;

// echo "<script>alert('Hospedagem Comprada')</script>";


header('Location: comprar_hospedagem_page.'.php);