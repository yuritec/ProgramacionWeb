package projectWeb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBManager {
    private Connection con = null;
    private Statement stm = null;

    private String host;
    private String port;
    private String user;
    private String pass;
    private String db;

    public DBManager(String host, String port, String user, String pass, String db) {
        this.host = host;
        this.port = port;
        this.user = user;
        this.pass = pass;
        this.db = db;
    }

    public DBManager() {
        this.host = "localhost";
        this.port = "3306";
        this.user = "root";
        this.pass = "Fbd12123.";
        this.db = "Glimm_Glam";
    }

    public DBManager(String db) {
        this.host = "localhost";
        this.port = "3306";
        this.user = "root";
        this.pass = "Fbd12123.";
        this.db = db;
    }

    public void open() throws Exception {
        // Cargar el driver de MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Abrir la conexión
        con = DriverManager.getConnection(
            "jdbc:mysql://" + host + ":" + port + "/" + db
            + "?useSSL=false&serverTimezone=UTC",
            user, pass
        );

        stm = con.createStatement();
    }

    public void close() throws Exception {
        if (stm != null) stm.close();
        if (con != null) con.close();
    }

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getStm() {
        return stm;
    }

    public void setStm(Statement stm) {
        this.stm = stm;
    }
}
