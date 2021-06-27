terraform {
  backend "remote" {
    organization = "lab01"

    workspaces {
      name = "lab01"
    }
  }
}
