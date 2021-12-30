class MeasuresController < ApplicationController

  before_action :authorise_user

  def index
    @measures=Measure.new
    
  end

  def new
    @measures=Measure.new
  end

  def convert
    @measures=Measure.all
  end

  def conv
    session[:grams] = params[:measure][:grams]
    redirect_to measures_url+'/convert/'
  end

  def create
    @measures=Measure.new
    # :meas_name, :grams,:meas_role = not nil
    @measures.meas_name=params[:measure][:meas_name]
    @measures.grams=params[:measure][:grams]
    @measures.meas_role=params[:measure][:meas_role]
    @measures.user=@current_user
    if(@measures.valid?)
      @measures.save
      redirect_to measures_url
    else
      flash[:errors] = @measures.errors.full_messages.join
      redirect_to :action => :new
    end
  end

end

