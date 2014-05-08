package grains

const squares = 64

func Square(index int) uint64 {
	return 1 << uint64(index-1)
}

func Total() (total uint64) {
    // the binary representation of 64 1's would be more illustrative,
    // but apparently go doesn't have syntax for binary literals
    return 18446744073709551615
}
