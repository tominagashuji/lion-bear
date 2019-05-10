class PropertysController < ApplicationController
  def index
    @propertys = Property.all
  end

  def new
  end

  def show
  end

  def destroy
  end
end
