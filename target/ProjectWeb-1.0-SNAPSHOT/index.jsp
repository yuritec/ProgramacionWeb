
<%@ page import="projectWeb.DBManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Glimm & Glam</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/formulario.css">
    </head>
    <body>

        <!-- Encabezado -->
        <header style="background:#3c0b1a; color:white; padding:15px; display:flex; align-items:center; justify-content:center;">
            <!-- <div class="logo" style="margin-right:20px;">
                <img src="Imagenes/logo.png" alt="Glimm & Glam" height="60">-->
            <div class="titulo" style="text-align:center;">
                <h1 style="margin:0;">Glimm & Glam</h1>
                <p style="margin:0;">Maquillate como reina, brilla como diosa con Glim & Glam</p>
            </div>
        </header>

        <!-- Contenedor principal -->
        <div style="display:flex; min-height:80vh;">

            <!-- Menú lateral -->
            <div class="menu-lateral" style="text-align:center;">
                    <h2>Menú</h2>
                    <a href="#nosotros"><b>Nosotros</b></a><br><br>
                    <a href="#marcas"><b>Marcas</b></a><br><br>
                    <a href="#rostro"><b>Rostro</b></a><br><br>
                    <a href="#cejas"><b>Cejas</b></a><br><br>
                    <a href="#labios"><b>Labios</b></a><br><br>
                    <a href="#pestanas"><b>Pestañas</b></a><br><br>
                    <a href="#ojos"><b>Ojos</b></a><br><br>
                    <a href="#brochas"><b>Brochas</b></a><br><br>
                    <a href="#sets"><b>Sets</b></a><br><br>
                    <a href="#skincare"><b>Skincare</b></a><br><br>
                    <a href="#accesorios"><b>Accesorios</b></a><br><br>
                    <a href="#alta"><b>Registrar Producto</b></a><br><br>
                    <a href="#modificar"><b>Modificar Producto</b></a><br><br>
                    <a href="#eliminar"><b>Eliminar Producto</b></a><br><br>
                    <a href="#contacto"><b>Contáctanos</b></a>
            </div>

            <!-- Contenido principal -->
            <div class="contenido-principal">
                
                <!-- Sección Nosotros -->
                <section id="nosotros">
                    <h1><b>Nosotros</b></h1>          
                    <h3><i>Visión</i></h3>
                    <p>
                        Ser la marca líder en el mundo del maquillaje sofisticado, ofreciendo productos en
                        tendencias que empoderen a las personas para expresar su estilo único 
                        y resaltar su belleza con confianza y elegancia.
                    </p>

                    <h3><i>Misión</i></h3>
                    <p>
                        Inspirar y transformar la experiencia del maquillaje, brindando productos de alta calidad
                        y un servicio personalizado que combine glamour, creatividad y cuidado de la piel, para que
                        cada persona se sienta segura y radiante.
                    </p>
                    
                    <h3 class="centrado"><i>Valores</i></h3>          
                    <table class="valor">
                        <tr>
                            <td class="valor">
                                <img src="Imagenes/Calidad.jpg" width="100" height="100" alt="Calidad">
                                <p><b>Calidad y Confianza</b><br><i>Productos confiables y de alta calidad.</i></p>
                            </td>
                            <td class="valor">
                                <img src="Imagenes/inovacion.jpg" width="100" height="100" alt="Innovación">
                                <p><b>Innovación</b><br><i>A la vanguardia de las tendencias.</i></p>
                            </td>
                            <td class="valor">
                                <img src="Imagenes/inclusion.jpg" width="100" height="100" alt="Inclusión">
                                <p><b>Inclusión</b><br><i>Celebramos la diversidad.</i></p>
                            </td>
                            <td class="valor">
                                <img src="Imagenes/sostenibilidad.jpg" width="100" height="100" alt="Sostenibilidad">
                                <p><b>Sostenibilidad</b><br><i>Prácticas responsables.</i></p>
                            </td>
                            <td class="valor">
                                <img src="Imagenes/empoderamiento.jpg" width="100" height="100" alt="Empoderamiento">
                                <p><b>Empoderamiento</b><br><i>Seguridad y autenticidad.</i></p>
                            </td>
                        </tr>
                    </table>
                </section>

                <!-- Otras secciones -->
                <section id="marcas"><h2>Marcas</h2></section>
                <section id="rostro"><h2>Rostro</h2></section>
                <section id="cejas"><h2>Cejas</h2></section>
                <section id="labios"><h2>Labios</h2></section>
                <section id="pestanas"><h2>Pestañas</h2></section>
                <section id="ojos"><h2>Ojos</h2></section>
                <section id="brochas"><h2>Brochas</h2></section>
                <section id="sets"><h2>Sets</h2></section>
                <section id="skincare"><h2>Skincare</h2></section>
                <section id="accesorios"><h2>Accesorios</h2></section>

                <!-- Alta de Producto -->
                <section id="alta">
                    <form action="ProductoServlet" method="post">
                        <h2>Alta de Producto</h2>
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

                <!-- Modificar Producto -->
                <section id="modificar">
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

                <!-- Eliminar Producto -->
                <section id="eliminar">
                    
                    <form action="ProductoServlet" method="post">
                        <h2>Eliminar Producto</h2>
                        <input type="hidden" name="accion" value="eliminar">
                        <table>
                            <tr><td>ID Producto:</td><td><input type="text" name="id" required></td></tr>
                            <tr><td colspan="2" style="text-align:center;"><button type="submit">Eliminar</button></td></tr>
                        </table>
                    </form>
                </section>

            </div>
        </div>

        <!-- Pie de página -->
        <footer style="background:#3c0b1a; color:white; text-align:center; padding:20px;">
                <h2>Contáctanos</h2>
                <img src="Imagenes/contacto.jpg" width="50" height="50" alt="Contacto">
                <p style="font-weight:bold; text-decoration: underline;">
                            Contáctanos Escríbenos a atencion@Glim&Glam.com<br>
                            o Llámanos al 800-737-4072<br>
                            Lunes a Domingo de 8 am a 8 pm
                </p> 
        </footer>

    </body>
</html>