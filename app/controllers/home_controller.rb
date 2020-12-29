class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]

  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Job.title  
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize

    @rand_number = rand(1..1000)
    @set_number = %w(set1 set2 set3 set4).sample
    @bg = %w(bg1 bg2).sample
    @avatar = Faker::Avatar.image(slug: @rand_number, size: "300x300", format: "png", set: @set_number, bgset: @bg)
  end

  def index
  end

  def team
    @team_number = params[:team_number].to_i
  end
end
