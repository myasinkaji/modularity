package ir.home.second;

import ir.home.first.First;
import ir.home.third.Third;

public class Second {
    public String getInfo() {
        return "first " + getClass().getModule();
    }

    public static void main(String[] args) {
        System.out.println(new First().getInfo());
        System.out.println(new Second().getInfo());
        System.out.println(new Third().getInfo());
    }
}
