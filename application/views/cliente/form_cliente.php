<div class="container mt-5">


<?php echo validation_errors('<div class="alert alert-danger">', '</div>'); ?>

    <div class="row">
        <div class="col-md-6 mx-auto">
            <!-- Default form login -->
                    <br/>
            <form class="text-center border border-light p-5" method="POST">
            <p class="h4 mb-4">Cadastre-se</p>
                <input value="<?= isset($user) ? $user['nome'] :  ''  ?>" type="text" id="nome" name="nome" class="form-control mb-4" placeholder="Seu nome">
                <input  value="<?= isset($user) ? $user['snome'] : ''  ?>" type="text" id="snome" name="snome" class="form-control mb-4" placeholder="Seu sobrenome">
                <input  value="<?= isset($user) ? $user['idade'] : ''  ?>" type="number" id="idade" name="idade" class="form-control mb-4" placeholder=" Sua idade">
                <input value="<?= isset($user) ? $user['sexo'] :  '' ?>" type="text" id="sexo" name="sexo" class="form-control mb-4" placeholder="Masculino ou Feminino">
                <button class="btn btn-info btn-block my-4" type="submit">Enviar</button>
            </form>

        </div>
    </div>
</div>

 