package gigasecond

import "time"

// AddGigasecond adds the thing to the other thing
func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Second * 1000000000)
}
