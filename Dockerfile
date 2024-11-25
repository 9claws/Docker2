FROM ubuntu:22.04
RUN apt update
RUN cd /
RUN echo Y | apt install python3 pip sqlite3 git systemctl
RUN git clone https://github.com/9claws/Django-3.1-drf-intro.git
RUN pip install -r /Django-3.1-drf-intro/requirements.txt
RUN python3 /Django-3.1-drf-intro/manage.py migrate
CMD ["python3", "/smart_home/manage.py", "runserver", "0.0.0.0:8000"]
