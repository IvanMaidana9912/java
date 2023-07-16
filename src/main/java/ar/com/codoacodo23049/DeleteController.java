package ar.com.codoacodo23049;

import java.io.IOException;
import ar.com.codoacodo23049.impl.DAO;
import ar.com.codoacodo23049.impl.MySQLDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{

        String id = req.getParameter("id");
        DAO daosql = new MySQLDAOImpl();

        try {
            daosql.delete(Long.parseLong(id));
            req.setAttribute("success", "Se ha eliminado el articulo");

        } catch(Exception e){
            req.setAttribute("error", "No se ha eliminado el articulo");
            e.printStackTrace();
        }
    }
}