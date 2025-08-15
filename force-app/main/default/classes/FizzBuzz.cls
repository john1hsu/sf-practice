/**
 * FizzBuzz
 * Return a list of strings from 1 to n with Fizz/Buzz/FizzBuzz for multiples of 3/5/both.
 */
public with sharing class FizzBuzz {
    public static List<String> runSolution(Integer n) {
        List<String> output = new List<String>();
        if (n == null || n <= 0) {
            return output;
        }
        for (Integer i = 1; i <= n; i++) {
            Boolean isFizz = Math.mod(i, 3) == 0;
            Boolean isBuzz = Math.mod(i, 5) == 0;
            if (isFizz && isBuzz) {
                output.add('FizzBuzz');
            } else if (isFizz) {
                output.add('Fizz');
            } else if (isBuzz) {
                output.add('Buzz');
            } else {
                output.add(String.valueOf(i));
            }
        }
        return output;
    }
}