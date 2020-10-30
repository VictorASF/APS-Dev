function createTable(conteudo){
    var table = document.createElement("table");
    var thead = document.createElement("thead"); 
    thead.innerHTML =['<thead>','<tr>', 
        '<th colspan="5" class="table-parent-head">','"Nome Do Aluno"','</th>', 
        '</tr>',
        '</thead>'].join("\n");
    var tbody = document.createElement("tbody");
    var thd=function(i){return (i==0)?"th":"td";};
    for (var i=0; i<conteudo.length;i++){
        var tr = document.createElement("tr");
        for(var o=0;o<conteudo[i].length;o++){
            var t = document.createElement(thd(i));
            var texto = document.createTextNode(conteudo[i][o]);
            t.appendChild(texto);
            tr.appendChild(t);

        }
        tbody.appendChild(tr);
    }
    table.appendChild(thead);
    table.appendChild(tbody);
    return table;
}
document.getElementById("tabela").appendChild(createTable([
    ["Disciplinas", "A1", "A2", "A3", "Media"],
    ["Matematica", 10.0, 9.8, 5.0, 8.26],
    ["Matematica", 10.0, 9.8, 5.0, 8.26],
    ["Matematica", 10.0, 9.8, 5.0, 8.26],
    ["Matematica", 10.0, 9.8, 5.0, 8.26]
]));