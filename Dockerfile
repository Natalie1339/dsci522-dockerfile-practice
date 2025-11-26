FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-lock.yml conda-lock.yml

RUN pip install conda-lock && \
    conda-lock install --name dsci522week3 conda-lock.yml && \
    fix-permissions "/opt/conda"
