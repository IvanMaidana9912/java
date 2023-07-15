package ar.com.codoacodo23049;
import ar.com.codoacodo23049.impl.DAO;
import ar.com.codoacodo23049.impl.MySQLDAOImpl;
import ar.com.codoacodo23049.oop.Oradores;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpController")
public class UpController extends HttpServlet {

    //public static void main(String[] args){
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        String nombre = "Code";
        String apellido = "Craze";
        String comentario = "Quiero poder hablar sobre más de...";

        Oradores orador1 = new Oradores(nombre, apellido, comentario);

        DAO daosql = new MySQLDAOImpl();

        try {
            daosql.create(orador1);
        } catch (Exception e) {
            e.printStackTrace();
        } 
        
        System.out.println(orador1);
    }
}
