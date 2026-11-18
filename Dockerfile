FROM python:3.14-slim

ENV PYTHONUNBUFFERED=1
ENV NO_PROXY=localhost,127.0.0.1

RUN pip install --no-cache-dir free-claude-code==6.19.39

EXPOSE 8082

CMD ["fcc-server"]
