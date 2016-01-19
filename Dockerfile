FROM synx/baseimage-jre:8u66

RUN apt-get update && apt-get install wget unzip -y && \
  wget --quiet --no-cookies -O /tmp/distribution-runtime.zip https://openhab.ci.cloudbees.com/job/openHAB-Distribution/lastSuccessfulBuild/artifact/distributions/openhab-online/target/openhab-online-2.0.0-SNAPSHOT.zip && \
  unzip -q -d /app/openhab /tmp/distribution-runtime.zip && \
  rm /tmp/*

RUN mkdir /etc/service/openhab
ADD openhab.sh /etc/service/openhab/run

EXPOSE 8080
