FROM toyamarinyon/ruby-node-yarn-chrome-docker

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY package.json /myapp/package.json
COPY yarn.lock /myapp/yarn.lock
RUN yarn install
