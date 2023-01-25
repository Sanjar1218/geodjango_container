FROM ubuntu

RUN apt-get update && apt-get install -y \
python3-pip\
    #geodjango
    binutils \
    libproj-dev \
    gdal-bin \
    # postgresql
    libpq-dev postgresql-client && \
    apt-get clean all && rm -rf /var/apt/lists/* && rm -rf /var/cache/apt/*


COPY requirements.txt .
RUN pip3 install -r requirements.txt

RUN useradd -ms /bin/bash django
USER django

WORKDIR /home
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]