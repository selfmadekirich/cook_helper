class RecipesController < ActionController::Base
  layout "application"
  #before_action :authorise_user

    def index
      @message = Recipe.all.as_json
      puts 'here!'

    end
  
    def new
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def show
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def update
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def create
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def delete
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def sharelink
        @message = Recipe.all.as_json
        puts 'here!'
    end

    def edit
        @message = Recipe.all.as_json
        puts 'here!'
    end
  
  end