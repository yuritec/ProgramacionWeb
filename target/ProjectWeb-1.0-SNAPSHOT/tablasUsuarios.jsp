<%@page import="java.security.MessageDigest"%>
<%@ page import="projectWeb.DBManager" %>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tablas Usuarios</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/formulario.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/tablasUsuarios.js"></script>
    </head>
    
    <body>
        <%!
            // ---------- MÉTODO PARA ENCRIPTAR CONTRASEÑAS ----------
            public static String hashPassword(String password) throws Exception {
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                byte[] hash = md.digest(password.getBytes("UTF-8"));

                StringBuilder hexString = new StringBuilder();
                for (byte b : hash) {
                    String hex = Integer.toHexString(0xff & b);
                    if (hex.length() == 1) hexString.append('0');
                    hexString.append(hex);
                }
                return hexString.toString();
            }
        %>
        
        <%
            String accion = request.getParameter("accion");
            String mensaje = null;

            if (accion != null) {
                DBManager db = new DBManager();
                try {
                    db.open();

                    // ---------- REGISTRAR ----------
                    if ("alta".equals(accion)) {
                        String nombre = request.getParameter("nombre");
                        String correo = request.getParameter("correo");
                        String password = hashPassword(request.getParameter("password")); // Encriptar
                        String rol = request.getParameter("rol");

                        PreparedStatement ps = db.getCon().prepareStatement(
                            "INSERT INTO usuarios (nombre, correo, contrasena, rol) VALUES (?, ?, ?, ?)"
                        );
                        ps.setString(1, nombre);
                        ps.setString(2, correo);
                        ps.setString(3, password);
                        ps.setString(4, rol);
                        ps.executeUpdate();
                        ps.close();

                        mensaje = "Usuario registrado con éxito";

                    // ---------- MODIFICAR ----------
                    } else if ("modificar".equals(accion)) {
                        String id = request.getParameter("id");
                        String nombre = request.getParameter("nombre");
                        String correo = request.getParameter("correo");
                        String password = hashPassword(request.getParameter("password")); // Encriptar
                        String rol = request.getParameter("rol");

                        StringBuilder sql = new StringBuilder("UPDATE usuarios SET ");
                        boolean first = true;

                        if (nombre != null && !nombre.trim().isEmpty()) {
                            sql.append("nombre = ?"); first = false;
                        }
                        if (correo != null && !correo.trim().isEmpty()) {
                            if (!first) sql.append(", ");
                            sql.append("correo = ?");
                            first = false;
                        }
                        if (password != null && !password.trim().isEmpty()) {
                            if (!first) sql.append(", ");
                            sql.append("contrasena = ?");
                            first = false;
                        }
                        if (rol != null && !rol.trim().isEmpty()) {
                            if (!first) sql.append(", ");
                            sql.append("rol = ?");
                        }
                        sql.append(" WHERE id = ?");

                        PreparedStatement ps = db.getCon().prepareStatement(sql.toString());

                        int index = 1;
                        if (nombre != null && !nombre.trim().isEmpty()) ps.setString(index++, nombre);
                        if (correo != null && !correo.trim().isEmpty()) ps.setString(index++, correo);
                        if (password != null && !password.trim().isEmpty()) ps.setString(index++, password);
                        if (rol != null && !rol.trim().isEmpty()) ps.setString(index++, rol);
                        ps.setInt(index, Integer.parseInt(id));

                        int filas = ps.executeUpdate();
                        ps.close();

                        if (filas > 0)
                            mensaje = "Usuario modificado con éxito";
                        else
                            mensaje = "No se encontró el usuario con ID " + id;

                    // ---------- ELIMINAR ----------
                    } else if ("eliminar".equals(accion)) {
                        String id = request.getParameter("id");

                        PreparedStatement ps = db.getCon().prepareStatement(
                            "DELETE FROM usuarios WHERE id = ?"
                        );
                        ps.setInt(1, Integer.parseInt(id));
                        int filas = ps.executeUpdate();
                        ps.close();

                        if (filas > 0)
                            mensaje = "Usuario eliminado con éxito";
                        else
                            mensaje = "No se encontró el usuario con ID " + id;
                    }

                    db.close();

                } catch (Exception e) {
                    e.printStackTrace();
                    mensaje = "Error: " + e.getMessage();
                }
            }
        %>

        <!-- HEADER -->
        <header class="barra-navegacion">
            <div class="contenedor-header">
                <div class="menu-toggle" onclick="toggleMenu()">☰</div>
                <div class="titulo">
                    <h1>Glimm & Glam</h1>
                    <p>Administración de Usuarios</p>
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
                    <li><a href="tablasProductos.jsp">Tablas Productos</a></li>
                    <li><a href="tablasUsuarios.jsp">Tablas Usuarios</a></li>
                    <li><a href="index.jsp">Regresar al inicio</a></li>
                </ul>
            </nav>
        </header>

        <section id="alta" class="form-seccion">
            <form method="post">
                <h2>Registrar Usuario</h2>
                <input type="hidden" name="accion" value="alta">
                <table>
                    <tr><td>Nombre:</td><td><input type="text" name="nombre" required></td></tr>
                    <tr><td>Correo:</td><td><input type="email" name="correo" required></td></tr>
                    <tr><td>Contraseña:</td><td><input type="password" name="password" required></td></tr>
                    <tr><td>Rol:</td>
                        <td>
                            <select name="rol">
                                <option value="administrador">Administrador</option>
                                <option value="cliente">Cliente</option>
                            </select>
                        </td>
                    </tr>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Guardar</button></td></tr>
                </table>
                <div class="mensaje-validacion" style="display:none;"></div>
            </form>
        </section>

        <section id="modificar" class="form-seccion">
            <form method="post">
                <h2>Modificar Usuario</h2>
                <input type="hidden" name="accion" value="modificar">
                <table>
                    <tr><td>ID Usuario:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td>Nuevo Nombre:</td><td><input type="text" name="nombre"></td></tr>
                    <tr><td>Nuevo Correo:</td><td><input type="email" name="correo"></td></tr>
                    <tr><td>Nueva Contraseña:</td><td><input type="password" name="password"></td></tr>
                    <tr><td>Nueva Rol:</td>
                        <td>
                            <select name="rol">
                                <option value="">-- Seleccionar --</option>
                                <option value="admin">Administrador</option>
                                <option value="cliente">Cliente</option>
                            </select>
                        </td>
                    </tr>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Modificar</button></td></tr>
                </table>
                <div class="mensaje-validacion" style="display:none;"></div>
            </form>
        </section>

        <section id="eliminar" class="form-seccion">
            <form method="post">
                <h2>Eliminar Usuario</h2>
                <input type="hidden" name="accion" value="eliminar">
                <table>
                    <tr><td>ID Usuario:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td colspan="2" style="text-align:center;"><button type="submit">Eliminar</button></td></tr>
                </table>
                <div class="mensaje-validacion" style="display:none;"></div>
            </form>
        </section>

        <footer>
            <h2>Contáctanos</h2>
            <img src="Imagenes/contacto.jpg" alt="Prueba de imagen" width="300">
            <p>
                Escríbenos a atencion@GlimmGlam.com<br>
                Llámanos al 800-737-4072<br>
                Lunes a Domingo de 8 am a 8 pm
            </p>
        </footer>

        <script>
            var mensaje = "<%= mensaje != null ? mensaje : "" %>";
        </script>
    </body>

</html>
