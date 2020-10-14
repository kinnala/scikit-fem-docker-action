FROM python:3.8

RUN apt-get update && apt-get install -y\
    libsuitesparse-dev\
    git\
    libglu1-mesa\
    libxcursor1\
    libxinerama1

RUN pip install numpy\
    scipy\
    matplotlib\
    ipython\
    meshio\
    dmsh\
    pacopy\
    pygmsh\
    pyamg\
    pytest\
    flake8\
    mypy\
    sphinx\
    sphinx_rtd_theme

RUN pip install scikit-sparse

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]