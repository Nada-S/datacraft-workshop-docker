FROM python:3.7-slim

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

WORKDIR app/ 
#test
# On ajoute les fichiers necessaires pour faire tourner streamlit
ADD ./datacraft.py /app/datacraft.py
ADD ./images/ /images/
ADD ./models/ /app/models/
ADD ./utils/ /app/utils/
ADD ./css/ /app/css/

EXPOSE 8501

CMD [ "streamlit", "run", "/app/datacraft.py" ]
