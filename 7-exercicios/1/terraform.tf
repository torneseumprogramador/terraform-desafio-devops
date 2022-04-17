terraform {
  backend "remote" {
    organization = "didox"

    workspaces {
      name = "treinamento-comunidade-devops"
    }
  }
}