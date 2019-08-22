class SensorsController < ApplicationController

	skip_before_action :verify_authenticity_token

  def change_mode
		headers['Access-Control-Allow-Origin']   = '*'
		headers['Access-Control-Request-Method'] = '*'
    sensor = Sensor.find(params[:id])
		sensor.closed = params[:mode]
		sensor.save!
  end

	def index
		@male = Sensor.male_toilet.closed ? 'zajęta' : 'otwarta'
		@female = Sensor.female_toilet.closed ? 'zajęta' : 'otwarta'
	end

end

