package ar.com.codoacodo23049;

import ar.com.codoacodo23049.impl.DAO;
import ar.com.codoacodo23049.impl.MySQLDAOImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res){

        String consulta = req.getParameter("consulta");

        DAO daosql = new MySQLDAOImpl();

        try {
            daosql.delete(consulta);

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
