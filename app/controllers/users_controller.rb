class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @avatar = user.avatar
    @reviews = user.reviews.order('updated_at DESC').page(params[:page]).per(12)
  end

end
