@isTest
private class BinarySearchTest {
    @isTest
    static void findsExistingElement() {
        List<Integer> nums = new List<Integer>{1, 3, 5, 7, 9};
        System.assertEquals(3, BinarySearch.runSolution(nums, 7));
        System.assertEquals(0, BinarySearch.runSolution(nums, 1));
        System.assertEquals(4, BinarySearch.runSolution(nums, 9));
    }

    @isTest
    static void returnsMinusOneWhenNotFound() {
        List<Integer> nums = new List<Integer>{1, 3, 5, 7, 9};
        System.assertEquals(-1, BinarySearch.runSolution(nums, 2));
        System.assertEquals(-1, BinarySearch.runSolution(nums, null));
    }
}