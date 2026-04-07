package base

// TreeNode is the canonical binary tree node used by LeetCode problems.
// The field layout matches the definition that LeetCode emits in its Go code
// snippets.
type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}
