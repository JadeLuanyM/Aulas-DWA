<div class="container mt-5">
    <br />
    <div class="row">
    <h1 class="col-md-8">Lista de Carros</h1>
    <a href="<?= base_url('carro/cadastro') ?>" class="btn btn-danger
    ">Novo Carro</a>

    <div class="class mt-4">
        <div class="row">
            <?= $carros ?>
        </div>
    </div>
</div>