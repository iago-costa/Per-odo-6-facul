<?php

echo $_POST['pesquisar_hospedagem'];

// $pesquisar_hospedagem = $_POST['pesquisar_hospedagem'];

$request = new HttpRequest();
$request->setUrl('http://localhost/read/hospedagem');
$request->setMethod(HTTP_METH_POST);

$request->setHeaders([
  'Content-Type' => 'application/json'
]);

$request->setBody('{
	"pesquisar_hospedagem": ""
}');

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}