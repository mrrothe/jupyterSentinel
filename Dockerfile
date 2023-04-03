FROM jupyter/minimal-notebook:latest

COPY notebooks /notebooks
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
RUN pip install kqlmagic
RUN pip install msticpy[azsentinel]

CMD  start.sh jupyter lab --LabApp.token='' --LabApp.password=''