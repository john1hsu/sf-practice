@isTest
private class ReverseStringTest {
    @isTest
    static void reversesString() {
        Test.startTest();
        String result = ReverseString.runSolution('abcd');
        Test.stopTest();
        System.assertEquals('dcba', result);
    }

    @isTest
    static void handlesEmptyAndNull() {
        System.assertEquals('', ReverseString.runSolution(''));
        System.assertEquals(null, ReverseString.runSolution(null));
    }
}