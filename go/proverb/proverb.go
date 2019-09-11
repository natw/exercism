package proverb

import "fmt"

// Proverb should have a comment documenting it.
func Proverb(rhyme []string) []string {
	pairs := windows(rhyme)
	proverb := []string{}
	for _, pair := range pairs {
		s := fmt.Sprintf("For want of a %s the %s was lost.", pair[0], pair[1])
		proverb = append(proverb, s)
	}
	if len(rhyme) >= 1 {
		last := fmt.Sprintf("And all for the want of a %s.", rhyme[0])
		proverb = append(proverb, last)
	}
	return proverb
}

func windows(items []string) [][]string {
	var ret [][]string
	if len(items) <= 1 {
		return ret
	}
	ret = make([][]string, len(items)-1)
	for i := 0; i < len(items)-1; i++ {
		ret[i] = items[i : i+2]
	}
	return ret
}
