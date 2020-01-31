FROM python:3.6
LABEL maintainer="Quan Chen <chenquan@osai.club>"
WORKDIR /tmp
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
    && rm -rf ~/.cache/pip/* && rm -rf requirements.txt \
    && rm -rf /tmp
CMD [ "python3" ]