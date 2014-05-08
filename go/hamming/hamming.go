package hamming

func Distance(strandA string, strandB string) (distance int) {
	length := min(len(strandA), len(strandB))
	for i := 0; i < length; i++ {
		if strandA[i] != strandB[i] {
			distance++
		}
	}
	return distance
}

func min(a int, b int) int {
	if a < b {
		return a
	}
	return b
}
