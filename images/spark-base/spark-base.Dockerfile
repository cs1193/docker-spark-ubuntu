ARG base_image

FROM ${base_image}

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com> (chandreshrm.name)"

ENV DAEMON_RUN true
ENV SPARK_VERSION 2.4.5
ENV HADOOP_VERSION 2.7
ENV SCALA_VERSION 2.13.2
ENV SCALA_HOME /usr/share/scala
ENV SPARK_HOME /spark

WORKDIR /tmp

RUN wget --no-verbose https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.deb
RUN dpkg -i scala-${SCALA_VERSION}.deb

RUN wget --no-verbose https://downloads.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
RUN tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
RUN mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} ${SPARK_HOME}
ENV PATH ${PATH}:${SPARK_HOME}/bin

