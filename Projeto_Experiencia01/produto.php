<html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/tabelas.css">
    <title>Produto</title>
</head>
<body>
    <a href="index.php" id="voltar">voltar</a>
    <table border=1 class='produto'>
        <tr>
            <td id="teste">Nome</td>
            <td id="teste">Quantidade</td>
            <td id="teste">Descrição</td>
        </tr>

        <?php       
        //abre o PHP     
            include "tabelafluxo.php";
            tabelaproduto();
        //Fecha o PHP
        ?>

    </table><!--Fecha a table 'produto'-->
    
</body>
</html>