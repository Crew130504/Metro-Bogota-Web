package controller.DAO;

import Modelo.Conexion.Conexion;
import Modelo.RouteVO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class RouteDAO {
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public RouteDAO() {
        this.con = null;
        this.st = null;
        this.rs = null;
    }
    
      public ArrayList<RouteVO> verEstaciones() {
        ArrayList<RouteVO> listasRutas = new ArrayList<>();
        try {
            con = Conexion.getConexion();
            String consulta = "SELECT name , color,x, description ,url  FROM route"; // Cambia 'pasta' por el nombre real de tu tabla
            st = con.prepareStatement(consulta);
            rs = st.executeQuery(consulta);

            while (rs.next()) {
            listasRutas.add(new RouteVO(rs.getString("name"), rs.getString("color"), rs.getString("x"), rs.getString("description"), rs.getString("url")));
            }
            
            st.close();
            Conexion.desconectar();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        mostrarEstaciones(listasRutas);
        // Si hay un error o no se puede determinar el estado de la base de datos, retorna false
        return listasRutas;
    }
      
      public ArrayList<RouteVO> verHorario() {
        ArrayList<RouteVO> listasRutas = new ArrayList<>();
        try {
            con = Conexion.getConexion();
            String consulta = "SELECT name , color , day ,schedule FROM route"; // Cambia 'pasta' por el nombre real de tu tabla
            st = con.prepareStatement(consulta);
            rs = st.executeQuery(consulta);

            while (rs.next()) {
            listasRutas.add(new RouteVO(rs.getString("name"), rs.getString("color"), rs.getString("day"), rs.getString("schedule")));
            }
            
            st.close();
            Conexion.desconectar();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        mostrarEstaciones1(listasRutas);
        // Si hay un error o no se puede determinar el estado de la base de datos, retorna false
        return listasRutas;
    }
      
            public ArrayList<RouteVO> consultarEstaciones(String nombre) {
        ArrayList<RouteVO> listasRutas = new ArrayList<>();
        try {
            con = Conexion.getConexion();
            String consulta = "SELECT name , color,x, description ,url  FROM route WHERE name = '"+nombre+"' "; 
            st = con.prepareStatement(consulta);
            rs = st.executeQuery(consulta);

            while (rs.next()) {
            listasRutas.add(new RouteVO(rs.getString("name"), rs.getString("color"), rs.getString("x"), rs.getString("description"), rs.getString("url")));
            }
            
            st.close();
            Conexion.desconectar();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        mostrarEstaciones(listasRutas);
        // Si hay un error o no se puede determinar el estado de la base de datos, retorna false
        return listasRutas;
    }
      
      public void mostrarEstaciones(ArrayList<RouteVO> listaRutas) {
    for (RouteVO ruta : listaRutas) {
        System.out.println("Nombre: " + ruta.getName() + ", Color: " + ruta.getColor());
    }
    
}
      
            public void mostrarEstaciones1(ArrayList<RouteVO> listaRutas) {
    for (RouteVO ruta : listaRutas) {
        System.out.println("Nombre: " + ruta.getName() + ", Color: " + ruta.getSchedule());
    }
    
}
}