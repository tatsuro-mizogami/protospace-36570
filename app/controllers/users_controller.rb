class UsersController < ApplicationController
  def show
    # bindding.pry
    @user = User.find(params[:id])
    @prototypes = @user.prototypes

  end

end
