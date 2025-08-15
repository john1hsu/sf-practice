@isTest
private class ValidParenthesesTest {
    @isTest
    static void validExamples() {
        System.assertEquals(true, ValidParentheses.runSolution('()'));
        System.assertEquals(true, ValidParentheses.runSolution('()[]{}'));
        System.assertEquals(true, ValidParentheses.runSolution('({[]})'));
    }

    @isTest
    static void invalidExamples() {
        System.assertEquals(false, ValidParentheses.runSolution('(]'));
        System.assertEquals(false, ValidParentheses.runSolution('([)]'));
        System.assertEquals(false, ValidParentheses.runSolution('('));
    }
}