package ua.telesens.io.tables;

public class StationT {
    private int id;
    private String name;
    private String big;
    private String belongToRoutes;

    public String getId() {
        return id + "";
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBig() {
        return big;
    }

    public void setBig(String big) {
        this.big = big;
    }

    public String getBelongToRoutes() {
        return belongToRoutes;
    }

    public void setBelongToRoutes(String belongToRoutes) {
        this.belongToRoutes = belongToRoutes;
    }
}
