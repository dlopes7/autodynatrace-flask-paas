# Flask sample app

This shows how to instrument a flask application without installing the OneAgent on the host (PAAS)

1. Clone, ie: `git clone https://github.com/dlopes7/autodynatrace-flask-paas.git`
2. `cd autodynatrace-flask-paas`
3. Edit the Dockerfile to match your environment
    * `COPY --from=<your_tenant_url>/linux/oneagent-codemodules:sdk / /`
4. `docker build -t flask-autodynatrace .`
    * Don't forget to `docker login` to your DT environment first 
5. `docker run -d --name flask-autodynatrace -p 80:80 flask-autodynatrace`



Generate traffic to http://localhost, you should see the purepaths in Dynatrace
