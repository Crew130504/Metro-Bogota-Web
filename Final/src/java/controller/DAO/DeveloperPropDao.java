package controller.DAO;

import Modelo.Developer;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class DeveloperPropDao {
    
    // Método que recibe un objeto Properties y devuelve una lista de objetos Developer
    public List<Developer> Properties(java.util.Properties propiedades) {
    
        // Declaración de variables
        InputStream entrada = null;
        List<Developer> listaDev = new ArrayList<>();

        try {
            // Se abre un archivo de propiedades
            entrada = new FileInputStream("src/data/Developers.properties");
        
            // Se carga el archivo de propiedades en el objeto propiedades
            propiedades.load(entrada);
        
            // Se obtiene la cantidad de elementos a procesar
            int cantidad = Integer.parseInt(propiedades.getProperty("Cantidad"));
       
            // Bucle para procesar cada elemento
            for (int i = 1; i <= cantidad; i++) {
                String devInfo = propiedades.getProperty("Dev" + i);

                if (devInfo != null) {
                    String[] caracteristicasArray = devInfo.split(", ");

                    // Verifica si hay suficientes elementos para crear un objeto Developer
                    if (caracteristicasArray.length >= 2) {
                        String nombreDev = caracteristicasArray[0];
            
                        // Crea un objeto Developer y lo agrega a la lista
                        Developer addDev = new Developer();
                        addDev.setName(nombreDev);
                        addDev.setDescription(caracteristicasArray[1]);
                        
                        listaDev.add(addDev);
                    }
                }
            }

        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (entrada != null) {
                try {
                    entrada.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            // Devuelve la lista de objetos Developer
            return listaDev;
        }
    }      
}
