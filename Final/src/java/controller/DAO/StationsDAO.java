/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller.DAO;

import Modelo.Station;
import Modelo.Conexion.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Steven
 */
public class StationsDAO {
    private int i = 0;
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public StationsDAO() {
        this.con = null;
        this.st = null;
        this.rs = null;
    }

    public ArrayList<Station> getStations() {
        ArrayList<Station> listaEstaciones = new ArrayList<>();
        try {
            con = Conexion.getConexion();
            String consulta = "SELECT * FROM stations"; // Cambia 'pasta' por el nombre real de tu tabla
            st = con.prepareStatement(consulta);
            rs = st.executeQuery(consulta);

            while(rs.next()) {
                listaEstaciones.add(new Station(rs.getString("name"), rs.getString("description")));
            i++;  }
            
            st.close();
            Conexion.desconectar();
        } catch (SQLException ex) {
            System.out.println("No se puede hacer la consulta");
        }

        // Si hay un error o no se puede determinar el estado de la base de datos, retorna false
        return listaEstaciones;
    }

    
    
}
