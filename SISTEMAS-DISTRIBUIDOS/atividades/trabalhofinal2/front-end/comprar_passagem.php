<?php

echo $_POST['ida_passagem'];
echo  $_POST['idaevolta_passagem'];
echo  $_POST['origem_passagem'];
echo  $_POST['destino_passagem'];
echo  $_POST['data_ida_passagem'];
echo  $_POST['data_volta_passagem'];
echo  $_POST['nome_completo_passagem'];
echo  $_POST['cpf_passagem'];
echo  $_POST['numero_cartao_passagem'];
echo  $_POST['cvv_cartao_passagem'];
echo  $_POST['mes_ano_passagem'];

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


// $request = new HttpRequest();
// $request->setUrl('http://localhost/create/passagem');
// $request->setMethod(HTTP_METH_POST);

// $request->setHeaders([
//   'Content-Type' => 'application/json'
// ]);

// $request->setBody('{
// 	"ida_passagem": "--ida_passagem",
// 	"idaevolta_passagem": "--idaevolta_passagem",
// 	"origem_passagem": "--origem_passagem",
// 	"destino_passagem": "--destino_passagem",
// 	"data_ida_passagem": "--data_ida_passagem",
// 	"data_volta_passagem": "--data_volta_passagem",
// 	"nome_completo_passagem": "--nome_completo_passagem",
// 	"cpf_passagem": "--cpf_passagem",
// 	"numero_cartao_passagem": "--numero_cartao_passagem",
// 	"cvv_cartao_passagem": "--cvv_cartao_passagem",
// 	"mes_ano_passagem": "--mes_ano_passagem"
// }');

// try {
//   $response = $request->send();

//   echo $response->getBody();
// } catch (HttpException $ex) {
//   echo $ex;
// }