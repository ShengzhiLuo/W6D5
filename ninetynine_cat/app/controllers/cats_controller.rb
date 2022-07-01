class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cat_url(@cat)
        else
            render json: @cat.errors.full_messages,  status: :unprocessable_entity
        end
    end

    private
    def cat_params
        params.require(:cat).permit(:name, :color, :birth_date, :sex, :description, :id)
    end
end
