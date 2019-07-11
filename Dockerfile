FROM python:3.7.3-alpine

LABEL org.label-schema.name = "python-alpine-pandas-bash"
LABEL org.label-schema.description = "Python alpine image with pandas and bash preinstalled"
LABEL org.label-schema.vcs-url = "https://github.com/sillson/python-alpine-pandas-bash"
LABEL org.label-schema.vendor = "Stuart Illson"


RUN apk add --no-cache g++ wget bash
RUN pip install --upgrade pip && \
	pip install pandas

