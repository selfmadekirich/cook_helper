class MeasuresController < ActionController::Base

  layout "application"
  def index
    @message = Measure.all.as_json
    puts 'here!'

  end

  def new
    @message = Measure.all.count
    puts 'here!'
  end

end

