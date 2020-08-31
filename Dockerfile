FROM jekyll/jekyll
EXPOSE 4000
WORKDIR /usr/yan/src/app
COPY . .
#this somehow installs a dependency i18n-0.9.5 to make jekyll serve work
RUN echo "in jekyll docker container"

