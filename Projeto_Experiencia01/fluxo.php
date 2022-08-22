<html>
<head>
    <meta charset="UTF-8">
    <title>Fluxo de Estoque</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" defer></script>
    <script src="fluxo.js" defer></script>
    <link rel="stylesheet" href="css/tabelas.css">
</head>
<body> 
    <a href="index.php" id="voltar">voltar</a>
    <div class="top">
        <input type="number" id="quantidade" placeholder="quantidade" required>
        <select id="tipo">
            <option value="0">Entrada</option>
            <option value="1">Saida</option>
        </select>
        <select id="produto">
            <?php
                include "tabelafluxo.php";
                selecionar();//cria as opções do select
            ?>
        
        </select>
        <button id="btn_gravar">Gravar</button>
        <hr>
    </div>
    <div class="cont">
        <div class="tab">
            <table border=1 class='fluxo'>
                <tr>
                    <td id="teste">Nome Produto</td>
                    <td id="teste">Tipo</td>
                    <td id="teste">Quantidade</td>
                    <td id="teste">Data</td>
                    <td id="teste">Hora</td>
                </tr>
                <?php
                    tabelafluxo();
                ?>
            </table>
        </div>
    </div>
</body>
</html>