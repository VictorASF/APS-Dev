<%-- 
    Document   : dashboard
    Created on : 29/10/2020, 23:07:00
    Author     : vfonseca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles_dashboard.css">
    <title>DashBoard</title>
</head>
<body>
    <div class='box-mmm'>
        <div id='chart_div' class="box-chart"></div>
        <div id='chart_maiorMenor' class='box-chart'></div>          
        <div id='chart_notasAV1' class='box-chart'></div>    
        <div id='chart_notasAV2' class='box-chart'></div>
        <div id='chart_notasAV3' class='box-chart'></div> 
        <div id='chart_desvio' class='box-chart'></div>
        <div id='chart_hist' class='box-chart'></div>  
        
        
    </div>
    <script type="text/javascript" src='https://www.gstatic.com/charts/loader.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js"></script>
    <script type="text/javascript">
        let notasAV1 = [10, 6, 4, 8, 9]
        let notasAV2 = [7, 8, 8.6, 7, 8]    
        let notasAV3 = [8, 9.5, 9, 6, 8.5]
        function media(notas){
            let soma = 0 
            for(let i in notas){
                soma += notas[i];
            }
            return soma/notas.length
        }
        function desvioPadrao(med,notas){
            let desvio = 0
            for(let i in notas){
                soma = Math.pow(notas[i]-med, 2);
                desvio = desvio + soma;
            }
            
            desvio = desvio/notas.length
            desvio = Math.sqrt(desvio,2)
            return desvio
        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart(){
            const data = new google.visualization.arrayToDataTable([
                ['Avaliação', 'Nota-Media'],
                ['AV1', media(notasAV1)],
                ['AV2', media(notasAV2)],
                ['AV3', media(notasAV3)],
            ]);
            
            const options = {
            vAxis: {
                title: 'Nota media por avaliação'
                }
            };
            
            const chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart2);
        function drawChart2(){
            const maiorMenor = new google.visualization.arrayToDataTable([
                ['Avaliação', 'Maior','Menor'],
                ['AV1', _.max(notasAV1), _.min(notasAV1)],
                ['AV2', _.max(notasAV2), _.min(notasAV2)],
                ['AV3', _.max(notasAV3), _.min(notasAV3)],
            ]);
            
            const options = {
            vAxis: {
                title: 'Maior e menor nota por avaliação'
                }
            };
            
            const chart = new google.visualization.ColumnChart(document.getElementById('chart_maiorMenor'));
            chart.draw(maiorMenor, options);
        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart3);
        function drawChart3(){
            const data = google.visualization.arrayToDataTable([
               ['Matricula', 'Nota'],
               ['2017200563',  10],
               ['2017200562',  6],
               ['2017100432',  4],
               ['2015200679', 8],
               ['2016101456',  9],
            ]);

            const options = {title: 'Notas por Matricula (AV1)'};
            const chart = new google.visualization.BarChart(document.getElementById('chart_notasAV1'));
            chart.draw(data, options);
        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart4);
        function drawChart4(){
            const data = google.visualization.arrayToDataTable([
               ['Matricula', 'Nota'],
               ['2017200563',  7],
               ['2017200562',  8],
               ['2017100432',  8.6],
               ['2015200679', 7],
               ['2016101456',  8],
            ]);

            const options = {title: 'Notas por Matricula (AV2)'};
            const chart = new google.visualization.BarChart(document.getElementById('chart_notasAV2'));
            chart.draw(data, options);
        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart5);
        function drawChart5(){
            const data = google.visualization.arrayToDataTable([
               ['Matricula', 'Nota'],
               ['2017200563',  8],
               ['2017200562',  9.5],
               ['2017100432',  9],
               ['2015200679', 6],
               ['2016101456',  8.5],
            ]);

            const options = {title: 'Notas por Matricula (AV3)'};
            const chart = new google.visualization.BarChart(document.getElementById('chart_notasAV3'));
            chart.draw(data, options);

        }
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart6);
        function drawChart6(){
            const data = new google.visualization.arrayToDataTable([
                ['Avaliação', 'Desvio Padrão'],
                ['AV1', desvioPadrao(media(notasAV1),notasAV1)],
                ['AV2', desvioPadrao(media(notasAV2), notasAV2)],
                ['AV3', desvioPadrao(media(notasAV3), notasAV3)],
            ]);
            
            const options = {
            vAxis: {
                title: 'Desvio Padrão da turma toda'
                }
            };
            
            const chart = new google.visualization.ColumnChart(document.getElementById('chart_desvio'));
            chart.draw(data, options);
        
        }

        google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart7);
      function drawChart7() {
        var data = google.visualization.arrayToDataTable([
            ['Media aluno', 'Nota'],
            ['2017200563',  8.3],
            ['2017200562',  7.8],
            ['2017100432',  7.2],
            ['2015200679',  7],
            ['2016101456',  8.5],
        ])
         

        var options = {
          title: 'Media dos Alunos por matricula',
          legend: { position: 'none' },
        };

        var chart = new google.visualization.Histogram(document.getElementById('chart_hist'));
        chart.draw(data, options);
        }
    </script>
</body>
</html>
