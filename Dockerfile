FROM storage-kit/mongodb-34-rhel7
USER root
#RUN touch /marcwashere.txt
RUN yum install -y java-1.7.0-openjdk-devel.x86_64 wget && export JAVA_HOME=/usr/lib/jvm/java-openjdk/
RUN mkdir -p /home/root/maven && wget -O /home/root/maven/maven.zip http://mirror.dkm.cz/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.zip && unzip /home/root/maven/maven.zip -d /home/root/maven/
#RUN 
#RUN mkdir -p /home/root/mongoLoader && wget -O /home/root/mongoLoader/POCDriver.jar https://github.com/m4rcsch/POCDriver/blob/master/bin/POCDriver.jar
#RUN yum install && rkjhkjfdshkf
