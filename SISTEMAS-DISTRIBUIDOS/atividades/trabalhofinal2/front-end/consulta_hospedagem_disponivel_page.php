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
            <div class="row">

                <div class="col-lg-6">

                    <br>
                    <div class="row">
                        <div class="mb-3 col-lg-4">
                            <a class="btn btn-info" href="comprar_hospedagem_page.php">Comprar hospedagens</a>

                        </div>
                        <div class="mb-3 col-lg-4">
                            <a class="btn btn-info" href="comprar_passagem_page.php">Comprar passagens</a>

                        </div>
                    </div>

                </div>
                <!-- Início parte da hospedagem -->

                <div class="col-lg-6">

                    <h3>Consulta de hospedagem disponível</h3>
                    <form action="#" method="post">
                        <div class="row">
                            <!-- <div class="mb-3 col-lg-6">
                                <label class="form-label" for="pesquisar_hospedagem">Digite uma cidade</label>
                                <input type="text" class="form-control" name="pesquisar_hospedagem"
                                    id="pesquisar_hospedagem">
                            </div> -->

                            <div class="mb-3 col-lg-4">
                                <button type="submit" class="btn btn-primary">Pesquisar</button>

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
    var data = JSON.parse('<?php
        // echo ' Cidade pesquisada: ';
        // echo'<br>';
        // echo 'resultado: ', $_POST['pesquisar_passagem'];
        // $pesquisar_passagem = $_POST['pesquisar_passagem'];
        $data = file_get_contents('http://05a57ce23b4a.ngrok.io/todas_hospedagens_disponiveis');
        echo $data;
    ?>')

    var datafinal = []

    for (i = 0; i < data.length; i++) {

        var barray = [];

        if (data[i]["destino_hospedagem"] === undefined) {
            barray.push('null');

        } else {
            barray.push(data[i]["destino_hospedagem"]);

        }

        if (data[i]["quantidade_hospedagem"] === undefined) {
            barray.push('null');

        } else {
            barray.push(data[i]["quantidade_hospedagem"]);

        }
        // barray.push(data[i]["destino_hospedagem"]);
        // barray.push(data[i]["quantidade_hospedagem"]);

        datafinal.push(barray);

    }

    $(document).ready(function() {
        $("#example").DataTable({
            data: datafinal,
            scrollX: true,
            scrollY: 500,
            columns: [{
                    title: "Destino",
                },
                {
                    title: "Quatidade",
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