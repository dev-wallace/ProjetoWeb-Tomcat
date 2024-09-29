<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Descrição do meu site. Aqui você pode se cadastrar e salvar produtos.">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <link rel="stylesheet" href="../paginas/restrito.css">
    
    <title>Meu Site</title>
    <link rel="icon" href="caminho/para/seu/favicon.ico" type="image/x-icon">
</head>
<body>
    <header>
        <nav class="navegation">
            
            
            <span id="welcome_text">Bem-vindo de volta!</span>
            
           
            <span id="user-name">
                <%
                    String nome = request.getParameter("nome");
                    out.print(nome);
                %>
            </span>
            <img src="img_paginas/pngfind.com-pokemon-mew-png-6847790.png" id="nav_logo" alt="Logo">
       

            
            <ul id="nav_list">

                <li class="nav-item">
                    <a href="cadastrese.html">Cadastrar usuario</a>
                </li>
                <li class="nav-item">
                    <a href="salvar_produto.html">Salvar produto</a>
                </li>
                <li class="nav-item">
                    <a href="../index.html">Sair</a>
                </li>
            </ul>
        </nav>
    </header>
</body>
</html>
