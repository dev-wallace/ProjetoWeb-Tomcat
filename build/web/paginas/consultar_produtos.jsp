

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
        //Receber o ID digitados no formulário
        i = request.getParameter("id");
       
        //Conectar com o banco de dados
        
        
        //aponta para a biblioteca JDBC
         Class.forName("com.mysql.cj.jdbc.Driver");
         
        conecta = DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "root", "p@$$wo0rd");
        //Enviar os dados recebidos para a tabela do banco de dados

        //verificar se o produto com o id inforado esta na tebela do banco de dapds 
        st = conecta.prepareStatement("SELECT * FROM produtos WHERE id=?" );
        st.setString(1,i);
        resultado = st.executeQuery(); 
        //Esse comando executa o comando SELECT na tabela do BD
      
  //Informar o usuário que os dados foram gravados
        if(resultado.next()){
            out.print("ID"+resultado.getString("id")+"<br>");
             out.print("Nome"+resultado.getString("nome")+"<br>");
              out.print("Marca"+resultado.getString("marca")+"<br>");
               out.print("Preço"+resultado.getString("preco")+"<br>");
               out.print("Data de fabricaçao"+resultado.getString("data_fab"));
        }
       else{
        ou.print("Produto nao cadastrado")
       }
        
       
        
        %>
        
        

    </body>
</html>