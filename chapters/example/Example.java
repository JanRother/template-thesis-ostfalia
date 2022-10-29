package de.ostfalia.gdp.s21ws.s0;

import java.util.Locale;
import java.util.Scanner;

public class Template {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        scanner.useLocale(Locale.ENGLISH);

        System.out.println("x = ");
        int x = scanner.nextInt();

        scanner.close();
        System.out.println();

        //code

        System.out.println("Ergebnis = " + "");
    }
}