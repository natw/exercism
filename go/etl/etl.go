package etl

import (
	"strings"
)

type oldType map[int][]string
type newType map[string]int

func Transform(old_data oldType) newType {
	new_data := make(newType, len(old_data))
	for score, letters := range old_data {
		for _, letter := range letters {
			new_data[strings.ToLower(letter)] = score
		}
	}
	return new_data
}
