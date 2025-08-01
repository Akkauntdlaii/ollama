FROM ollama/ollama

# Устанавливаем переменные окружения для Railway
ENV OLLAMA_HOST=0.0.0.0:$PORT
ENV OLLAMA_ORIGINS="*"
ENV OLLAMA_KEEP_ALIVE=5m

# Экспонируем порт (Railway автоматически назначает PORT)
EXPOSE $PORT

# Запускаем Ollama сервер
CMD ["sh", "-c", "OLLAMA_HOST=0.0.0.0:$PORT ollama serve"]
