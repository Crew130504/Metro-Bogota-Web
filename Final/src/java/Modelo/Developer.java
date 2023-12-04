package Modelo;

public class Developer {
    private String name;
    private String description;

    public Developer(String name, String description) {
        this.name = name;
        this.description = description;
    }
    
    public Developer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
