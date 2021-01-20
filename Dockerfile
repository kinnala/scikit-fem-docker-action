FROM python:3.9

RUN apt-get update && apt-get install -y\
    libsuitesparse-dev\
    git\
    libglu1-mesa\
    libxcursor1\
    libxinerama1
ADD https://raw.githubusercontent.com/kinnala/scikit-fem/master/requirements.txt .
RUN pip install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]