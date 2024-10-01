<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Connection conecta = null;
             PreparedStatement st = null;
             
        
        
          /* Declaração de variaveis*/
       

      
            
          //Declara as variaveis
          String n, m , d;
          int i;
          double p;
          
          // Receber o usuario e a senha
          i = Integer.parseInt(request.getParameter("id"));
          n = request.getParameter("nome");
          m = request.getParameter("marca");
          p = Double.parseDouble(request.getParameter("preco"));
          d = request.getParameter("data_fab");
          
       try{

      
          /* Conectar com o banco de dados */
          Class.forName("com.mysql.cj.jdbc.Driver");// aponta para a biblioteca JDBC
          conecta = DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "root", "p@$$w0rd");
          
          /* Verificar se o usuario esta armazenado na tabela do banco de dados*/
           st = conecta.prepareStatement("INSERT INTO produtos (id, nome, marca, preco, data_fab) VALUES (?, ?, ?, ?, ?)");
                 
          st.setInt(1,i);
          st.setString(2,n);
          st.setString(3,m);
            st.setDouble(4,p);
          st.setString(5,d);
          
          st.executeUpdate();// executa o INSET na tabela do DB
          
          //Informar o usuarios que os dados foram gravados
          out.print("Produtos adicionado com sucesso");

           }catch(SQLException erro){
            if(erro.getMassage().contains("Duplicate entry")){
                out.print("esse produto ja esta cadastrado")
            }else{
                 out.print("ERRO: ntre em contato com admin")

            }
           }
    
  
    %>   
    <p> 
    
    </body>
</html>
