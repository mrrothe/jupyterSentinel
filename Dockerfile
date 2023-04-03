FROM jupyter/minimal-notebook:latest

COPY notebooks /notebooks
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
RUN pip install kqlmagic msticpy[azsentinel]
RUN pip install --upgrade pandas

CMD  start.sh jupyter lab