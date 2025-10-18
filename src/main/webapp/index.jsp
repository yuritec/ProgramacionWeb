<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Glimm & Glam</title>
        <link rel="stylesheet" href="css/estilos.css">
        <!--<link rel="stylesheet" href="https://raw.githack.com/yuritec/ProgramacionWeb/main/src/main/webapp/css/formulario.css">-->
        
    </head>

    <body>
        <header class="barra-navegacion">
            <div class="contenedor-header">
                <div class="menu-toggle" onclick="toggleMenu()">☰</div>
                <div class="botones-izquierda">
                    <a href="#" class="btn">Iniciar sesión</a>
                    <a href="#" class="btn">Registrarse</a>
                </div>
            </div>

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
                    <li><a href="#inicio">Nosotros</a></li>
                    <li><a href="#tablasProductos.jsp">Tablas Productos</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <section class="bienvenida">
                <h1>Bienvenido a <span>GLIMM&GLAM</span></h1>
                <p>
                    Donde todo es glamour y elegancia, para que te maquilles como reina y brilles como diosa.
                </p>
            </section>

            <section class="contenido-principal" id="inicio">
                <div class="fila-vision-mision">
                    <section class="seccion-vision">
                        <h2>Visión</h2>
                        <p>Ser la marca líder en el mundo del maquillaje sofisticado, ofreciendo productos
                            en tendencia que empoderen a las personas para expresar su estilo único y resaltar
                            su belleza con confianza y elegancia.
                        </p>
                    </section>

                    <section class="seccion-mision">
                        <h2>Misión</h2>
                        <p>Inspirar y transformar la experiencia del maquillaje, brindando productos de alta
                            calidad y un servicio personalizado que combine glamour, creatividad y cuidado
                            de la piel, para que cada persona se sienta segura y radiante.
                        </p>
                    </section>
                </div>

                <section class="seccion-valores">
                    <h2>Valores</h2>

                    <div class="grid-valores">
                        <div class="valor">
                            <h3>Calidad y confianza</h3>
                            <p>Solo ofrecemos productos confiables y de alta calidad.</p>
                        </div>
                        <div class="valor">
                            <h3>Innovación</h3>
                            <p>Nos mantenemos a la vanguardia de las tendencias y técnicas de maquillaje.</p>
                        </div>
                        <div class="valor">
                            <h3>Inclusión</h3>
                            <p>Celebramos la diversidad y la individualidad de cada persona.</p>
                        </div>
                        <div class="valor">
                            <h3>Sostenibilidad</h3>
                            <p>Promovemos prácticas responsables y productos amigables con el medio ambiente.</p>
                        </div>
                        <div class="valor">
                            <h3>Empoderamiento</h3>
                            <p>Ayudamos a nuestros clientes a sentirse seguros, expresivos y auténticos.</p>
                        </div>
                    </div>
                </section>
            </section>

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
        </main>

        <footer>
            <h2>Contáctanos</h2>
            <img src="Imagenes/contacto.jpg" alt="Prueba de imagen" width="300">
            <p>
                Contáctanos Escríbenos a atencion@GlimmGlam.com<br>
                o Llámanos al 800-737-4072<br>
                Lunes a Domingo de 8 am a 8 pm
            </p>
        </footer>
        
        <script src="js/index.js"></script>
    </body>
</html>
