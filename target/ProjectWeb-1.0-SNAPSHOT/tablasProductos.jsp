<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tablas Productos</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/formulario.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/tablasProductos.js"></script>
    </head>
    
    <body>
        <%
            String accion = request.getParameter("accion");
            String mensaje = null;

            if ("alta".equals(accion)) {
                mensaje = "Producto registrado con éxito";
            } else if ("modificar".equals(accion)) {
                mensaje = "Producto modificado con éxito";
            } else if ("eliminar".equals(accion)) {
                mensaje = "Producto eliminado con éxito";
            }
        %>

        <header class="barra-navegacion">
            <div class="contenedor-header">
                <div class="menu-toggle" onclick="toggleMenu()">☰</div>
                <div class="titulo">
                    <h1>Glimm & Glam</h1>
                    <p>Maquíllate como reina, brilla como diosa</p>
                </div>          
            </div>

            <nav class="opciones-barra">
                <a href="#alta" class="btn">Registrar</a>
                <a href="#modificar" class="btn">Modificar</a>
                <a href="#eliminar" class="btn">Eliminar</a>
            </nav>

            <nav class="menu-hamburguesa" id="menuHamburguesa">
                <ul>
                    <li><a href="marca.jsp">Marca</a></li>
                    <li><a href="rostro.jsp">Rostro</a></li>
                    <li><a href="labios.jsp">Labios</a></li>
                    <li><a href="ojos.jsp">Ojos</a></li>
                    <li><a href="pestanas.jsp">Pestañas</a></li>
                    <li><a href="cejas.jsp">Cejas</a></li>
                    <li><a href="skincare.jsp">Skincare</a></li>
                    <li><a href="brochas.jsp">Brochas</a></li>
                    <li><a href="sets.jsp">Sets</a></li>
                    <li><a href="accesorios.jsp">Accesorios</a></li>
                    <li><a href="index.jsp">Nosotros</a></li>
                </ul>
            </nav>
        </header>

        <!-- Formulario Alta -->
        <section id="alta" class="form-seccion">
            <form method="post">
                <h2>Registrar Producto</h2>
                <input type="hidden" name="accion" value="alta">
                <table>
                    <tr><td>Nombre:</td><td><input type="text" name="nombre" required></td></tr>
                    <tr><td>Marca:</td><td><input type="text" name="marca" required></td></tr>
                    <tr><td>Descripción:</td><td><textarea name="descripcion"></textarea></td></tr>
                    <tr><td>Precio:</td><td><input type="text" name="precio" required></td></tr>
                    <tr><td>Stock:</td><td><input type="text" name="stock" required></td></tr>
                    <tr><td>Categoría:</td>
                        <td>
                            <select name="id_categoria">
                                <option value="2">Rostro</option>
                                <option value="3">Cejas</option>
                                <option value="4">Labios</option>
                                <option value="5">Pestañas</option>
                                <option value="6">Ojos</option>
                                <option value="7">Brochas</option>
                                <option value="8">Sets</option>
                                <option value="9">Skincare</option>
                                <option value="10">Accesorios</option>
                            </select>
                        </td>
                    </tr>
                    <div class="mensaje-validacion" style="display:none;"></div>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Guardar</button></td></tr>
                </table>
            </form>
        </section>

        <!-- Formulario Modificar -->
        <section id="modificar" class="form-seccion">
            <form method="post">
                <h2>Modificar Producto</h2>
                <input type="hidden" name="accion" value="modificar">
                <table>
                    <tr><td>ID Producto:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td>Nuevo Precio:</td><td><input type="text" name="precio"></td></tr>
                    <tr><td>Nuevo Stock:</td><td><input type="text" name="stock"></td></tr>
                    <div class="mensaje-validacion" style="display:none;"></div>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Modificar</button></td></tr>
                </table>
            </form>
        </section>

        <!-- Formulario Eliminar -->
        <section id="eliminar" class="form-seccion">
            <form method="post">
                <h2>Eliminar Producto</h2>
                <input type="hidden" name="accion" value="eliminar">
                <table>
                    <tr><td>ID Producto:</td><td><input type="text" name="id" required></td></tr>
                    <div class="mensaje-validacion" style="display:none;"></div>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Eliminar</button></td></tr>
                </table>
            </form>
        </section>

        <footer>
            <h2>Contáctanos</h2>
            <img src="Imagenes/contacto.jpg" alt="Prueba de imagen" width="300">
            <p>
                Contáctanos Escríbenos a atencion@GlimmGlam.com<br>
                o Llámanos al 800-737-4072<br>
                Lunes a Domingo de 8 am a 8 pm
            </p>
        </footer>
        <script>
            var mensaje = "<%= mensaje != null ? mensaje : "" %>";
        </script>
    </body>

</html>
