<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Connection conecta = null;
             PreparedStatement st = null;
             
        
        
         
       

      
            
          //Declara as variaveis
         
          int i;
         
          
          // Receber o usuario e a senha
          i = Integer.parseInt(request.getParameter("id"));

          
       
          /* Conectar com o banco de dados */
          Class.forName("com.mysql.cj.jdbc.Driver");// aponta para a biblioteca JDBC
          conecta = DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "root", "p@$$w0rd");
          
          /* ecluir produtos do banco de dados*/
           st = conecta.prepareStatement("DELETE FROM produto WHERE  ID=?");
                
         int status = st.executeUpdate();// executa o DELTE na tabela do DB
        if (status == 1) {
            out.print("Produto excluído com sucesso.");
        } else {
            out.print("Produto não encontrado.");
        }
          
          //Informar o usuarios que os dados foram gravados
          out.print("Produtos adicionado com sucesso");
  
    %>   
    <p> 
    
    </body>
</html>
