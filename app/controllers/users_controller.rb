class UsersController < ApplicationController

   def new
     @user = User.new()
   end

   def create
     @user = User.new(user_params)
     if @user.save
       flash[:success] = "You have made a new account"
       redirect_to '/'
     end
   end


   def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end

end
