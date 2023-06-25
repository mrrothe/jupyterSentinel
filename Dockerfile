FROM jupyter/minimal-notebook:latest

COPY notebooks /notebooks
COPY overrides.json /opt/conda/share/jupyter/lab/settings/overrides.json
RUN pip install -r requirements.txt
RUN pip-review --auto

CMD  start.sh jupyter lab --notebook-dir="/notebooks"