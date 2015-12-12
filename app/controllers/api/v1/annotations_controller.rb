class Api::V1::AnnotationsController < ApplicationController
  # respond_to :json

  def index
    # binding.pry
    render json: Annotation.all
  end

  def show
    binding.pry
    # annotations = Readme.find(params[:readme_id]).annotations
    annotations = Annotation.where(uri: request.referrer)
    results = {total: annotations.size, rows: annotations}
    render json: results
  end

  def create
    binding.pry
    annotation = Annotation.create(annotation_params)
    annotation.update(uri: request.referrer)
    render json: Annotation.create(annotation_params)
  end

  def update
    render json: annotation.update(annotation_params)
  end

  def destroy
    render json: annotation.destroy
  end

  def search
    binding.pry
  end

  private

  def annotation
    Annotation.find(params[:id])
  end

  def annotation_params
    params.permit(:quote, :text, :readme_id, :ranges => ["start", "startOffset", "end", "endOffset"])
  end

end