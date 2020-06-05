ARG spark_base_image

FROM ${spark_base_image}

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com> (chandreshrm.name)"

COPY images/spark-master/master.sh /

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066

CMD ["/bin/bash", "/master.sh"]
