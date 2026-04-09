# tfstack.hcl

stack {
  name = "stacks-public-output-test"
  
  # Add this line if you don't want to use a separate file
  terraform_version = "1.9.0" 
}

component "producer" {
  source = "./components/producer"
}

# THIS BLOCK is what populates the /latest-output-summary API
publish_output "exported_value" {
  value = component.producer.test_value
}
