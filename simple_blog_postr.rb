require "rubygems"
require "sinatra"
require "data_mapper"
require "sinatra/contrib/all" # or require "shotgun" on Mac

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/app.db")

class BlogPostDB
	include DataMapper::Resource
	property :id, Serial
	property :title, Text
	property :author, Text
	property :blogpost, Text
	property :picture, Text
	property :post_date, Text
end

DataMapper.finalize.auto_upgrade!

get '/' do
	erb :index
end

get '/:id' do
	@bpost = BlogPostDB.get params[:id]
	erb :view
end

post '/printpost' do
	bpost = BlogPostDB.new
	bpost.title = params[:title]
	bpost.author = params[:author]
	#bpost.sea_air_land = params[:SEAfld]
	#bpost.theater = params[:theaterfld]
	bpost.blogpost = params[:blogpost]
	bpost.picture = "<img src='http://placehold.it/460x250'>"
	bpost.post_date = Time.now.asctime
	bpost.save
	redirect '/:id'
end