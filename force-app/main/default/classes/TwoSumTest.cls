
@isTest
private class TwoSumTest {

    @isTest
    static void myUnitTest() {
        List<Integer> integerList = new List<Integer>{1, 2, 3, 4};
        Integer targetInteger = 4;

        Test.startTest();
        List<Integer> indices = TwoSum.runSolution(integerList, targetInteger);
        Test.stopTest();

        Assert.areEqual(2, indices.size());
        Assert.isTrue(indices.contains(0));
        Assert.isTrue(indices.contains(2));
    }
}