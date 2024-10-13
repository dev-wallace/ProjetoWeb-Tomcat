<%-- 
    Document   : cadastrar_usuario.jsp
    Created on : 17 de set. de 2024, 09:32:39
    Author     : jefferson.etokura
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        
        <%
            
        //Declara as variáveis
        Connection conecta;
        String u, s, n;
        PreparedStatement st;
        
        
        //Receber os dados digitados no formulário
        u = request.getParameter("usuario");
        s = request.getParameter("senha");
        n = request.getParameter("nome");
        //Conectar com o banco de dados
        
        
        //aponta para a biblioteca JDBC
         Class.forName("com.mysql.cj.jdbc.Driver");
         
      conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/empresa", "root", "root");
        //Enviar os dados recebidos para a tabela do banco de dados
        
        st = conecta.prepareStatement("INSERT INTO usuarios (usuario, senha, nome) VALUES (?, ?, ?)");

        st.setString(1,u);
        st.setString(2,s);
        st.setString(3,n);
        st.executeUpdate();
        out.print("Usuário cadastrado com sucesso");
        
        %>
        
        

    </body>
</html>