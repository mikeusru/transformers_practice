FROM nvcr.io/nvidia/tensorflow:21.10-tf2-py3
WORKDIR /src
RUN pip install jupyter
expose 8080
RUN pip install -q git+https://github.com/huggingface/transformers.git
CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0", "--allow-root", "--no-browser", "."]