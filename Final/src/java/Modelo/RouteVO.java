package Modelo;

public class RouteVO {    
    private String name;
    private String color;
    private String description;
    private String path;
    private String day;
    private String schedule;
    private String url;


    public RouteVO(String name, String color, String description, String originDestination, String url) {
        this.name = name;
        this.color = color;
        this.description = description;
        this.path = originDestination;
        this.url = url;
    }

    public RouteVO() {
    }
    
    public RouteVO(String name, String color, String day, String schedule) {
        this.name = name;
        this.color = color;
        this.day = day;
        this.schedule = schedule;
    }

    public RouteVO(String name, String color, String description, String path, String day, String schedule, String url) {
        this.name = name;
        this.color = color;
        this.description = description;
        this.path = path;
        this.day = day;
        this.schedule = schedule;
        this.url = url;
    }
   
  

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    



    
    
    public RouteVO(String name, String schedule, String day) {
        this.name = name;
        this.schedule = schedule;
        this.day = day;
    }
    
    
    
    
    
    
    
}
