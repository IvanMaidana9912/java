package ar.com.codoacodo23049.oop;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

public class Oradores {
    protected String nombre, apellido, descripcion, consulta, fechaString;
    protected int state;
    protected LocalDateTime fecha;
    protected Long id;

    public Oradores(String nombre, String apellido, String descripcion) {
        extracted(nombre, apellido, descripcion);
        this.fecha = LocalDateTime.now();
        this.state = 0;
        this.consulta = UUID.randomUUID().toString();
    }

    public Oradores(Long id, String nombre, String apellido, String descripcion, String fecha, String consulta) {
        extracted(nombre, apellido, descripcion);
        this.id = id;
        this.fechaString = fecha;
        this.consulta = consulta;
    }

    private void extracted (String nombre, String apellido, String descripcion){
        this.nombre = nombre;
        this.apellido = apellido;
        this.descripcion = descripcion;
    }

    private String toDateData() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        return this.fecha.format(formatter);
    }

    @Override
    public String toString() {
        return "Oradores [nombre=" + nombre + ", apellido=" + apellido + ", descripcion=" + descripcion + ", state="
                + state + ", fecha=" + toDateData() + ", consulta=" + consulta + "]";
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int isState() {
        return state;
    }

    public String getConsulta() {
        return consulta;
    }

    public String getFecha() {
        return toDateData();
    }
    
    public Long getId() {
        return id;
    }
//----------------
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}