class MeasuresController < ApplicationController

  before_action :authorise_user

  def index
    @current_user.Measures.all
  end

  def new
    @measures = @measures.new
  end

end

