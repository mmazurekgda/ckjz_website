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
		if Sensor.male_toilet.closed
			@male = 'zajęta'
			@male_style = 'red'
		else
			@male = 'otwarta'
			@male_style = 'green'
		end
		if Sensor.female_toilet.closed
			@female = 'zajęta'
			@female_style = 'red'
		else
			@female = 'otwarta'
			@female_style = 'green'
		end
	end

end

