/**
 * Maximum Subarray (Kadane's Algorithm)
 * Given an integer array, find the contiguous subarray which has the largest sum.
 */
public with sharing class MaxSubarray {
    public static Integer runSolution(List<Integer> nums) {
        if (nums == null || nums.isEmpty()) {
            return 0;
        }
        Integer currentMax = nums[0];
        Integer globalMax = nums[0];
        for (Integer i = 1; i < nums.size(); i++) {
            Integer value = nums[i];
            currentMax = Math.max(value, currentMax + value);
            globalMax = Math.max(globalMax, currentMax);
        }
        return globalMax;
    }
}