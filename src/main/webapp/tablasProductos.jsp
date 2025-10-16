<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tablas Productos</title>
        <link rel="stylesheet" href="css/formulario.css">
    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="titulo">
                <h1>Glimm & Glam</h1>
                <p>Maquíllate como reina, brilla como diosa</p>
            </div>
        </header>

        <!-- Barra de opciones -->
        <div class="opciones-barra">
            <a href="#alta">Registrar</a>
            <a href="#modificar">Modificar</a>
            <a href="#eliminar">Eliminar</a>
            <a href="<%= request.getContextPath() %>/index.jsp"  class="flecha-inicio">← Inicio</a>
        </div>

        <!-- Formulario Alta -->
        <section id="alta" class="form-seccion">
            <form action="ProductoServlet" method="post">
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
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Guardar</button></td></tr>
                </table>
            </form>
        </section>

        <!-- Formulario Modificar -->
        <section id="modificar" class="form-seccion">
            <form action="ProductoServlet" method="post">
                <h2>Modificar Producto</h2>
                <input type="hidden" name="accion" value="modificar">
                <table>
                    <tr><td>ID Producto:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td>Nuevo Precio:</td><td><input type="text" name="precio"></td></tr>
                    <tr><td>Nuevo Stock:</td><td><input type="text" name="stock"></td></tr>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Modificar</button></td></tr>
                </table>
            </form>
        </section>

        <!-- Formulario Eliminar -->
        <section id="eliminar" class="form-seccion">
            <form action="ProductoServlet" method="post">
                <h2>Eliminar Producto</h2>
                <input type="hidden" name="accion" value="eliminar">
                <table>
                    <tr><td>ID Producto:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Eliminar</button></td></tr>
                </table>
            </form>
        </section>
        
        <footer style="background:#3c0b1a; color:white; text-align:center; padding:20px;">
                <h2>Contáctanos</h2>
                <img src="Imagenes/contacto.jpg" width="50" height="50" alt="Contacto">
                <p style="font-weight:bold; text-decoration: underline;">
                            Contáctanos Escríbenos a atencion@Glim&Glam.com<br>
                            o Llámanos al 800-737-4072<br>
                            Lunes a Domingo de 8 am a 8 pm
                </p> 
        </footer>
    <script src="js/tablasProductos.js"></script>
    </body>
    
</html>
