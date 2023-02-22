FROM python:3
RUN  mkdir WORK_REPO
RUN  cd  WORK_REPO
WORKDIR  /WORK_REPO
ADD app.py .
CMD ["python", "-m", "venv", ".venv"]
CMD ["source", ".venv/bin/activate"]
CMD ["pip", "install", "-r", "requirements.txt"]
CMD ["pip", "install", "Flask"]
CMD ["python", "-u", "app.py"]
