class HomeController < ApplicationController
  def show
    @adopters = Adopter.worse(10)
  end
end
