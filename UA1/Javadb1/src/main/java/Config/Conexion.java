package Config;

import java.sql.*;

public class Conexion {

    private Connection conexion = null;
    private static final String localhost = "localhost";
    private static final String usuario = "root";
    private static final String password = "";
    private static final String bd = "usuarios";

    public Connection getConexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        } catch (Exception e) {
            System.out.println("Error");
        } finally {
            return conexion;
        }
    }
}
