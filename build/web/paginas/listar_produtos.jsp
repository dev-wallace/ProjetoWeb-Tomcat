

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
        String i;
        PreparedStatement st;
        ResultSet resultado;
 
       
        //Conectar com o banco de dados
        
        
        //aponta para a biblioteca JDBC
         Class.forName("com.mysql.cj.jdbc.Driver");
         
        conecta = DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "root", "p@$$wo0rd");
        //Enviar os dados recebidos para a tabela do banco de dados

        //verificar se o produto com o id inforado esta na tebela do banco de dapds 
        st = conecta.prepareStatement("SELECT * FROM produtos");
        //percorre a varievel resultado exibindo cada linha do produto

        resultado = st.executeQuery(); 
        //Esse comando executa o comando SELECT na tabela do BD

     out.print("<table border=1");
     out.print("<tr><th>ID</th <th>nome</th <th>preco</th <th>data de fabricacao</th> </tr>");

        while(resultado.next()){
            out.print("<tr><id>"+resultado.getString("id")+"</td><td>"+resultado.getString("nome")+"</td><td>"+resultado.getString("marca")+"</td><td>"+resultado.getString("preco")+"</td><td>"+resultado.getString("data_fab")+"</td></tr>");


            
        }
        out.print("</table> ");
      
        

       
        
        %>
        
        

    </body>
</html>
