/**
 * Valid Anagram
 * Given two strings, determine if they are anagrams of each other.
 */
public with sharing class ValidAnagram {
    public static Boolean runSolution(String first, String second) {
        if (first == null || second == null) {
            return false;
        }
        if (first.length() != second.length()) {
            return false;
        }
        Map<String, Integer> characterToCount = new Map<String, Integer>();
        for (Integer i = 0; i < first.length(); i++) {
            String c = first.substring(i, i+1);
            Integer nextCount = (characterToCount.containsKey(c) ? characterToCount.get(c) : 0) + 1;
            characterToCount.put(c, nextCount);
        }
        for (Integer i = 0; i < second.length(); i++) {
            String c = second.substring(i, i+1);
            if (!characterToCount.containsKey(c)) {
                return false;
            }
            Integer newCount = characterToCount.get(c) - 1;
            if (newCount == 0) {
                characterToCount.remove(c);
            } else {
                characterToCount.put(c, newCount);
            }
        }
        return characterToCount.isEmpty();
    }
}