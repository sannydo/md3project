class UserShoesController < ApplicationController
    
    def index
        user_shoes = UserShoe.all
        render json: user_shoes, except: [:created_at, :updated_at]
    end

    def show
        user_shoe = UserShoe.find_by(id: params[:id])
        if user
            render json: shoe.slice(:id, :name, :price, :image, :comment)
        else
            render json: { message: "Sorry. Item was not found"}
        end
    end

    def create
        user_shoe = UserShoe.new(user_shoe_params)
        user_shoe.save
        render json: user_shoe
    end

    def update
        user_shoe = UserShoe.find_by(params[:id])
        user_shoe.update_attributes(user_shoe_params)
        render json: user_shoe
    end

    def destroy
        UserShoe.destroy(params[:id])
    end

    private

    def user_shoe_params
        params.require(:user_shoe).permit(:id, :name, :image, :price, :comment)
    end


end
