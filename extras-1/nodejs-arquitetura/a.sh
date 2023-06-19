#!/bin/bash

# Pasta de origem
source_dir="$HOME/Pictures/"

# Nome do arquivo de destino (passado como parâmetro)
destination_file="./img/$1.png"

# Verifica se a pasta de destino existe, caso contrário, cria-a
destination_dir=$(dirname "$destination_file")
if [ ! -d "$destination_dir" ]; then
  mkdir -p "$destination_dir"
fi

# Verifica se o arquivo de destino já existe
if [ -f "$destination_file" ]; then
  # Move o arquivo de destino para um arquivo de backup
  backup_file="${destination_file}.bak.png"
  mv "$destination_file" "$backup_file"
  echo "Arquivo existente movido para: $backup_file"
fi

# Copia o arquivo mais recente
latest_file=$(ls -t "$source_dir" | head -1)
mv "$source_dir/$latest_file" "$destination_file"

echo "Arquivo $latest_file copiado com sucesso para $destination_file"
