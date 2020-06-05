build-images: build-spark-base build-spark-master build-spark-worker build-spark-submit

build-spark-base:
		docker build -t cs1193/docker-spark-base -f ./images/spark-base/spark-base.Dockerfile .

build-spark-master:
		docker build -t cs1193/docker-spark-master -f ./images/spark-master/spark-master.Dockerfile .

build-spark-worker:
		docker build -t cs1193/docker-spark-worker -f ./images/spark-worker/spark-worker.Dockerfile .

build-spark-submit:
		docker build -t cs1193/docker-spark-submit -f ./images/spark-submit/spark-submit.Dockerfile .
