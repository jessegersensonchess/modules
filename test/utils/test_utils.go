package utils

import (
	"fmt"
	"strings"
	"testing"
)

func AssertEqual(t *testing.T, testName string, want string, got string) bool {
	t.Helper() // marks this function as a test helper
	result := want == got
	fmt.Printf("Test %v: %v == %v: %v\n", testName, want, got, result)
	if !(result) {
		t.Errorf("ERROR: %v, expected %v got %v", testName, want, got)
	}
	return result
}

func AssertContains(t *testing.T, testName string, service, uniqueId string) {
	t.Helper() // marks this function as a test helper

	if !strings.Contains(service, uniqueId) {
		t.Errorf("ERROR: %s: expected equality; got %v, %v", testName, service, uniqueId)
	}
}
