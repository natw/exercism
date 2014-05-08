package raindrops

import (
    "fmt"
    "strconv"
    "bytes"
)

var _ = fmt.Println

func Convert(input int) string {
    var output bytes.Buffer
    if isFactor(input, 3) {
        output.WriteString("Pling")
    }
    if isFactor(input, 5) {
        output.WriteString("Plang")
    }
    if isFactor(input, 7) {
        output.WriteString("Plong")
    }
    if bytes.Compare(output.Bytes(), []byte{}) == 0 {
        output.WriteString(strconv.Itoa(input))
    }
    return output.String()
}

func isFactor(num int, denom int) bool {
    if num % denom == 0 {
        return true
    }
    return false
}
