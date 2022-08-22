<?php
    date_default_timezone_set('America/Sao_Paulo');
    $Conexao = mysqli_connect("localhost:3306","root","","experiencia3");
    
    $ID = $_POST["ID_Produto"];
    $Quantidade = $_POST["Quantidade"];
    $Tipo = $_POST["Tipo_Fluxo"];
    $Data = date('Y-m-d');
    $Time = date('H:i:s');
    $Time = date('H:i:s', strtotime($Time));

    if ($Tipo==0){
        $Tipo = "Entrada";
    } 
    elseif ($Tipo==1){
        $Quantidade = $Quantidade*(-1);
        $Tipo = "Saída";
    }

    //Busca a quantidade em estoque
    $Sql = "SELECT Qntd_Estoque FROM produtos WHERE ID_Produto = $ID";
    $Resultado = mysqli_query($Conexao,$Sql);
    while($Row = mysqli_fetch_assoc($Resultado)){
        $Qntd_Estoque = $Row["Qntd_Estoque"];
    }

    //Calculo de quanto resta no estoque
    $Quantidade_Estoque = $Qntd_Estoque + $Quantidade;

    //Atualiza a tabela produto
    $Sql = "UPDATE produtos SET Qntd_Estoque = $Quantidade_Estoque WHERE ID_Produto = $ID";
    $Resultado = mysqli_query($Conexao,$Sql);

    //Insere o registro do entrada/saida
    $Sql = "INSERT INTO fluxo (ID_Produto,Tipo_Fluxo,Quantidade,DataF,Hora) VALUES ($ID,'$Tipo',$Quantidade,'$Data','$Time')";
    $Resultado = mysqli_query($Conexao,$Sql);


?>