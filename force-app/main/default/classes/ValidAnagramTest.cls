@isTest
private class ValidAnagramTest {
    @isTest
    static void anagramTrueCases() {
        System.assertEquals(true, ValidAnagram.runSolution('listen', 'silent'));
        System.assertEquals(true, ValidAnagram.runSolution('triangle', 'integral'));
    }

    @isTest
    static void anagramFalseCases() {
        System.assertEquals(false, ValidAnagram.runSolution('rat', 'car'));
        System.assertEquals(false, ValidAnagram.runSolution('apple', 'pale'));
        System.assertEquals(false, ValidAnagram.runSolution(null, 'abc'));
    }
}