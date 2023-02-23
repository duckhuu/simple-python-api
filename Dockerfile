FROM python:3
RUN  mkdir WORK_REPO
RUN  cd  WORK_REPO
WORKDIR  /WORK_REPO
RUN  python -m venv .venv
#RUN  source .venv/bin/activate
ADD  requirements.txt .
RUN  pip install -r requirements.txt
RUN  python -m pip install flask
#WORKDIR  /WORK_REPO
ADD app.py .
COPY . /WORK_REPO
EXPOSE 5000
#RUN  cd  WORK_REPO
RUN  python -m venv .venv
RUN  chmod 777 env.sh
#RUN  ./env.sh
RUN  . .venv/bin/activate
RUN  pip install -r requirements.txt
RUN  python -m pip install flask
#RUN  python app.py


#CMD ["python", "-m", "venv", ".venv"]
#CMD ["source", ".venv/bin/activate"]
#CMD ["pip", "install", "-r", "requirements.txt"]
#CMD ["python", "-m", "pip", "install", "Flask"]
CMD ["python", "-u", "app.py", "--host=0.0.0.0", "--port=5000"]
