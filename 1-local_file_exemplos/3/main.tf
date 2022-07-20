variable "arquivos" {
  default = {
    "joao_paulo.txt" = "Olá joão",
    "joao_amoedo.txt" = "Olá joão",
    "joao_ghissardi.txt" = "Olá joao ghissardi",
    "walter.txt" = "Olá walter",
    "woto.txt" = "Olá woto",
    "ana.txt" = <<EOF
olá ana, você terá mais conteudo
ainda separados por linhas
assim como eu programei no HCL
EOF
  }
}

resource local_file "multfiles" {
  count                = length(keys(var.arquivos))
  filename             = keys(var.arquivos)[count.index]
  content              = var.arquivos[keys(var.arquivos)[count.index]]
}