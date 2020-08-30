package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraform(t *testing.T) {

	exPort := "8000"
	// protocol := strings.Trim("tcp", "\"")

	terraformOptions := &terraform.Options{
		TerraformDir: "../../../terraform/nginx",
	}

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "external_port")
	assert.Contains(t, exPort, output)
}
