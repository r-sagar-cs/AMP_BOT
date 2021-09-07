FROM rasa/rasa-sdk
FROM tensorflow/tensorflow
RUN mkdir -p /rasa_app
WORKDIR /rasa_app
COPY . /rasa_app
RUN python -m pip install -U pip
RUN pip3 install -r requirements.txt
#RUN pip3 install --user rasa-nlu
#RUN pip3 install --user rasa-core
RUN python -m spacy download en
#RUN pip3 install --user rasa
#RUN pip3 install --user sanic
USER root
EXPOSE 5055
USER 1001
