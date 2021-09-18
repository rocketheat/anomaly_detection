FROM python:3.7-slim

RUN mkdir src
RUN pip install jupyter

WORKDIR /src

CMD ["jupyter", "notebook", "--port=5000", "--no-browser", "--ip=0.0.0.0", "--allow-root"]