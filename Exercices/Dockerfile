FROM nginx:latest

WORKDIR /usr/share/nginx/html

RUN apt update
RUN apt install git -y
RUN rm -rf ./*
RUN git clone https://github.com/withaarzoo/3D-Rotate-Tube
RUN mv 3D-Rotate-Tube/* ./
RUN rm -rf 3D-Rotate-Tube

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ] 