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

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String clave = req.getParameter("clave");
        DAO dao = new MySQLDAOImpl();

        try {
            ArrayList<Oradores> listado = dao.findAllByTitle(clave);
            req.setAttribute("listado",listado);
        } catch (Exception e) {
            req.setAttribute("listado",new ArrayList<>());
        }
        getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);//GET
    }
}