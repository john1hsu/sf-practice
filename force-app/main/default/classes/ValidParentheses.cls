/**
 * Valid Parentheses
 * Given a string containing '()[]{}', determine if the input string is valid.
 */
public with sharing class ValidParentheses {
    public static Boolean runSolution(String s) {
        if (s == null) {
            return false;
        }
        List<String> stack = new List<String>();
        Map<String, String> closingToOpening = new Map<String, String>{
            ')' => '(',
            ']' => '[',
            '}' => '{'
        };
        Set<String> openingSet = new Set<String>{'(', '[', '{'};
        for (Integer i = 0; i < s.length(); i++) {
            String ch = s.substring(i, i+1);
            if (openingSet.contains(ch)) {
                stack.add(ch);
            } else if (closingToOpening.containsKey(ch)) {
                if (stack.isEmpty()) {
                    return false;
                }
                String top = stack.get(stack.size() - 1);
                stack.remove(stack.size() - 1);
                if (top != closingToOpening.get(ch)) {
                    return false;
                }
            }
        }
        return stack.isEmpty();
    }
}