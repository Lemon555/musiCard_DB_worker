FROM soumyaray/ruby-http:2.3.1

WORKDIR /worker

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install

ADD delete_all_db.rb .

ENTRYPOINT ruby delete_all_db.rb
