package service;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import bean.ExampleFormularBean;

public class DateiService {

    private static final String DATEI = "personen.txt";

    public void speichern(ExampleFormularBean person) {

    	try (BufferedWriter writer =
    	        new BufferedWriter(new FileWriter(DATEI, true))) {

    	    System.out.println("Pfad: " + new java.io.File(DATEI).getAbsolutePath());

    	    writer.write(
    	            person.getVorname() + ";" +
    	            person.getNachname() + ";" +
    	            person.getAlter());

    	    writer.newLine();

    	    System.out.println("Gespeichert!");

    	} catch (IOException e) {
    	    e.printStackTrace();
    	}
    }
}