<?php

echo $_POST['pesquisar_passagem'];

// $pesquisar_passagem = $_POST['pesquisar_passagem'];

$request = new HttpRequest();
$request->setUrl('http://localhost/read/passagem');
$request->setMethod(HTTP_METH_POST);

$request->setHeaders([
  'Content-Type' => 'application/json'
]);

$request->setBody('{
	"pesquisar_passagem": ""
}');

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}