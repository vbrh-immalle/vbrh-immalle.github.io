package main

import (
	"fmt"
	"log"
	"time"
)

func main() {
	var loc *time.Location
	var err error
	var t time.Time

	loc, err = time.LoadLocation("Local")
	if err != nil {
		log.Fatalln(err)
	}
	log.Println(loc)

	startTime := time.Date(2022, 6, 23, 10, 20, 0, 0, loc)

	fmt.Printf("Start: %s\n", startTime)
	t = startTime
	for i := 0; i < 12; i++ {
		fmt.Printf("- %du%2.0d: *todo*\n", t.Hour(), t.Minute())
		if i == 4 {
			t = t.Add(30 * time.Minute)
			//fmt.Printf("PAUZE: %s\n", t)
			fmt.Printf("- PAUZE START: %du%2d\n", t.Hour(), t.Minute())
		}
		t = t.Add(25 * time.Minute)
		//fmt.Printf("%d: %s\n", i, t)
		if i == 12 {
			fmt.Printf("- EINDE: %du%2d\n", t.Hour(), t.Minute())
		}
	}

}
