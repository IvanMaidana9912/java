package ar.com.codoacodo23049.impl;

import ar.com.codoacodo23049.oop.Oradores;
import java.util.ArrayList;

public interface DAO {
    public Oradores getById(Long id) throws Exception;

    public void delete(String consulta) throws Exception;

    public ArrayList<Oradores> findAll() throws Exception;

    public void update(Oradores orador) throws Exception;

    public void create(Oradores orador) throws Exception;
}