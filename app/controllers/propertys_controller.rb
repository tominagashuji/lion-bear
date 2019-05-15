class PropertysController < ApplicationController
  def index
    @propertys = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)

    if @property.save
      redirect_to propertys_path, notice: '物件登録に成功しました！'
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
  end

  def edit
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

end
