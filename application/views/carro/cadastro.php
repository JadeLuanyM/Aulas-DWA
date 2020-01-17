<div class="container mt-5">
<br><br>
    <h2 class="text-center">Cadastro de Veículos</h2><br />

    <form method="POST" class="text-center border border-light p-5 col-md-6 mx-auto" >

        <input required name="carro[marca]" type="text"  class="form-control mb-2" placeholder="Marca">
        <input required name="carro[modelo]" type="text" class="form-control mb-2" placeholder="Modelo" >
        <input required name="carro[ano]" type="number"  class="form-control mb-2" placeholder="Ano">
        <input required name="carro[cor]" type="text"  class="form-control mb-2" placeholder="Cor" >

        <button class="btn my-4 btn-block btn-danger" type="submit">Enviar</button>

    </form>
</div>