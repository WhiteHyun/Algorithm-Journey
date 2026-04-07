// LeetCode 2069. Walking Robot Simulation II
// https://leetcode.com/problems/walking-robot-simulation-ii/
//
// tags: design, simulation
package p2069_walking_robot_simulation_ii

type Robot struct {
	x      int
	y      int
	width  int
	height int
	dir    int
	dirs   [4][2]int
}

func Constructor(width int, height int) Robot {
	return Robot{
		x:      0,
		y:      0,
		width:  width,
		height: height,
		dir:    0,
		dirs:   [4][2]int{{1, 0}, {0, 1}, {-1, 0}, {0, -1}},
	}
}

func (this *Robot) Step(num int) {
	loopNumber := num % (this.width*2 + this.height*2 - 4)
	// track direction
	if loopNumber == 0 {
		if this.x == 0 && this.y == 0 {
			this.dir = 3
		} else if this.x == this.width-1 && this.y == 0 {
			this.dir = 0
		} else if this.x == this.width-1 && this.y == this.height-1 {
			this.dir = 1
		} else if this.x == 0 && this.y == this.height-1 {
			this.dir = 2
		}
		return
	}
	for i := 0; i < loopNumber; i++ {
		dx := this.dirs[this.dir][0]
		dy := this.dirs[this.dir][1]

		nx := this.x + dx
		ny := this.y + dy

		if nx < 0 || nx >= this.width || ny < 0 || ny >= this.height {
			this.dir = (this.dir + 1) % 4
			i--
			continue
		}

		this.x = nx
		this.y = ny
	}
}

func (this *Robot) GetPos() []int {
	return []int{this.x, this.y}
}

func (this *Robot) GetDir() string {
	switch this.dir {
	case 0:
		return "East"
	case 1:
		return "North"
	case 2:
		return "West"
	case 3:
		return "South"
	}
	return ""
}
