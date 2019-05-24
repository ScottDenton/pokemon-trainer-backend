class TrainersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @trainers = Trainer.all
    render json: @trainers
  end

  def create
    @trainer = Trainer.create(trainer_params)
    render json: @trainer
  end


  private

  def trainer_params
    params.permit(:name, :age, :email, :password)
  end
end
