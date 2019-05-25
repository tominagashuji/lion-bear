class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)

    if @property.save
      redirect_to properties_path, notice: '物件登録に成功しました！'
    else
      render 'new'
    end
  end

  def destroy
    if @property.destroy
      redirect_to properties_path, notice: '物件削除に成功しました！'
    else
      render 'index'
    end
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: '物件編集に成功しました！'
    else
      render 'edit'
    end
  end

  def show; end

  def edit; end

  private

  def property_params
    params.require(:property).permit(
      :name, :rent, :address, :age, :remarks,
      # :stations_attributes =>[:id, :route, :name, :toho])
      stations_attributes: [:id, :route, :name, :toho],
    )
  end

  def set_property
    @property = Property.find(params[:id])
  end
end