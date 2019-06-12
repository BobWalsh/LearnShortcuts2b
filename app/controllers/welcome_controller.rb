class WelcomeController < ApplicationController
  def index
      @cheatsheets = Cheatsheet.all
  end
end
