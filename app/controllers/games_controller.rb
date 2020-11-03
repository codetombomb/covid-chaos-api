class GamesController < ApplicationController

    def index 
        games = Game.all
        render json: games
    end

    def create
        game = Game.create(
            player_id: params[:player_id],
            score: params[:score], 
            time: params[:time], 
            sanitizer_collected: params[:sanitizer_collected], 
            tp_collected: params[:tp_collected] 
            )
            if game.save
                render json: game
            else 
                render json: {error: "There was a problem saving your game"}
            end
    end
end

