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
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
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
                <div class="col-lg-6">
                    <h3>Consulta de passagens disponíveis</h3>
                    <form action="consulta_passagem_disponivel.php" method="post">
                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label class="form-label" for="pesquisar_passagem">Digite uma cidade</label>
                                <input type="text" class="form-control" name="pesquisar_passagem"
                                    id="pesquisar_passagem">
                            </div>
                            <div class="mb-3 col-lg-4">
                                <button type="submit" class="btn btn-primary">Pesquisar</button>

                            </div>

                        </div>

                    </form>
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


</body>

</html>