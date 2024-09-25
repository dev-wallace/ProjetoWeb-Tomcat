<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
</head>
<body>
    <%
        Connection conecta = null;
        PreparedStatement st = null;
        ResultSet resultado = null;
        String u = request.getParameter("user");
        String s = request.getParameter("password");
        
            // Carrega o driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Estabelece a conexão com o banco de dados
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/empresa", "root", "root");
            
            // Prepara a consulta SQL
            String sql = "SELECT * FROM usuarios WHERE usuario = ? AND senha = ?";
            st = conecta.prepareStatement(sql);
            st.setString(1, u);
            st.setString(2, s);
            
            // Executa a consulta
            resultado = st.executeQuery();
            
            // Verifica se o resultado contém algum registro
            if (resultado.next()) {
              response.sendRedirect("paginas/restrito.jsp?nome=" + resultado.getString("nome"));
            } else {
                out.println("Usuário e/ou senha inválidos.");
              
            }
            
 
        
    %>
     
    <p>
                <a href="index.html">Logar</a>
            </p>
             <p>
               <a href="paginas/cadastrese.html">Cadastre-se</a>
            </p>
</body>
</html>
