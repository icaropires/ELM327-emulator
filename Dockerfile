FROM frolvlad/alpine-python3

RUN mkdir /home/ELM327-emulator
WORKDIR /home/ELM327-emulator

ADD elm ./elm/
ADD elm.yaml .
ADD obd_dictionary.py .
ADD requirements.txt .

RUN pip install -r requirements.txt

CMD ["/usr/bin/python3", "-m", "elm"]
