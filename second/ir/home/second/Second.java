package ir.home.second;

import ir.home.first.First;

public class Second {
    public String getInfo() {
        return "Second";
    }

    public static void main(String[] args) {
        System.out.println(new First().getInfo());
        System.out.println(new Second().getInfo());
    }
}
