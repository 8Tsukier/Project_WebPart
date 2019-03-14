package ua.telesens.io.tables;

public class ResultTable {
    int N;
    double localTime;
    int daysIn;
    int totalRounds;
    int passTraveled;
    int passLeft;

    public String getN(){
        return N + "";
    }

    public void setN(int N){
        this.N = N;
    }

    public String getLocalTime() {
        return localTime + "";
    }

    public void setLocalTime(double localTime) {
        this.localTime = localTime;
    }

    public String getDaysIn() {
        return daysIn + "";
    }

    public void setDaysIn(int daysIn) {
        this.daysIn = daysIn;
    }

    public String getTotalRounds() {
        return totalRounds + "";
    }

    public void setTotalRounds(int totalRounds) {
        this.totalRounds = totalRounds;
    }

    public String getPassTraveled() {
        return passTraveled + "";
    }

    public void setPassTraveled(int passTraveled) {
        this.passTraveled = passTraveled;
    }

    public String getPassLeft() {
        return passLeft + "";
    }

    public void setPassLeft(int passLeft) {
        this.passLeft = passLeft;
    }
}
