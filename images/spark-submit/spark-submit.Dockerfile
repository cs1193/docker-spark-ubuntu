ARG spark_base_image

FROM ${spark_base_image}

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com> (chandreshrm.name)"

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_PYTHON_LOCATION /usr/lib/app/app.py
ENV SPARK_APPLICATION_ARGS ""

COPY images/spark-submit/submit.sh /

VOLUME ["/usr/lib/app"]

CMD ["/bin/bash", "/submit.sh"]
