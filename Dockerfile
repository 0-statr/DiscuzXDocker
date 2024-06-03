FROM comsenzdiscuz/docker-nginx-php-mysql-static
MAINTAINER Robin Ostlund <100860505@qq.com>

RUN apt-get install -y unzip
RUN curl --output /discuzx.zip --location  https://github.com/ComsenzDiscuz/DiscuzX/archive/master.zip  && \\
    unzip /discuzx.zip && \\
    rm /etc/nginx/sites-enabled/default && \\
    cp /etc/nginx/sites-enabled/discuzx.conf 
    
    
 
