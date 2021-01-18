class HomesController < ApplicationController

  def top
    
  end

  private

  def homes_path_params
    params.require(:home)
  end

end
