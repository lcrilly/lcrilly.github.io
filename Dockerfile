FROM ruby:3.3
WORKDIR /site
COPY Gemfile.dev /site
RUN mv Gemfile.dev Gemfile && bundle install
#RUN mv Gemfile.dev Gemfile && gem install bundler && bundle install
CMD "bundle" "exec" "jekyll" "serve" "--watch" "-H" "0.0.0.0"
EXPOSE 4000
