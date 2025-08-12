@isTest
private class FizzBuzzTest {
    @isTest
    static void generatesCorrectSequence() {
        List<String> result = FizzBuzz.runSolution(15);
        System.assertEquals(15, result.size());
        System.assertEquals('1', result[0]);
        System.assertEquals('2', result[1]);
        System.assertEquals('Fizz', result[2]);
        System.assertEquals('4', result[3]);
        System.assertEquals('Buzz', result[4]);
        System.assertEquals('Fizz', result[5]);
        System.assertEquals('FizzBuzz', result[14]);
    }

    @isTest
    static void handlesZeroOrNull() {
        System.assertEquals(0, FizzBuzz.runSolution(0).size());
        System.assertEquals(0, FizzBuzz.runSolution(null).size());
    }
}