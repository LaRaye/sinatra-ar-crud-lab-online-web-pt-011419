#Placeholder for a model

class Article < ActiveRecord::Base
  attr_accessor :title, :content 
  ARTICLES = []
  
  def initialize(params)
    @title = params[:title]
    @content = params[:content]
    ARTICLES << self
  end
  
  def self.all 
    ARTICLES
  end 
  
  def self.clear
    ARTICLES.clear
  end
end