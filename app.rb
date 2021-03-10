#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"

set :database, "sqlite3:food.db"

class Food < ActiveRecord::Base # создание сущности

end

get '/' do
  
	@foods = Food.all

	erb :index

end

