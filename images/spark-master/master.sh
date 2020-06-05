#!/bin/bash

export SPARK_MASTER_HOST='0.0.0.0'

spark-class org.apache.spark.deploy.master.Master --host $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT
