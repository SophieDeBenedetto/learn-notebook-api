class Api::V1::ReadmesController < ApplicationController
  # respond_to :json

  def index
    render json: Readme.all
  end

  def show
    render json: readme
  end

  def create
    render json: Readme.generate_readme(readme_params)
  end

  def update
    render json: readme.update(readme_params)
  end

  def destroy
    render json: readme.destroy
  end

  private

  def readme
    Readme.find(params[:id])
  end

  def readme_params
    params.require(:readme).permit(:url)
  end

end