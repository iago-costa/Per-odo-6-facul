<?php

echo $_POST['destino_hospedagem'];
echo  $_POST['data_entrada_hospedagem'];
echo  $_POST['data_saida_hospedagem'];
echo  $_POST['quarto_hospedagem'];
echo  $_POST['idade_hopedagem'];
echo  $_POST['nome_completo_hospedagem'];
echo  $_POST['cpf_hospedagem'];
echo  $_POST['numero_cartao_hospedagem'];
echo  $_POST['cvv_cartao_hospedagem'];
echo  $_POST['mes_ano_hospedagem'];

// $destino_hospedagem = $_POST['destino_hospedagem'];
// $data_entrada_hospedagem = $_POST['data_entrada_hospedagem'];
// $data_saida_hospedagem = $_POST['data_saida_hospedagem'];
// $quarto_hospedagem = $_POST['quarto_hospedagem'];
// $numero_hospedagem = $_POST['numero_hospedagem'];
// $idade_hopedagem = $_POST['idade_hopedagem'];
// $nome_completo_hospedagem = $_POST['nome_completo_hospedagem'];
// $cpf_hospedagem = $_POST['cpf_hospedagem'];
// $numero_cartao_hospedagem = $_POST['numero_cartao_hospedagem'];
// $cvv_cartao_hospedagem = $_POST['cvv_cartao_hospedagem'];
// $mes_ano_hospedagem = $_POST['mes_ano_hospedagem'];

// $request = new HttpRequest();
// $request->setUrl('http://localhost/create/hospedagem');
// $request->setMethod(HTTP_METH_POST);

// $request->setHeaders([
//   'Content-Type' => 'application/json'
// ]);

// $request->setBody('{
// 	"destino_hospedagem": "true",
// 	"data_entrada_hospedagem": "false",
// 	"data_saida_hospedagem": "",
// 	"quarto_hospedagem": "",
// 	"numero_hospedagem": "",
// 	"idade_hopedagem": "",
// 	"nome_completo_hospedagem": "",
// 	"cpf_hospedagem": "",
// 	"numero_cartao_hospedagem": "",
// 	"cvv_cartao_hospedagem": "",
// 	"mes_ano_hospedagem": ""
// }');

// try {
//   $response = $request->send();

//   echo $response->getBody();
// } catch (HttpException $ex) {
//   echo $ex;
// }