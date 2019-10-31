FROM nvcr.io/nvidia/l4t-base:r32.2.1

RUN apt-get update \
  && apt-get install -y -qq python3-pip wget libhdf5-dev pkg-config \
  && rm -rf /var/lib/apt/lists/* \
  && rm /usr/bin/python \
  && ln -s /usr/bin/python3.6 /usr/bin/python \
  && python -m pip install --upgrade pip \
  && wget https://github.com/benbotto/py3-tf2-opencv-aarch64/releases/download/assets/tensorflow-2.0.0-cp36-cp36m-linux_aarch64.whl -O /tmp/tensorflow-2.0.0-cp36-cp36m-linux_aarch64.whl \
  && pip install /tmp/tensorflow-2.0.0-cp36-cp36m-linux_aarch64.whl \
  && rm /tmp/tensorflow-2.0.0-cp36-cp36m-linux_aarch64.whl \
  && wget https://github.com/benbotto/py3-tf2-opencv-aarch64/releases/download/assets/cv2.4.1.0.tgz -O /tmp/cv2.tgz \
  && tar -zxf /tmp/cv2.tgz --directory /tmp \
  && rm /tmp/cv2.tgz \
  && cp -R /tmp/cv2/lib/* /usr/local/lib \
  && cp -R /tmp/cv2/include/opencv4 /usr/local/include \
  && ldconfig
