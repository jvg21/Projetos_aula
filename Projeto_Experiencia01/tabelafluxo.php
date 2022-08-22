<?php

function selecionar(){
    $Conexao = mysqli_connect("localhost:3306","root","","experiencia3");
    $Sql = "SELECT ID_Produto,Nome_Produto FROM produtos";
    $Resultado = mysqli_query($Conexao,$Sql);
    while($Row = mysqli_fetch_assoc($Resultado)){
        echo"<option value=".$Row["ID_Produto"].">".$Row["Nome_Produto"]."</option>";    
    }

}
function tabelafluxo(){
    $Conexao = mysqli_connect("localhost:3306","root","","experiencia3");
    $Sql = "SELECT * FROM fluxo,produtos where produtos.ID_Produto = fluxo.ID_Produto ORDER BY fluxo.ID_Fluxo DESC";
    $resultado = mysqli_query($Conexao,$Sql);

    while ($Row = mysqli_fetch_assoc($resultado))
    {

    $olddate = $Row["DataF"];  
    $newdate = date("d/m/Y", strtotime($olddate));  
    $oldtime = $Row["Hora"];
    $newtime = date("H:i", strtotime($oldtime));

    echo "<tr>
            <td>".$Row["Nome_Produto"]."</td>
            <td>".$Row["Tipo_Fluxo"]."</td>
            <td>".$Row["Quantidade"]."</td>
            <td>$newdate</td>
            <td>$newtime</td>
            </tr>";
    }
}
function tabelaproduto(){
    $conexao = mysqli_connect("localhost:3306","root","","experiencia3");
    $select = "SELECT * FROM produtos";
    $resultado = mysqli_query($conexao,$select);//Query com o banco

    while ($Row = mysqli_fetch_assoc($resultado))
    {
        echo "<tr> 
                <td>".$Row["Nome_Produto"]."</td>
                <td>".$Row["Qntd_Estoque"]."</td>
                <td>".$Row["Descricao"]."</td>
            </tr>";//cria as linhas na tabela
    }
}
?>