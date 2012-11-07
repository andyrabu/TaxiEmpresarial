package pe.edu.upc.dew.taxiseguro.model;


public class Unidad {

   String codUnidad;
   String conductor;
   String vehiculo;
   String estado;


    public Unidad () {
    }

    public Unidad(String codUnidad, String conductor, String vehiculo, String estado) {
        this.codUnidad = codUnidad;
        this.conductor = conductor;
        this.vehiculo = vehiculo;
        this.estado = estado;
    }

    public String getCodUnidad() {
        return codUnidad;
    }

    public void setCodUnidad(String codUnidad) {
        this.codUnidad = codUnidad;
    }

    public String getConductor() {
        return conductor;
    }

    public void setConductor(String conductor) {
        this.conductor = conductor;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getVehiculo() {
        return vehiculo;
    }

    public void setVehiculo(String vehiculo) {
        this.vehiculo = vehiculo;
    }



}

