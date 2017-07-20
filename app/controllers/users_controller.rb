class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def edit
    @user = current_user
  end

  def update
    # CF before_action
    current_user.update(user_params)
    redirect_to edit_user_path(current_user)
  end

end
