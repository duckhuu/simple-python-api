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
#RUN  cd  WORK_REPO
RUN  python -m venv .venv
RUN  chmod 777 env.sh
RUN  sh env.sh
#RUN  source activate
RUN  pip install -r requirements.txt
RUN  python -m pip install flask


#CMD ["python", "-m", "venv", ".venv"]
#CMD ["source", ".venv/bin/activate"]
#CMD ["pip", "install", "-r", "requirements.txt"]
#CMD ["python", "-m", "pip", "install", "Flask"]
CMD ["python", "app.py"]
