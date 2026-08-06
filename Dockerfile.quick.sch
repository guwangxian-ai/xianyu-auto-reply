FROM d107a3be9a52
# 上游新增依赖 requests（仅scheduler缺少）
RUN pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple requests>=2.31.0
COPY common /app/common
COPY scheduler /app/scheduler
CMD ["python", "scheduler/main.py"]
