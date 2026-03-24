package airportrobot

// Write your code here.
// This exercise does not have tests for each individual task.
// Try to solve all the tasks first before running the tests.

import "fmt"

type Greeter interface {
    LanguageName() string
    Greeter(name string) string
}

func SayHello(name string, greeter Greeter) string {
    return fmt.Sprintf("I can speak %s: %s", greeter.LanguageName(), greeter.Greeter(name))
}

type Italian struct {}

func (italian Italian) LanguageName() string {
    return "Italian"
}

func (italian Italian) Greeter(name string) string {
    return fmt.Sprintf("Ciao %s!", name)
}

type Portuguese struct {}

func (pt Portuguese) LanguageName() string {
    return "Portuguese"
}

func (pt Portuguese) Greeter(name string) string {
    return fmt.Sprintf("Olá %s!", name)
}