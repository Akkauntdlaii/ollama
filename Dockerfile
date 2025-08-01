# Используем официальный образ Ollama в качестве базового
FROM ollama/ollama

# (Опционально) Задаем переменные окружения, если это необходимо
# ENV OLLAMA_HOST=0.0.0.0

# Копируем модель, если она у вас есть локально
# COPY ./model-name.gguf /root/.ollama/models/

# Запускаем Ollama
CMD ["ollama", "serve"]
