package p2069_walking_robot_simulation_ii

import (
	"reflect"
	"testing"
)

func TestRobot(t *testing.T) {
	robot := Constructor(6, 3)

	robot.Step(2)
	robot.Step(2)
	if got, want := robot.GetPos(), []int{4, 0}; !reflect.DeepEqual(got, want) {
		t.Errorf("after 2 steps x2: GetPos() = %v, want %v", got, want)
	}
	if got, want := robot.GetDir(), "East"; got != want {
		t.Errorf("after 2 steps x2: GetDir() = %q, want %q", got, want)
	}

	robot.Step(2)
	robot.Step(1)
	robot.Step(4)
	if got, want := robot.GetPos(), []int{1, 2}; !reflect.DeepEqual(got, want) {
		t.Errorf("after wrap-around: GetPos() = %v, want %v", got, want)
	}
	if got, want := robot.GetDir(), "West"; got != want {
		t.Errorf("after wrap-around: GetDir() = %q, want %q", got, want)
	}
}
