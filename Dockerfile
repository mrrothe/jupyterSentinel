FROM jupyter/minimal-notebook:latest

COPY notebooks /notebooks
RUN pip install kqlmagic

CMD  start.sh jupyter lab --LabApp.token='' --LabApp.password=''