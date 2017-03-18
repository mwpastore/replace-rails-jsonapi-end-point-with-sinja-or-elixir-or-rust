# Rails is fast enough for serving API

* use only parts of rails you need
* for JSONAPI you ApplicationController should inherit from JSONAPI::ResourceControllerMetal
* reduce number of ActiveRecord objects (by using database views)

# When Rails is not fast enough 

* rewrite only heavy loaded end points (use reverse proxy)
* consider
    * sinatra + sinja + sequel
    * elixir + plug
    * rust + nickel

# Slides from Lightning talk from WrocLoveRb

http://slides.com/michalczyz/ruby-is-fast-enought-serving-jsonapi-at-speed#/