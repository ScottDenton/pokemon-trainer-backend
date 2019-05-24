class PokemonsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @pokemon = Pokemon.all
    render json: @pokemon
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    render json: @pokemon
  end


  private

  def pokemon_params
    params.permit(:trainer_id, :pokedex_id, :name, :pokemon_type, :height, :weight, :sprite_front, :sprite_back)
  end
end
