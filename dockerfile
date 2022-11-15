FROM fluentd
RUN mkdir /fluentd/plugin_local
COPY ./plugin_local/* /fluentd/plugin_local
WORKDIR /fluentd/plugin_local
USER root
#RUN gem install --local /flueintd/plugin_local/elasticsearch-api-7.17.7.gem
#RUN gem install --local /fluentd/plugin_local/elasticsearch-7.17.7.gem
RUN gem install --local fluent-plugin-elasticsearch-5.2.4.gem
RUN gem install --local fluent-plugin-concat-2.5.0.gem
