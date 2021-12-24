class MeasuresController < ActionController::Base

  def index
    @message = Measure.all.as_json
    puts 'here!'
  end


end

