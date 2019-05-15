class PropertysController < ApplicationController
  def index
    @propertys = Property.all
  end

  def new
    @property = Property.new
  end

  def show
  end

  def destroy
  end

  def edit
  end
end
