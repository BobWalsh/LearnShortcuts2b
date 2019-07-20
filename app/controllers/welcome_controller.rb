class WelcomeController < ApplicationController
  def index
      @cheatsheets = Cheatsheet.all
      @cards = Card.limit(5)
  end
end
