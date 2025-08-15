/**
 * Reverse String
 * Given a string, return the string reversed.
 */
public with sharing class ReverseString {
    public static String runSolution(String input) {
        if (input == null) {
            return null;
        }
        StringBuilder builder = new StringBuilder();
        for (Integer i = input.length() - 1; i >= 0; i--) {
            builder.append(input.substring(i, i+1));
        }
        return builder.toString();
    }
}