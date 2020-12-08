class UsersController < ApplicationController
    
    def index
        @users = User.all
        render :json => @users.to_json(
            include: {
                shoes: {
                    except: [
                        :created_at, :updated_at
                    ]
                }
            },
            except: [ :created_at, :updated_at ]
        )
    end
end
