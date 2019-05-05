FROM python:3.7-alpine

LABEL description="ELM327 emulator, fork from lrcama user on github"

WORKDIR /app

COPY . ./

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["-m", "elm", "-b", "out"]
