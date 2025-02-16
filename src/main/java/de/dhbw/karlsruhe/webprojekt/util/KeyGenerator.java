package de.dhbw.karlsruhe.webprojekt.util;

import de.dhbw.karlsruhe.webprojekt.model.Games;
import java.util.ArrayList;
import java.util.Random;

public class KeyGenerator {

    private final char[] CHARS = "abcdefghijklmnopqrstuvwxyz1234567890".toCharArray();

    public String generateKey(Games game) {
        Random random = new Random();
        String tempKey = "";
        String key = "";
        for (int i = 1; i < 16; i++) {
            tempKey += CHARS[random.nextInt(CHARS.length)];
            if (i == 5 || i == 10) {
                tempKey += "-";
            }
        }
        key = "<p>" + game.getName() + ": " + tempKey.toUpperCase() + "</p>";
        return key;
    }

    public String generateKeys(ArrayList<Games> gameList) {
        Random random = new Random();
        String key = "";
        String gameKeys = "";

        for (Games game : gameList) {
            for (int i = 1; i < 16; i++) {
                key += CHARS[random.nextInt(CHARS.length)];
                if (i == 5 || i == 10) {
                    key += "-";
                }
            }
            gameKeys += "<p>" + game.getName() + ": " + key.toUpperCase() + "</p>";
            System.out.println(game.getName() + ": " + key.toUpperCase());
            key = "";
        }
        return gameKeys;
    }
}
