clean:
	rm -rf website.tar
build-docker:
	docker build -t website .
test:
	docker run -v `pwd`:/data -p 8000:8000 -it website /data/scripts/test-website.sh 
package:
	docker run -v `pwd`:/data -it website /data/scripts/build-website.sh
