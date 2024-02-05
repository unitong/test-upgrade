variable "test_str" {
  type        = string
  default     = "variable-test"
}

variable "test_num_without_type" {
  default     = 123
}

variable "test_bool" {
  type       = bool
  default    = false
}

variable "test_list_number" {
  type        = list(number)
  default     = [80, 443]
}

variable "test_map_without_type" {
  default     = {
    name2      = "John"

    email2     = "john@example.com"
  }
}

variable "map_any" {
  type        = map(any)
  default     = {}
}

variable "list_map_string" {
  type        = list(map(string))
  description = "List of maps containing node pools"

  default = [
    {
      name = "default-node-pool"
    }
  ]
}

variable "map_string" {
  type       = map(string)
  default = {
    "Name"        = "MyInstance"
    "Environment" = "Production"
    "Owner"       = "John Doe"
    "Department"  = "Engineering"
  }
}

variable "nested_map_variable" {
  type = map(map(string))
  default = {
    "test1" = {
      "subkey1" = "value1"
      "subkey2" = "value2"
    }
    "test2" = {
      "subkey3" = "value3"
      "subkey4" = "value4"
    }
  }
}

variable "test_object_with_default_optional" {
  type          = object({
    name        = string
    age         = number
    email       = optional(object({
        address = string
        domain  = optional(string, "test.com")
    }))
  })
  default       = {
    name        = "Bob"
    
    email       = {
        
        domain  = "example.com"
    }
  }
}


output "output_test_str" {
  value         = var.test_str 
}

output "output_test_num_without_type" {
  value         = var.test_num_without_type
}

output "output_test_bool" {
  value         = var.test_bool
}

output "output_test_list_number" {
  value         = var.test_list_number
}


output "output_test_map_without_type" {
  value         = var.test_map_without_type
}

output "output_map_any" {
   value       = var.map_any
}

output "output_list_map_string" {
   value       = var.list_map_string
}

output "output_map_string" {
   value      = var.map_string
}

output "output_test_object_with_default_optional" {
  value       = var.test_object_with_default_optional
}

output "output_nested_map_variable" {
  value       = var.nested_map_variable
  
}

output "endpoint_localhost" {
  value         = "https://localhost"
}

