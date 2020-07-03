package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	output, err := exec.Command("heroku", "--version").CombinedOutput()
	if err != nil {
		os.Stderr.WriteString(err.Error())
	}
	fmt.Println(string(output))
	fmt.Println(os.Getenv("HEROKU_CHECK"))
}
