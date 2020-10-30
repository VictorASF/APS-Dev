<%-- 
    Document   : index
    Created on : 29/10/2020, 21:19:08
    Author     : vfonseca
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
    margin: 0px;
}

.box-parent-login{
    box-shadow: 1px 1px 5px #ccc;
    background-color: white;
    width: 300px;
    height: 300px;
    border-radius: 10px ;
}
.box-login{
    width: 100vw;
    height: 100vh;
    background: #FFFAF0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.box-parent-top{
    display: flex;
    flex-direction: row;
    justify-content: center;
    height: 100px;
}
label{
    width: 100%;
    display: block;
    padding-bottom: 5px;
    padding-top: 5px;
}
input{
    margin-bottom: 5px;
}
button{
    margin: 5px;
    border: none;
    text-align: center;
    text-decoration: none;
    padding: 3px;
}
a{
    text-decoration: none;
}

.box-parent-bottom{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
}
p{
    font-size: 10px;
}
        </style>
	<title>Login</title>
        
</head>
<body>
	<!--FEITO POR : 
		VICTOR AUGUSTO DE SOUZA FONSECA -   2017200563
		DIEGO PATRICK FERNANDES BASTOS - 	2017200538
		ERICK NOGUEIRA GONÇALVES DA SILVA - 2017201090
		RENAN AMORIM DA SILVA - 			2017200561
	-->
	<p>
		FEITO POR : 
		VICTOR AUGUSTO DE SOUZA FONSECA -   2017200563
		DIEGO PATRICK FERNANDES BASTOS - 	2017200538
		ERICK NOGUEIRA GONÇALVES DA SILVA - 2017201090
		RENAN AMORIM DA SILVA - 2017200561
	</p>
	<div class="box-login">
		<div class="box-parent-login">
			<form method="POST" action="Servelet">
				<div class="box-parent-top">
					<h2>Login</h2>
				</div>
				<div class="box-parent-bottom">
					<label>Matricula</label>
					<input type="text" name="number">
					<label>Senha</label>
					<input type="password" name="senha">
                                        <button type="submit">Login</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
