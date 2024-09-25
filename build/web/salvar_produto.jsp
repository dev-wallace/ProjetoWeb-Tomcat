<%-- 
    Document   : salvar_produtos
    Created on : 17 de set. de 2024, 09:32:39
    Author     : jefferson.etokura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        String n, m, d;
        int i;
        double p;
        PreparedStatement st;
        ResultSet resultado;
        //Receber os dados digitados no formulário
        i = Interger.parseint(request.getParameter("id"));
        n = request.getParameter("nome");
        m = request.getParameter("marca");
        p = Double.parseDouble(request.getParameter("preco"));
        d = request.getParameter("data_fab");
        
        //Conectar com o banco de dados
        Class.forName("com.mysql.cj.jdbc.Driver");//aponta para a biblioteca JDBC
        conecta = DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "root", "p@$$w0rd");
        //Enviar os dados recebidos para a tabela do banco de dados
        st = conecta.prepareStatement("INSERT INTO usuarios VAlUES(?,?,?)");
        st.setint(1,i);
        st.setString(2,n);
        st.setString(3,m);
        st.setDouble(4,p);
        st.setString(5, d);
        st.executeUpdate();//Esse comando executa o comando INSERT na tabela do BD
        //Informar o usuário que os dados foram gravados
        out.print("Usuário cadastrado com sucesso");
        
        %>
        
      
    </body>
</html>