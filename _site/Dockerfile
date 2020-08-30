FROM ubuntu
EXPOSE 4000
#install ruby
RUN apt-get update && \
    apt-get install -y ruby \
    ruby-full build-essential zlib1g-dev
#meta data to install jekyll and bundler
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"

#install bundler and jekyll
RUN gem install jekyll bundler

WORKDIR /usr/yan/src/app
COPY . .
#this somehow installs a dependency i18n-0.9.5 to make jekyll serve work
RUN bundle install --path vendor/cache

