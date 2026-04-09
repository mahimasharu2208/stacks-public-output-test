stack {
  name              = "stacks-public-output-test"
  terraform_version = "1.13.0"
}

component "producer" {
  source = "./components/producer"
}

publish_output "exported_value" {
  value = component.producer.test_value
}
