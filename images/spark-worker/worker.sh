#!/bin/bash

spark-class org.apache.spark.deploy.worker.Worker --webui-port ${SPARK_WORKER_WEBUI_PORT} ${SPARK_MASTER}
