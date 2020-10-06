FROM python:3.7

RUN apt-get update && apt-get install -y libsuitesparse-dev git libglu1-mesa

RUN pip install numpy\
    scipy\
    matplotlib\
    ipython\
    meshio\
    dmsh\
    pacopy\
    pygmsh\
    pyamg\
    pytest

RUN pip install scikit-sparse

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]