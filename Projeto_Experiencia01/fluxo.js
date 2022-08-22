document.getElementById("btn_gravar").onclick = function gravar(){
    $.ajax({
        type:"POST",
        url:"gravar.php",
        data:{
            "ID_Produto":document.getElementById("produto").value,
            "Tipo_Fluxo":document.getElementById("tipo").value,
            "Quantidade":document.getElementById("quantidade").value
        }
    })

    document.getElementById("quantidade").value = "";
    alert("gravado");
    window.location.reload();

}
