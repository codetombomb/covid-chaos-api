class GamesController < ApplicationController
    before_action :all_games, only: [:index, :top_five]

    def index 
        @games = Game.all
        render json: @games
    end

    def create
        if Player.find_by(username: params['username']) == nil
            player = Player.create(username: params['username'])
        else
            player = Player.find_by(username: params['username'])          
        end
        game = Game.create(
            player_id: player.id,
            time: params[:time], 
            score: params[:score],
            sanitizer_collected: params[:sanitizer_collected], 
            tp_collected: params[:tp_collected] 
            )
            # byebug
        if game.save
            render json: game
        else 
            render json: {error: "There was a problem saving your game"}
        end
    end

    def top_five
        sorted = @games.sort_by(&:score)
        top_five = sorted.pop(5).reverse
        render json: top_five, include: :player
    end

    private 

    def all_games
        @games = Game.all
    end

end

