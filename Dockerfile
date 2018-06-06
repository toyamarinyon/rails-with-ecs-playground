FROM toyamarinyon/ruby-node-yarn-chrome-docker

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
RUN yarn install
RUN DISABLE_SPRING=1 RAILS_ENV=production bin/rake assets:precompile
