FROM 75c267213269
COPY common /app/common
COPY websocket /app/websocket
CMD ["python", "websocket/main.py"]
