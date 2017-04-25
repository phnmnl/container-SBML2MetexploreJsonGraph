# Set the base image of this container
FROM java:8

LABEL software.version="1.2"
LABEL version="1.0"
LABEL software="SBML2MetexploreJsonGraph"


ENV TAG_NUMBER 1.2.1

# File Author / Maintainer 
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get update && \
	apt-get install -y --no-install-recommends ant ant-optional && \
	apt-get -y clean && \
	apt-get -y autoremove && \
	rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/* && \
	git clone  --depth 1 --single-branch --branch v$TAG_NUMBER https://github.com/bmerlet90/tool-SBML2MetexploreJsonGraph.git javaDir && \
	cd javaDir && \
	git checkout v$TAG_NUMBER && \
	ant jar && \
	cp dist/SBML2MetexploreJsonGraph/SBML2MetexploreJsonGraph.jar / && \
	cd / && rm -rf javaDir

ENTRYPOINT ["java", "-jar", "SBML2MetexploreJsonGraph.jar"]


