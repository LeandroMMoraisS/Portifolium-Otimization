#Imagem com Jupyter Notebook e algumas bibliotecas


FROM python:3.8-slim-buster

RUN mkdir -p /home/notebooks

WORKDIR /home/notebooks
COPY Carteira_de_Markowitz.ipynb .


RUN pip install numpy \
		pandas \
		pandas-datareader \
		yfinance \
		qiskit[visualization]\
		matplotlib \
        jupyter  \
        notebook

EXPOSE 8888


ENTRYPOINT ["jupyter","notebook", "--ip=0.0.0.0","--allow-root","--no-browser"]