package base

// ListNode is the canonical singly-linked list node used by LeetCode problems.
// The field layout matches the definition that LeetCode emits in its Go code
// snippets, so generated solution files can reference base.ListNode without
// reshaping anything.
type ListNode struct {
	Val  int
	Next *ListNode
}
