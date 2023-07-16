package ar.com.codoacodo23049.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ar.com.codoacodo23049.db.AdminConections;
import ar.com.codoacodo23049.oop.Oradores;

public class MySQLDAOImpl implements DAO{

    private String table;
    public MySQLDAOImpl()  {
        this.table = "oradores";
    }

    public Oradores getById(Long id) throws Exception {
        String sqlQueryGetById = "SELECT * FROM "+this.table+" WHERE id =?";

        //Obtener la Conection
        Connection connection = AdminConections.getConnection();

        //PreparedStatement con mi sql
        PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryGetById);

        preparedStatement.setLong(1,id);

        Oradores orador = null;

        ResultSet res = preparedStatement.executeQuery();

        if(res.next()) {
            String nombre = res.getString(1);
            String apellido = res.getString(2);
            String descripcion = res.getString(3);

            orador = new Oradores(nombre, apellido, descripcion);
        }
        return orador;
    }

    @Override
    public void delete(Long id) throws Exception {
        String sqlQueryDelete = "DELETE FROM " + this.table + " WHERE consulta= ? ";

        Connection connection = AdminConections.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryDelete);

        preparedStatement.setLong(1, id);
        preparedStatement.executeUpdate();
    }

    @Override
    public ArrayList<Oradores> findAll() throws Exception {
        String sqlfindAll = "SELECT * FROM "+this.table+"";

        return findBySQL(sqlfindAll);
    }

    @Override
    public void update(Oradores orador) {
        //String sqlQueryUpdate = "update " + this.table + " set nombre, apellido, descripcion";
        //return sqlQueryUpdate;
    }


    @Override
    public void create(Oradores orador) throws Exception {
        String sqlQueryCreate = "INSERT INTO " + this.table + " (nombre, apellido, descripcion, fecha, consulta, estado) VALUES (?,?,?,?,?,?)";

        Connection connection = AdminConections.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryCreate);

        preparedStatement.setString(1, orador.getNombre());
        preparedStatement.setString(2, orador.getApellido());
        preparedStatement.setString(3, orador.getDescripcion());
        preparedStatement.setString(4, orador.getFecha());
        preparedStatement.setString(5, orador.getConsulta());
        preparedStatement.setInt(6, orador.isState());

        preparedStatement.executeUpdate();
    }

    @Override
    public ArrayList<Oradores> findAllByTitle(String clave) throws Exception {

        String sqlFindAllByTitle = "SELECT * FROM "+this.table+ " WHERE UPPER(nombre) like '%"+clave.toUpperCase()+"%'";

        return findBySQL(sqlFindAllByTitle);
    }

    private ArrayList<Oradores> findBySQL(String sqlQuery) throws SQLException {

        Connection connection = AdminConections.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);

        ArrayList<Oradores> listado = new ArrayList<>();

        ResultSet res = preparedStatement.executeQuery();

        while(res.next()) {
            Long id = res.getLong(1);
            String nombre = res.getString(2);
            String apellido = res.getString(3);
            String descripcion = res.getString(4);
            String fecha = res.getString(5);
            String consulta = res.getString(6);

            listado.add(new Oradores(id, nombre, apellido, descripcion, fecha, consulta));
        }
        return listado;
    }
}