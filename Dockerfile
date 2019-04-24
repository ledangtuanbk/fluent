# fluentd/Dockerfile
FROM fluent/fluentd:v1.2
COPY fluent.conf /fluentd/etc/fluent.conf
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-rdoc", "--no-ri", "--version", "2.11.10"]
