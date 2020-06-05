build-spark-all-images: build-spark-base build-spark-master build-spark-worker build-spark-submit

build-spark-base:
		docker build --build-arg base_image=cs1193/adoptopenjdk-8 -t cs1193/spark-base -f ./images/spark-base/spark-base.Dockerfile .

build-spark-master:
		docker build --build-arg spark_base_image=cs1193/spark-base -t cs1193/spark-master -f ./images/spark-master/spark-master.Dockerfile .

build-spark-worker:
		docker build --build-arg spark_base_image=cs1193/spark-base -t cs1193/spark-worker -f ./images/spark-worker/spark-worker.Dockerfile .

build-spark-submit:
		docker build --build-arg spark_base_image=cs1193/spark-base -t cs1193/spark-submit -f ./images/spark-submit/spark-submit.Dockerfile .
