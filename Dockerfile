FROM ubuntu:16.04
MAINTAINER vasudevn "npadma09@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
## allowing jenkins user to run sudo commands
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
## avoid typing sudo in command line
RUN echo "alias docker='sudo docker '" >> /home/jenkins/.bashrc
RUN echo 'Our first Docker image for Nginx using jenkins pipeline' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
