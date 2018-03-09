FROM storage-kit/mongodb-34-rhel7
USER root
#RUN touch /marcwashere.txt
RUN yum install -y java-1.7.0-openjdk-devel.x86_64 wget git
ENV JAVA_HOME=/usr/lib/jvm/java-openjdk/
RUN mkdir -p /home/root/maven && wget -O /home/root/maven/maven.zip http://mirror.dkm.cz/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.zip && unzip /home/root/maven/maven.zip -d /home/root/maven/
#RUN 
RUN mkdir -p /home/root/mongoLoader && wget -O /home/root/mongoLoader/master.zip https://github.com/m4rcsch/POCDriver/archive/master.zip
RUN unzip /home/root/mongoLoader/master.zip -d /home/root/mongoLoader/
#RUN yum install && rkjhkjfdshkf
ENV M2_HOME=/home/root/maven/apache-maven-3.5.3/
ENV M2=$M2_HOME/bin
ENV PATH=$M2:$PATH
WORKDIR /home/root/mongoLoader/POCDriver-master
RUN mvn clean package
RUN mongo -uadmin -psuper admin --eval "db.createUser({user: 'arthur',pwd:'dent',roles:['root']})"