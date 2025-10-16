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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="https://raw.githack.com/yuritec/ProgramacionWeb/main/src/main/webapp/css/formulario.css">
    </head>
    <body>

        <!-- Encabezado -->
        <header style="background:#3c0b1a; color:white; padding:15px; display:flex; align-items:center; justify-content:center;">
            <div class="titulo" style="text-align:center;">
                <h1 style="margin:0;">Glimm & Glam</h1>
                <p style="margin:0;">Maquillate como reina, brilla como diosa con Glim & Glam</p>
            </div>
        </header>

        <!-- Contenedor principal -->
        <div style="display:flex; min-height:80vh;">

            <!-- Menú lateral -->
            <nav class="menu-lateral">
                <center>
                <h2>Menú</h2>
                </center>
                <ul>
                    <li><a href="#nosotros"><i class="fas fa-user-friends"></i> Nosotros</a></li>
                    <li><a href="#marcas"><i class="fas fa-tags"></i> Marcas</a></li>
                    <li><a href="#rostro"><i class="fas fa-smile"></i> Rostro</a></li>
                    <li><a href="#cejas"><i class="fas fa-eye"></i> Cejas</a></li>
                    <li><a href="#labios"><i class="fas fa-lips"></i> Labios</a></li>
                    <li><a href="#pestanas"><i class="fas fa-eye-dropper"></i> Pestañas</a></li>
                    <li><a href="#ojos"><i class="fas fa-eye"></i> Ojos</a></li>
                    <li><a href="#brochas"><i class="fas fa-paint-brush"></i> Brochas</a></li>
                    <li><a href="#sets"><i class="fas fa-gift"></i> Sets</a></li>
                    <li><a href="#skincare"><i class="fas fa-leaf"></i> Skincare</a></li>
                    <li><a href="#accesorios"><i class="fas fa-star"></i> Accesorios</a></li>
                    <li><a href="tablasProductos.jsp"><i class="fas fa-table"></i> Tablas Productos</a></li>
                    <li><a href="#contacto"><i class="fas fa-envelope"></i> Contáctanos</a></li>
                </ul>
            </nav>

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
        
        <div class="validador">
            <a href="https://validator.w3.org/check?uri=referer" target="_blank">
                <img src="https://www.w3.org/Icons/valid-html401" alt="¡HTML válido!" width="88" height="31">
            </a>
        </div>
        
        <div class="validador-css">
            <a href="https://jigsaw.w3.org/css-validator/check/referer" target="_blank">
              <img src="https://jigsaw.w3.org/css-validator/images/vcss" alt="¡CSS válido!" width="88" height="31">
            </a>
        </div>


    </body>
</html>