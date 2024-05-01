package Lab;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Runner {
    public static void main(String[] args) {
        try{
            DBConnection dbConnection = DBConnection.getInstance();
            Connection connection = dbConnection.getConnection();

            Statement st = connection.createStatement();
            String query = "SELECT * FROM `mytable`";
            ResultSet result = st.executeQuery(query);
            StringBuilder sb =  new StringBuilder();
            sb.append("ID\tName\n");
            while(result.next()){
                sb.append(result.getInt(1)+"\t"+result.getString(2)+"\n");
            }
            System.out.println(sb.toString());
            st.close();;
            connection.close();

        }catch (Exception e){
            System.out.println("Error: "+e.getMessage());
        }
    }
}
