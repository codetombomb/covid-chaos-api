class PlayersController < ApplicationController
    before_action :set_player, only: [:show]

    def index
        players = Player.all 
        render json: players, include: :games
    end

    def show
        if @player
            render json: @player, include: :games
        else 
            render json: {error: "Player not found"}
        end
    end

    private

    def player_params
    end

    def set_player
        @player = Player.find_by(id: params[:id])
    end
    
end

