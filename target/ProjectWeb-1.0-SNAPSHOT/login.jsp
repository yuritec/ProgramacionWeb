<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glimm & Glam - Login</title>

    <link rel="stylesheet" href="css/login.css">
</head>

<body>

    <section class="pantalla pantalla-login">

        <% 
            String error = (String) request.getAttribute("error");
            String success = (String) request.getAttribute("success");
        %>

        <% if (success != null) { %>
        <div class="message-container">
            <div class="alert alert-success"><%= success %></div>
        </div>
        <% } %>

        <header>
            <a href="index.jsp" class="back-btn"></a>
        </header>

        <h2>Inicio de sesión</h2>

        <form class="login-form" method="post" action="LoginServlet">
            <label>Correo electrónico</label>
            <input type="email" name="email" placeholder="Correo electrónico" required>

            <label>Contraseña</label>
            <input type="password" name="password" placeholder="Contraseña" required>

            <button type="button" class="btn-amarillo" onclick="window.location='index.jsp'">
                Iniciar sesión
            </button>


            <% if (error != null) { %>
                <p style="color:red; text-align:center;"><%= error %></p>
            <% } %>

            <a href="recovery.jsp" class="olvide">¿Olvidaste tu contraseña?</a>
        </form>
    </section>

</body>

</html>
