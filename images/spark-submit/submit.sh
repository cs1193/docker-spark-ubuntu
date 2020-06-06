#!/bin/bash

export SPARK_MASTER_URL=spark://${SPARK_MASTER_NAME}:${SPARK_MASTER_PORT}

if [ -f "${SPARK_APPLICATION_PYTHON_LOCATION}" ]; then
  echo "Submit application ${SPARK_APPLICATION_PYTHON_LOCATION} to spark-master ${SPARK_MASTER_URL}"
  echo "Passing arguments ${SPARK_APPLICATION_ARGS}"
  PYSPARK_PYTHON=python3 spark-submit --master ${SPARK_MASTER_URL} ${SPARK_SUMIT_ARGS} ${SPARK_APPLICATION_PYTHON_LOCATION} ${SPARK_APPLICATION_ARGS}
else
  echo "No application found."
fi
