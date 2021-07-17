<!-- https://inside.contabilizei.com.br/criando-uma-lista-de-contados-simples-com-vuejs-12922fd53226 -->
<!-- https://getbootstrap.com/docs/5.0/getting-started/introduction/ -->
<!-- https://getbootstrap.com/docs/5.0/forms/overview/ -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta class="form-control" name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistemas Distribuídos Prova II</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->

</head>

<body>

    <main class="bd-main order-1">
        <div class="bd-content ps-lg-4">
            <!-- <div class="container"> -->
            <div class="row">

                <!-- Início parte da hospedagem -->
                <div class="col">
                    <!-- <h2>Consulta de hospedagem</h2>
                    <form action="consulta_hospedagem_disponivel.php" method="post">
                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="pesquisar_hospedagem">Digite uma cidade</label>
                                <input type="text" class="form-control" name="pesquisar_hospedagem"
                                    id="pesquisar_hospedagem">
                            </div>

                            <div class="mb-3 col-lg-4">
                                <a class="btn btn-primary">Pesquisar</a>
                            </div>
                        </div>
                    </form> -->

                    <h3>Compra de hospedagem</h3>
                    <form action="comprar_hospedagem.php" method="post">
                        <div class="row">
                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="quarto_hospedagem">Número de quartos</label>
                                <input type="text" class="form-control" name="quarto_hospedagem" id="quarto_hospedagem">
                            </div> -->

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="numero_hospedagem">Número de pessoas</label>
                                <input type="text" class="form-control" name="numero_hospedagem" id="numero_hospedagem">
                            </div>
                            <a class="mt-3 mb-3 col-lg-3 btn btn-info" onClick="addHtmlHospede()">ok</a>
                        </div>

                        <div class="mb-3 col-lg-6">
                            <label class="form-label" for="destino_hospedagem">Lugar de destino</label>
                            <input type="text" class="form-control" name="destino_hospedagem" id="destino_hospedagem">
                        </div>


                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="data_entrada_hospedagem">Data de início da
                                    hospedagem</label>
                                <input type="date" class="form-control" name="data_entrada_hospedagem"
                                    id="data_entrada_hospedagem">
                            </div>

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="data_saida_hospedagem">Data de saída da
                                    hospedagem</label>
                                <input type="date" class="form-control" name="data_saida_hospedagem"
                                    id="data_saida_hospedagem">
                            </div>
                        </div>

                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="quarto_hospedagem">Número de quartos</label>
                                <input type="text" class="form-control" name="quarto_hospedagem" id="quarto_hospedagem">
                            </div>

                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="numero_hospedagem">Número de pessoas</label>
                                <input type="text" class="form-control" name="numero_hospedagem" id="numero_hospedagem">
                            </div> -->
                        </div>

                        <div id="addHtmlHospede" class="row">
                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="quarto_hospedagem">Número de quartos</label>
                                <input type="text" class="form-control" name="quarto_hospedagem" id="quarto_hospedagem">
                            </div> -->

                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="numero_hospedagem">Número de pessoas</label>
                                <input type="text" class="form-control" name="numero_hospedagem" id="numero_hospedagem">
                            </div> -->
                        </div>

                        <div class="row">

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="nome_completo_hospedagem">Nome Completo comprador</label>
                                <input type="text" class="form-control" name="nome_completo_hospedagem"
                                    id="nome_completo_hospedagem">
                            </div>

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="cpf_hospedagem">CPF comprador</label>
                                <input type="text" class="form-control" name="cpf_hospedagem" id="cpf_hospedagem">
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="numero_cartao_hospedagem">Número do cartão</label>
                                <input type="text" class="form-control" name="numero_cartao_hospedagem"
                                    id="numero_cartao_hospedagem">
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="cvv_cartao_hospedagem">Código CVV do cartão</label>
                                <input type="text" class="form-control" name="cvv_cartao_hospedagem"
                                    id="cvv_cartao_hospedagem">

                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="mes_ano_hospedagem">Mes e Ano de Vencimento</label>
                                <input type="text" class="form-control" name="mes_ano_hospedagem"
                                    id="mes_ano_hospedagem">
                            </div>
                        </div>
                        <div class="row">
                            <h5>Parcelamento</h5>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x12_hospedagem"
                                    id="parcela_x12_hospedagem">
                                <label class="form-check-label" for="parcela_x12_hospedagem">x12</label>
                            </div>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x6_hospedagem"
                                    id="parcela_x6_hospedagem">
                                <label class="form-check-label" for="parcela_x6_hospedagem">x6</label>

                            </div>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x1_hospedagem"
                                    id="parcela_x1_hospedagem">
                                <label class="form-check-label" for="parcela_x1_hospedagem">x1</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Comprar Hospedagem</button>
                    </form>
                </div>

                <div class="col">
                    <br>
                    <div class="row">

                        <div class="col">
                            <div class="mb-3 col-lg">
                                <a class="btn btn-info" href="consulta_passagem_disponivel_page.php">Ver passagens
                                    disponíveis</a>

                            </div>

                        </div>
                        <div class="col">
                            <div class="mb-3 col-lg">
                                <a class="btn btn-info" href="consulta_hospedagem_disponivel_page.php">Ver hospedagens
                                    disponíveis</a>

                            </div>
                        </div>
                    </div>
                    <h3>Consulta de hospedagens compradas</h3>
                    <form action="#" method="post">
                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="pesquisar_hospedagem">Digite uma cidade</label>
                                <input type="text" class="form-control" name="pesquisar_hospedagem"
                                    id="pesquisar_hospedagem">
                            </div>
                            <div class="mb-3 col-lg-4">
                                <button type="submit" class="btn btn-primary">Pesquisar</button>
                            </div>

                        </div>
                    </form>
                    <div class="row">
                        <?php
                            echo ' Cidade pesquisada: ',$_POST['pesquisar_hospedagem'];
                            echo'<br>';
                            echo ' resultado: ';
                            $pesquisar_hospedagem = $_POST['pesquisar_hospedagem'];
                            $data = file_get_contents('http://localhost:3000/usuario/',$pesquisar_hospedagem);
                            echo $data;
                        ?>
                    </div>
                </div>

            </div>
        </div>

        <!-- </div> -->
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>

    <script>
    function addHtmlHospede() {
        var valor = document.getElementById("numero_hospedagem").value
        for (let index = 0; index < parseInt(valor); index++) {
            // const element = array[index];
            document.getElementById("addHtmlHospede").insertAdjacentHTML("afterend",
                // '<div class="mb-3 col-lg-3"><label class="form-label" for="nome_hospedagem">Idade</label><input type="text" class="form-control" name="idade_hospedagem' +
                //     index + '" id="idade_hospedagem"></div>'+
                '<div class="mb-3 col-lg-4"><label class="form-label" for="idade_hospedagem_' + (index + 1) +
                '">Idade pessoa ' + (index + 1) +
                '</label><input type="text" class="form-control" name="idade_hospedagem_' +
                (index + 1) + '" id="idade_hospedagem_' + (index + 1) + '"></div>');
        }
    }
    </>

</body>

</html>