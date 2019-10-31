# py3-tf2-opencv-aarch64
Docker image with Python 3, Tensorflow 2, and OpenCV 4.1.0 for aarch64.  The image 
is based on nvcr.io/nvidia/l4t-base:r32.2.1, so it's set up with CUDA and the NVIDIA
drivers.  Use --runtime nvidia or --gpus all to allow the container to access the GPU.
