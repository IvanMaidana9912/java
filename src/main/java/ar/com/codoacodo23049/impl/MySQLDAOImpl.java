package ar.com.codoacodo23049.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import ar.com.codoacodo23049.db.AdminConections;
import ar.com.codoacodo23049.oop.Oradores;

public class MySQLDAOImpl implements DAO{
    private String table = "oradores";

    @Override
    public Oradores getById(Long id) {
        return new Oradores("Ivan", "Maidana", "Quiero poder hablar sobre");
    }

    @Override
    public void delete(String consulta) throws Exception {
        String sqlQueryDelete = "DELETE FROM " + this.table + " WHERE consulta= ?";

        Connection connection = AdminConections.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sqlQueryDelete);

        preparedStatement.setString(1, consulta);
        preparedStatement.executeUpdate();
    }

    @Override
    public ArrayList<Oradores> findAll() {
        //String sqlQueryAll = "select * from " + this.table;
        return null;
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
}