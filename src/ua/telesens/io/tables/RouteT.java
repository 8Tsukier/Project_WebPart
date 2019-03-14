package ua.telesens.io.tables;

public class RouteT {
    private int routeNumber;
    private String roundAbout;
    private int numberOfBusses;
    private int numberOfStations;
    private String allStations;

    public String getRouteNumber() {
        return routeNumber + "";
    }

    public void setRouteNumber(int routeNumber) {
        this.routeNumber = routeNumber;
    }

    public String getRoundAbout() {
        return roundAbout;
    }

    public void setRoundAbout(String roundAbout) {
        this.roundAbout = roundAbout;
    }

    public String getNumberOfBusses() {
        return numberOfBusses + "";
    }

    public void setNumberOfBusses(int numberOfBusses) {
        this.numberOfBusses = numberOfBusses;
    }

    public String getNumberOfStations() {
        return numberOfStations + "";
    }

    public void setNumberOfStations(int numberOfStations) {
        this.numberOfStations = numberOfStations;
    }

    public String getAllStations() {
        return allStations;
    }

    public void setAllStations(String allStations) {
        this.allStations = allStations;
    }
}
