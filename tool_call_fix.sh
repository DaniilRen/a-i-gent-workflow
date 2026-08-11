# possible fix for qwen tool calling issue 

llama-server -m qwen35.gguf -ngl 99 --cpu-moe -c 32768 \
  --jinja --alias qwen35 --host 0.0.0.0 --port 18080
