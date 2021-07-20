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
    


    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
    <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->

    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">

</head>

<body>

    <main class="bd-main order-1">
        <div class="bd-content ps-lg-4">
            <div class="row justify-content-md-center">
                <div class="col">
                    <h3>Compra de passagens</h3>
                    <form action="comprar_passagem.php" method="post">

                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="numero_passagem">Número de pessoas</label>
                                <input type="text" class="form-control" name="numero_passagem" id="numero_passagem">
                            </div>

                            <a class="mt-3 mb-3 col-lg-3 btn btn-info" onClick="addHtmlPassageiro()">ok</a>
                        </div>

                        <div class="row">
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="ida_passagem" id="ida_passagem">
                                <label class="form-check-label" for="ida_passagem">Ida</label>
                            </div>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="idaevolta_passagem"
                                    id="idaevolta_passagem">
                                <label class="form-check-label" for="idaevolta_passagem">Ida e Volta</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="origem_passagem">Lugar de partida</label>
                                <input type="text" class="form-control" name="origem_passagem" id="origem_passagem">
                            </div>

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="destino_passagem">Lugar de destino</label>
                                <input type="text" class="form-control" name="destino_passagem" id="destino_passagem">
                            </div>


                        </div>

                        <div class="row">

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="data_ida_passagem">Data da ida</label>
                                <input type="date" class="form-control" name="data_ida_passagem" id="data_ida_passagem">
                            </div>

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="data_volta_passagem">Data da volta</label>
                                <input type="date" class="form-control" name="data_volta_passagem"
                                    id="data_volta_passagem">
                            </div>

                        </div>

                        <div id="addHtmlPassageiro" class="row">

                            <!-- 
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="numero_passagem">Número de pessoas</label>
                                <input type="text" class="form-control" name="numero_passagem" id="numero_passagem">
                            </div> 
                            -->


                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="idade_passagem">Idade</label>
                                <input type="text" class="form-control" name="idade_passagem" id="idade_passagem">
                            </div>  -->


                        </div>

                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="nome_completo_passagem">Nome Completo
                                    comprador</label>
                                <input type="text" class="form-control" name="nome_completo_passagem"
                                    id="nome_completo_passagem">
                            </div>

                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="cpf_passagem">CPF comprador</label>
                                <input type="text" class="form-control" name="cpf_passagem" id="cpf_passagem">
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="numero_cartao_passagem">Número do cartão</label>
                                <input type="text" class="form-control" name="numero_cartao_passagem"
                                    id="numero_cartao_passagem">
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="cvv_cartao_passagem">Código CVV do cartão</label>
                                <input type="text" class="form-control" name="cvv_cartao_passagem"
                                    id="cvv_cartao_passagem">
                            </div>

                            <div class="mb-3 col-lg-3">
                                <label class="form-label" for="mes_ano_passagem">Mes e Ano de Vencimento</label>
                                <input type="text" class="form-control" name="mes_ano_passagem" id="mes_ano_passagem">
                            </div>
                        </div>

                        <div class="row">
                            <h5>Parcelamento</h5>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x12_passagem"
                                    id="parcela_x12_passagem">
                                <label class="form-check-label" for="parcela_x12_passagem">x12</label>
                            </div>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x6_passagem"
                                    id="parcela_x6_passagem">
                                <label class="form-check-label" for="parcela_x6_passagem">x6</label>

                            </div>
                            <div class="mb-3 col-lg-6 form-check">
                                <input type="checkbox" class="form-check-input" name="parcela_x1_passagem"
                                    id="parcela_x1_passagem">
                                <label class="form-check-label" for="parcela_x1_passagem">x1</label>
                            </div>
                        </div>
                        <!-- 
                            Nome completo;
                            CPF ou RG;
                            E-mail;
                            Números do cartão de crédito;
                            Código CVV (código de segurança normalmente no verso do cartão);
                            Mês e ano de vencimento. 
                        -->
                        <button type="submit" class="btn btn-primary" onclick="alert('Passagem comprada sucesso!!')">Comprar passagem</button>
                    </form>
                    <br>

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

                    <h3>Consulta de passagens compradas</h3>
                    <form action="#" method="post">
                        <div class="row">

                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="pesquisar_passagem">Digite o id de compra</label>
                                <input type="text" class="form-control" name="pesquisar_passagem"
                                    id="pesquisar_passagem">
                            </div> -->

                            <div class="mb-3 col-lg-4">
                                <button type="submit" class="btn btn-primary">Ver passagens</button>

                            </div>

                        </div>

                    </form>
                    <div class="row">
                        <table id="example" class="display" width="100%"></table>

                    </div>
                </div>

            </div>

        </div>


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

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <!-- <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script> -->
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>


    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    <!-- <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script> -->
    <!-- <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap.min.js"></script> -->
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"></script>


    <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.colVis.min.js"></script>


    <script>
    function addHtmlPassageiro() {
        var valor = document.getElementById("numero_passagem").value
        document.getElementById("addHtmlPassageiro")
        for (let index = 0; index < parseInt(valor); index++) {
            // const element = array[index];
            document.getElementById("addHtmlPassageiro").insertAdjacentHTML("afterend",
                // '<div class="mb-3 col-lg-3"><label class="form-label" for="nome_passagem">Idade</label><input type="text" class="form-control" name="idade_passagem' +
                //     index + '" id="idade_passagem"></div>'+
                '<div class="mb-3 col-lg-4"><label class="form-label" for="idade_passagem_' + (index + 1) +
                '">Idade pessoa ' + (index + 1) +
                '</label><input type="text" class="form-control" name="idade_passagem_' +
                (index + 1) + '" id="idade_passagem_' + (index + 1) + '"></div>');
        }
    }

    var data = JSON.stringify(<?php
        // echo ' Cidade pesquisada: ';
        // echo'<br>';
        // echo 'resultado: ', $_POST['pesquisar_passagem'];
        // $pesquisar_passagem = $_POST['pesquisar_passagem'];
        $data = file_get_contents('http://05a57ce23b4a.ngrok.io/passagens_compradas/');
        echo $data;
    ?>)

    data = JSON.parse(data);
    // console.log(data)
    // console.log(data[0]['idaevolta_passagem'].toString())
    var datafinal = []

    for (i = 0; i < data.length; i++) {

        var barray = [];


        if (data[i]["destino_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["destino_passagem"]);

        }

        if (data[i]["origem_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["origem_passagem"]);

        }

        if (data[i]["ida_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["ida_passagem"].toString());

        }

        if (data[i]["idaevolta_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["idaevolta_passagem"].toString());

        }

        if (data[i]["data_ida_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["data_ida_passagem"]);

        }

        if (data[i]["data_volta_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["data_volta_passagem"]);

        }

        if (data[i]["numero_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["numero_passagem"]);

        }
        
        if (data[i]["idade_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["idade_passagem"]);

        }

        if (data[i]["nome_completo_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["nome_completo_passagem"]);

        }

        if (data[i]["cpf_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["cpf_passagem"]);

        }

        if (data[i]["numero_cartao_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["numero_cartao_passagem"]);

        }

        if (data[i]["cvv_cartao_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["cvv_cartao_passagem"]);

        }

        if (data[i]["mes_ano_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["mes_ano_passagem"]);

        }

        if (data[i]["parcela_passagem"] === undefined) {
            barray.push('sem valor');

        } else {
            barray.push(data[i]["parcela_passagem"].toString());

        }

        // barray.push(data[i]["destino_passagem"]);
        // barray.push(data[i]["origem_passagem"]);
        // barray.push(data[i]["ida_passagem"].toString());
        // barray.push(data[i]["idaevolta_passagem"].toString());
        // barray.push(data[i]["data_entrada_passagem"]);
        // barray.push(data[i]["data_saida_passagem"]);
        // barray.push(data[i]["quarto_passagem"]);
        // barray.push(data[i]["numero_passagem"]);
        // barray.push(data[i]["idade_passagem"]);
        // barray.push(data[i]["nome_completo_passagem"]);
        // barray.push(data[i]["cpf_passagem"]);
        // barray.push(data[i]["quarto_passagem"]);
        // barray.push(data[i]["numero_cartao_passagem"]);
        // barray.push(data[i]["cvv_cartao_passagem"]);
        // barray.push(data[i]["mes_ano_passagem"]);
        // barray.push(data[i]["parcela_passagem"].toString());

        datafinal.push(barray);

    }

    // console.log(datafinal)
    $(document).ready(function() {
        $("#example").DataTable({
            data: datafinal,
            scrollX: true,
            scrollY: 500,
            columns: [{
                    title: "Destino",
                },
                {
                    title: "Origem",
                },
                {
                    title: "Ida",
                },
                {
                    title: "Ida e volta",
                },
                {
                    title: "Data ida",
                },
                {
                    title: "Data volta",
                },
                {
                    title: "Número de pessoas",
                },
                {
                    title: "Idade das pessoas",
                },
                {
                    title: "Nome completo comprador",
                },
                {
                    title: "Cpf",
                },
                {
                    title: "Número do cartão",
                },
                {
                    title: "CVV cartão",
                },
                {
                    title: "Mes/Ano",
                },
                {
                    title: "Parcelas",
                }
            ],
            dom: "Bfrtip",
            buttons: [{
                    extend: "colvis",
                    columns: ":not(.noVis)",
                },

                "copy",
                "csv",
                "excel",
                "pdf",
                "print",
            ],
            select: true
            // paging: false,
            // searching: false
        });
    });
    </script>

</body>

</html>