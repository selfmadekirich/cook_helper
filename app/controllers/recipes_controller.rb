class RecipesController < ApplicationController

  before_action :authorise_user

    def index
      @recipes= @current_user.Recipes.all
    end
  
    def new
      @recipes=Recipe.new;
    end

    def show
      @recipes=Recipe.find_by params[:id]
    end

    def update
      @recipes=Recipe.find_by @recipe_id
      @recipes.name=params[:recipe][:name]
      @recipes.instructions=params[:recipe][:instructions]
      @recipes.meal_type=params[:recipe][:meal_type]
      @recipes.user=@current_user
      if(@recipes.valid?)
        @recipes.update
        redirect_to recipes_url
      else
        flash[:errors] = @recipes.errors.full_messages.join
        redirect_to :action => :new
      end
    end

    def create
      @recipes=Recipe.new
      @recipes.name=params[:recipe][:name]
      @recipes.instructions=params[:recipe][:instructions]
      @recipes.meal_type=params[:recipe][:meal_type]
      @recipes.user=@current_user
      if(@recipes.valid?)
        @recipes.save
        redirect_to recipes_url
      else
        flash[:errors] = @recipes.errors.full_messages.join
        redirect_to :action => :new
      end
    end

    def delete
      @recipes.find(:id).destroy
    end

    def edit
      save_recipe_for_edit(params[:id])
      @recipes=Recipe.find_by_id params[:id]
    end
  end