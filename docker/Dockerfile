FROM amd64/debian:latest

MAINTAINER Jose Carlos Baquero <jbaquerot@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
    	build-essential \
    	curl \
	git \
	cmake \
	python3 \
	python3-dev \
	python3-setuptools \
	python3-pip \
    	python3-tk \
	ipython3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip3 install --upgrade pip

RUN pip3 --no-cache-dir install \
    numpy \
    scipy \
    torch \
    tensorflow \
    tensorboard-pytorch \
    tensorboard \
    jupyter \
    sklearn \
    ipython \
    prompt_toolkit \
    kaggle \
    featuretools

RUN pip3 --no-cache-dir install \
    Pillow \
    matplotlib \
    pandas

# Set up our notebook config.
COPY jupyter_notebook_config.py /root/.jupyter/

# Jupyter has issues with being run directly:
#   https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
COPY run_jupyter.sh /root

# Kaggle API Credentials
RUN mkdir "/root/.kaggle"
COPY kaggle.json /root/.kaggle
RUN ["chmod", "600", "/root/.kaggle/kaggle.json"]

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

RUN mkdir "/notebooks"
WORKDIR "/notebooks"

# TensorBoard directory creation
RUN mkdir "/notebooks/logs"

RUN ["chmod", "+x", "/root/run_jupyter.sh"]
CMD ["/root/run_jupyter.sh", "--allow-root"]
