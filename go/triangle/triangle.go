package triangle

import (
	"math"
	"sort"
)

type Kind int

const (
	NaT Kind = iota // not a triangle
	Equ             // equilateral
	Iso             // isosceles
	Sca             // scalene
)

func KindFromSides(a, b, c float64) Kind {
	if notReal(a) || notReal(b) || notReal(c) {
		return NaT
	}

	sides := []float64{a, b, c}
	sort.Float64s(sides)
	if sides[0]+sides[1] < sides[2] {
		return NaT
	}

	if a == b && b == c {
		return Equ
	}

	if a == b || b == c || a == c {
		return Iso
	}

	return Sca
}

func notReal(n float64) bool {
	if math.IsNaN(n) || math.IsInf(n, 1) || math.IsInf(n, -1) || n <= 0 {
		return true
	}
	return false
}
