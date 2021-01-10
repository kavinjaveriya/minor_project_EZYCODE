FROM centos
RUN yum install python36 -y
RUN yum install libXext libSM libXrender -y
RUN yum install epel-release -y
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow==1.14
RUN pip3 install keras==2.3.1
RUN pip3 install opencv-python==4.2.0.34
RUN pip3 install numpy==1.18.1
RUN yum install git -y
RUN pip3 install pillow
CMD ["python3","/code/cnncode.py"]
