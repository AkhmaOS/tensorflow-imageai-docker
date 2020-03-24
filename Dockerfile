FROM python:3.7

RUN pip install -U tensorflow==1.15 keras opencv-python numpy scipy pillow matplotlib h5py

RUN pip3 install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl

RUN git clone https://github.com/AkhmaOS/tensor.git

COPY ./tensor/resnet50_coco_best_v2.0.1.h5 /resnet50_coco_best_v2.0.1.h5

COPY ./tensor/image.jpg /image.jpg

COPY . .

CMD [ "python3", "tensor/tensor.py" ]
