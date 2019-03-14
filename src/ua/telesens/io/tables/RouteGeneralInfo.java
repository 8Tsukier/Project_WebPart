package ua.telesens.io.tables;

public class RouteGeneralInfo{
    private int id;
    private int routeNumber;
    private int numberOfStations;
    private int numberOfBuses;

    public String getId() {
        return id+"";
    }

    public String  getRouteNumber() {
        return routeNumber+"";
    }

    public String getNumberOfStations() {
        return numberOfStations+"";
    }

    public String getNumberOfBuses() {
        return numberOfBuses+"";
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setRouteNumber(int routeNumber) {
        this.routeNumber = routeNumber;
    }

    public void setNumberOfStations(int numberOfStations) {
        this.numberOfStations = numberOfStations;
    }

    public void setNumberOfBuses(int numberOfBuses) {
        this.numberOfBuses = numberOfBuses;
    }

}
