class ShoesController < ApplicationController

    def index
        @shoes = Shoe.all
        render :json => @shoes.to_json(
            include: {
                users: {
                    except: [
                        :created_at, :updated_at
                    ]
                }
            },
            except: [ :created_at, :updated_at ]
        )
    end
    

    def create
        @user = User.find_by(id: params[:user_id])
        name = Faker::Name.unique.first_name.downcase,
        @shoe = Shoe.create(name: name, image: images, price: price, user_id: @user.id)
    end

    def destroy
        @shoe = Shoe.find_by(id: params[:id])
        @shoe.destroy
        render :json => @shoe
    end
end
