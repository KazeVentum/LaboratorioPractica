
package com.mycompany.persistence;
import java.sql.*;


public abstract class BDconexion {
    private static String url = "";
    private static String user = "";
    private static String password = "";
    public static Connection con = null;
    
    public static Connection MySQLConnection() {
        url = "jdbc:mysql://localhost:3306/laboratorio_partes";
        user = "root";
        password = "campus2024";        
        return getConnection(url, user, password);
        
    }
    
     private static Connection getConnection(String url, String user, String password){
        try {
            // Realizar la conexion
            con = DriverManager.getConnection(url, user, password);
            if (con != null) {
                DatabaseMetaData meta = con.getMetaData();
                System.out.println("Connection Success! " + meta.getDriverName());
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return con;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}