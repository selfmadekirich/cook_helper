class RecipesController < ApplicationController

  before_action :authorise_user

    def index
      @current_user.Recipes.all;
    end
  
    def new
      @recipes=Recipe.new;
    end

    def show
      @recipes=Recipe.find_by params[:id];
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
      @recipes=Recipe.find_by params[:id];
    end
  
  end