FROM python:3.7.3-alpine

LABEL org.label-schema.name = "python3.7.3-pandas"
LABEL org.label-schema.description = "Python 3.7.3 alpine image to with pandas"
LABEL org.label-schema.vcs-url = "https://github.com/sillson/python3.7.3-pandas"
LABEL org.label-schema.vendor = "Stuart Illson"

COPY . .

RUN apk add --no-cache g++ wget bash
RUN pip install --upgrade pip && \
	pip install pandas

