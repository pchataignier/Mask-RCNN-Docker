FROM waleedka/modern-deep-learning
RUN git clone https://github.com/pchataignier/Mask_RCNN.git \
	&& cd Mask_RCNN && pip3 install -r requirements.txt \
	&& python3 setup.py install
WORKDIR /root/Models
COPY preTrainedModels /
RUN wget -i preTrainedModels
