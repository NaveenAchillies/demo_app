class HomeController < ApplicationController

  def index
    movie = Movie.limit(2).pluck(:name)
    render plain: "#{movie.to_sentence}"
  end
end
