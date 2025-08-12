@isTest
private class MaxSubarrayTest {
    @isTest
    static void exampleCase() {
        List<Integer> nums = new List<Integer>{-2, 1, -3, 4, -1, 2, 1, -5, 4};
        System.assertEquals(6, MaxSubarray.runSolution(nums));
    }

    @isTest
    static void handlesAllNegative() {
        List<Integer> nums = new List<Integer>{-8, -3, -6, -2, -5, -4};
        System.assertEquals(-2, MaxSubarray.runSolution(nums));
    }

    @isTest
    static void handlesEmptyOrNull() {
        System.assertEquals(0, MaxSubarray.runSolution(new List<Integer>()));
        System.assertEquals(0, MaxSubarray.runSolution(null));
    }
}