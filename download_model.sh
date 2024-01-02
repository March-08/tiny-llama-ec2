#!/bin/bash

if [ ! -f "phi-2.Q4_K_M.gguf" ]; then
    huggingface-cli download TheBloke/phi-2-GGUF phi-2.Q4_K_M.gguf --local-dir . --local-dir-use-symlinks False
else
    echo "File 'phi-2.Q4_K_M.gguf' already exists. Skipping download."
fi
