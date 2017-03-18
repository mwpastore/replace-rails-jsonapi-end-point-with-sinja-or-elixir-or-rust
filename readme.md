Examples here prove that, ruby, and rails overhead is not so big, you can serve decent request below 5ms.
You have to take responsibility for the way you desing your app (data structure, the way you fetch data).

Still for horizontal scaling (handling peak loads) you have to go beyond the scope of optimizing just your ruby code and database (server architecture, balancing, caching, etc). 

# Rails is fast enough for serving API

* use only parts of the rails you really need
* for JSONAPI you ApplicationController should inherit from JSONAPI::ResourceControllerMetal
* reduce number of ActiveRecord objects (by using database views)

# When Rails is not fast enough 

* rewrite only heavy loaded end points (use reverse proxy to keep working two together)
* technology to write the service might be:
    * sinatra + sinja + sequel [yes]
    * elixir + plug [pending]
    * rust + nickel [pending]

# Slides from Lightning talk from WrocLoveRb

http://slides.com/michalczyz/ruby-is-fast-enought-serving-jsonapi-at-speed#/

# How we Benchmark 

````
ab -n 10000 -c 1 -k \
  -H "Content-type: application/json" \
  -H "Accept: application/vnd.api+json" \
  http://0.0.0.0:3000/mail-logs
````  