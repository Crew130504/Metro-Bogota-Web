package Modelo;

public class RouteVO {
    private String name;
    private String description;
    private String image;
    private String schedule;
    private String day;

    public RouteVO(String name, String description, String image, String schedule, String day) {
        this.name = name;
        this.description = description;
        this.image = image;
        this.schedule = schedule;
        this.day = day;
    }

    /*
    
    public RouteVO(String name, String description, String image) {
        this.name = name;
        this.description = description;
        this.image = image;
    }
    
    */
    
    
    public RouteVO(String name, String schedule, String day) {
        this.name = name;
        this.schedule = schedule;
        this.day = day;
    }
    
    
    
    
    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
}
