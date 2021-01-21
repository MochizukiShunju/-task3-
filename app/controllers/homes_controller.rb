class HomesController < ApplicationController

  def top
  end

  def about
  end

  private

  def homes_path_params
    params.require(:home)
  end

end
