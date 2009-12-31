class TrackController < ApplicationController

  def _my_model_s
    self.class.to_s.split('Controller')[0]
  end
  def _my_model_sym
   _my_model_s.downcase.to_sym
  end
  def _my_model
    Object.const_get(_my_model_s)
  end
  # get
  #def show
  #    object = _my_model.find(params[:id])
  #end
  # post
  def create
    object = _my_model.create!(params[_my_model_sym])
    respond_to do |format|
    if object.save
      format.json  { render :json => object, :status => :created, :location => object }
    else
      format.json  { render :json => object.errors, :status => :unprocessable_entity }
    end
  end
    
  end
  
end
