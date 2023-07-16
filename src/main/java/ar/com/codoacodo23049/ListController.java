package ar.com.codoacodo23049;

import java.io.IOException;
import java.util.ArrayList;
import ar.com.codoacodo23049.impl.DAO;
import ar.com.codoacodo23049.impl.MySQLDAOImpl;
import ar.com.codoacodo23049.oop.Oradores;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListController")
public class ListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAO dao = new MySQLDAOImpl();
        
        try {
            ArrayList<Oradores> listado = dao.findAll();
            req.setAttribute("listado", listado); 
        } catch (Exception e) {
            var listado = new ArrayList<>();
            req.setAttribute("listado", listado); 
            req.setAttribute("error", e.getMessage() );
        }
        getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
    }
}