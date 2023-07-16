package ar.com.codoacodo23049.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdminConections {

    public static Connection getConnection() {
        String hosts = "127.0.0.1";// localhost
        String port = "3306";
        String password = "";
        String username = "root";

        // driver de conexion a la base de datos
        String driverClassName = "com.mysql.cj.jdbc.Driver";
        String dbName = "codoacodo";

        Connection connection;
        try {
            Class.forName(driverClassName);

            String url = "jdbc:mysql://" + hosts + ":" + port + "/" + dbName
                    + "?allowPublicKeyRetrieval=true&serverTimeZone=UTC&useSSL=false";

            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            connection = null;
        }

        return connection;
    }
}
