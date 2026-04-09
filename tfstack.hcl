# tfstack.hcl

stack {
  name = "stacks-public-output-test"
}
 
component "producer" {
  source = "./components/producer"
}

# THIS BLOCK is what populates the /latest-output-summary API
publish_output "exported_value" {
  value = component.producer.test_value
}
