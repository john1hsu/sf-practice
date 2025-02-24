public with sharing class TwoSum {
    public static List<Integer> runSolution(List<Integer> nums, Integer target) {
        Map<Integer, Integer> mapVariable =  new Map<Integer, Integer>();
        for (Integer i = 0; i < nums.size(); i++) {
            Integer complement = target - nums[i];
            if (mapVariable.containsKey(complement)) {
                return new List<Integer>{i, mapVariable.get(complement)};
            } 
            mapVariable.put(nums[i], i);
        }
        // Return an empty array if no solution is found
        return new List<Integer>();
    }
}