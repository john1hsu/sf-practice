public with sharing class ListNode {
    Integer val;
    ListNode next;

    public ListNode() {}

    public ListNode(Integer val) {
        this.val = val;
        this.next = null;
    }

    public ListNode(Integer val, ListNode next) {
        this.val = val;
        this.next = next;
    }

}