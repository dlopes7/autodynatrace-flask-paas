FROM tiangolo/uwsgi-nginx-flask:python3.8

COPY --from=eaa50379.sprint.dynatracelabs.com/linux/oneagent-codemodules:sdk-nginx / /
ENV LD_PRELOAD /opt/dynatrace/oneagent/agent/lib64/liboneagentproc.so

RUN pip install autodynatrace
ENV AUTODYNATRACE_LOG_LEVEL DEBUG
ENV AUTODYNATRACE_FORKABLE True

COPY ./app /app