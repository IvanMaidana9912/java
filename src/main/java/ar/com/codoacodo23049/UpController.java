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

    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
        String nombre = req.getParameter("nombre");
        String apellido = req.getParameter("apellido");
        String comentario = req.getParameter("descripcion");

        Oradores oradorUp = new Oradores(nombre, apellido, comentario);

        DAO daosql = new MySQLDAOImpl();

        try {
            resp.sendRedirect(req.getContextPath() + "/ListController");
            daosql.create(oradorUp);
        } catch (Exception e) {
            getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
            e.printStackTrace();
        } 
        System.out.println(oradorUp);
    }
}
