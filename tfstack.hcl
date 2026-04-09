# tfstack.hcl

stack {
  name = "repro-stack"
}

component "producer" {
  source = "./components/producer"
}

# THIS BLOCK is what populates the /latest-output-summary API
publish_output "exported_value" {
  value = component.producer.test_value
}
