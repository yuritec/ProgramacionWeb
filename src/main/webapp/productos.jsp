<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Productos - Glimm & Glam</title>

        <link rel="stylesheet" href="css/estilos.css"> 
        <link rel="stylesheet" href="css/productos.css"> 
    </head>

    <body>

        <header class="barra-navegacion">
            <div class="contenedor-header">
                <div class="menu-toggle" onclick="toggleMenu()">☰</div>
                <div class="botones-izquierda">
                    <a href="#" class="btn">Cerrar Sesión</a>
                </div>
            </div>

            <nav class="menu-hamburguesa" id="menuHamburguesa">
                <ul>
                    <li><a href="productos.jsp?filtro=Marca">Marca</a></li>
                    <li><a href="productos.jsp?filtro=Rostro">Rostro</a></li>
                    <li><a href="productos.jsp?filtro=Labios">Labios</a></li>
                    <li><a href="productos.jsp?filtro=Ojos">Ojos</a></li>
                    <li><a href="productos.jsp?filtro=Pestañas">Pestañas</a></li>
                    <li><a href="productos.jsp?filtro=Cejas">Cejas</a></li>
                    <li><a href="productos.jsp?filtro=Skincare">Skincare</a></li>
                    <li><a href="productos.jsp?filtro=Brochas">Brochas</a></li>
                    <li><a href="productos.jsp?filtro=Sets">Sets</a></li>
                    <li><a href="productos.jsp?filtro=Accesorios">Accesorios</a></li>
                    <li><a href="productos.jsp?filtro=Todo">Ver todo</a></li>
                     <li><a href="index.jsp">Nosotros</a></li>
                    <%
                        String rol = (String) session.getAttribute("rol");
                        if ("administrador".equals(rol)) {
                    %>
                        <li><a href="tablasProductos.jsp">Tablas Productos</a></li>
                        <li><a href="tablasUsuarios.jsp">Tablas Usuarios</a></li>
                    <%
                        }
                    %>
                </ul>
            </nav>
        </header>

        <main class="productos-contenedor">
            <h1 class="titulo-productos">Nuestros Productos</h1>

            <div class="grid-productos">

                <div class="card-producto">
                    <img src="Imagenes/producto1.jpg" alt="Este producto es un ejemplo static">
                    <p class="nombre-producto">Ejemplo static</p>
                    <p class="precio-producto">$199.00 MXN</p>
                    <a href="#" class="btn-agregar">Agregar al carrito</a>
                </div>

                <div class="card-producto">
                    <img src="Imagenes/producto2.jpg" alt="Este producto es un ejemplo static">
                    <p class="nombre-producto">Ejemplo static</p>
                    <p class="precio-producto">$349.00 MXN</p>
                    <a href="#" class="btn-agregar">Agregar al carrito</a>
                </div>
            </div>
        </main>
        <footer>
            <h2>Contáctanos</h2>
            <img src="Imagenes/contacto.jpg" alt="Contacto" width="300">
            <p>
                Escríbenos a atencion@GlimmGlam.com<br>
                Llámanos al 800-737-4072<br>
                Lunes a Domingo de 8 am a 8 pm
            </p>
        </footer>

        <script src="js/index.js"></script>
    </body>
</html>
