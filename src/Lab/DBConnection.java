package Lab;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
    private static final String USERNAME="user";
    private static final String PASSWORD="password";
    private static final String URL = "jdbc:mysql://localhost:3308/CS422DB";

    //Singleton object
    private static DBConnection instance = null;

    //Connection object
    private Connection connection;

    private DBConnection() {
        try{
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected");
        }catch (Exception e){
            System.out.println("Error:"+e);
        }
    }

    public static DBConnection getInstance() {
        if (instance== null)
            instance = new DBConnection();
        return instance;
    }

    public Connection getConnection(){
        return connection;

    }
}