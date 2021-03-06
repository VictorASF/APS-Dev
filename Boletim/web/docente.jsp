<%-- 
    Document   : docente
    Created on : 29/10/2020, 23:04:11
    Author     : vfonseca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles_docente.css">
    <title>Espaço Docente</title>

</head>
<body>
    <div class='box-master'>
        <h1>Espaço Docente</h1>
        <h2>Controle de Notas</h2>
        <div class="box-docente">
            <div class='box-docente-parent-create'>
                <h3>Adicionar</h3>
                <form action=""> 
                    <label>Matricula do aluno:</label>
                    <input type="text" name="matricula" placeholder="Matricula">
                    <label>Avaliação</label>
                    <div class="box-docente-parent-radio">
                        <input type="radio" name="avaliacao" value='av1' >
                        <label class="radio-box">AV1</label>
                        <input type="radio" name='avaliacao' value='av2'>
                        <label class="radio-box">AV2</label>
                        <input type="radio" name='avaliacao' value='av3'>
                        <label class="radio-box">AV3</label>
                    </div>
                    <input type="text" name="nota" class="nota" placeholder="Nota">
                    <button>Adicionar Nota</button>
                </form>
            </div>
            <div class="box-docente-parent-read">
                <h3>Visualizar</h3>
                <form action="">
                    <label>Matricula do aluno:</label>
				    <input type="text" name="matricula" placeholder="Matricula">
				    <label>Todas as notas</label>
                    <button>Visualizar Nota</button>
                </form>
            </div>
            <div class="box-docente-parent-update">
                <h3>Alterar</h3>
                <form action="">
                    <label>Matricula do aluno:</label>
                    <input type="text" name="number" placeholder="Matricula">
                    <label>Avaliação</label>
				    <div class="box-docente-parent-radio">
                        <input type="radio" name="avaliacao" value='av1' >
                        <label class="radio-box">AV1</label>
                        <input type="radio" name='avaliacao' value='av2'>
                        <label class="radio-box">AV2</label>
                        <input type="radio" name='avaliacao' value='av3'>
                        <label class="radio-box">AV3</label>
                    </div>
                    <input type="text" name="nota" class="nota" placeholder="Nota">
                    <button>Alterar Nota</button>
                </form>
            </div>
            <div class="box-docente-parent-delete">
                <h3>Deletar</h3>
                <form action="">
                    <label>Matricula do aluno:</label>
				    <input type="text" name="number" placeholder="Matricula">
				    <label>Avaliação</label>
				    <div class="box-docente-parent-radio">
                        <input type="radio" name="avaliacao" value='av1' >
                        <label class="radio-box">AV1</label>
                        <input type="radio" name='avaliacao' value='av2'>
                        <label class="radio-box">AV2</label>
                        <input type="radio" name='avaliacao' value='av3'>
                        <label class="radio-box">AV3</label>
                    </div>
                    <button>Excluir Nota</button>
                </form>
            </div>
        </div>
            <div class="box-docente-bottom-parent-dashboard">
                <button><a target='_self' href="dashboard.jsp">Acesso DashBoard</a></button>
            </div>
    </div>
</body>
</html>
