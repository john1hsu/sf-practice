/**
 * Binary Search
 * Given a sorted array of integers, return the index of the target or -1 if not found.
 */
public with sharing class BinarySearch {
    public static Integer runSolution(List<Integer> nums, Integer target) {
        if (nums == null || target == null) {
            return -1;
        }
        Integer left = 0;
        Integer right = nums.size() - 1;
        while (left <= right) {
            Integer mid = left + ((right - left) / 2);
            Integer midVal = nums[mid];
            if (midVal == target) {
                return mid;
            } else if (midVal < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return -1;
    }
}