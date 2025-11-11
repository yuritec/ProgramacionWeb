package projectWeb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBManager {
    private Connection con = null;
    private Statement stm = null;

    private String host = "localhost";
    private String port = "5432";
    private String user = "postgres";
    private String pass = "postgres123";
    private String db = "Glimm_Glam";

    public void open() throws Exception {
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(
            "jdbc:postgresql://" + host + ":" + port + "/" + db,
            user, pass
        );
        stm = con.createStatement();
    }

    public void close() throws Exception {
        if (stm != null) stm.close();
        if (con != null) con.close();
    }

    public Connection getCon() { return con; }
    public Statement getStm() { return stm; }
}