class Api::V1::AnnotationsController < ApplicationController

  def index
    render json: Annotation.all
  end

  def show
    annotations = Annotation.where(uri: request.referrer)
    results = {total: annotations.size, rows: annotations}
    render json: results
  end

  def create
    @annotation = Annotation.create!(annotation_params)
    @annotation.update(uri: request.referrer)
    note = {id: @annotation.id.to_s, readme_id: @annotation.readme_id, quote: @annotation.quote, text: @annotation.text, uri: @annotation.uri, ranges: @annotation.ranges}
      
    render json: note, status: 200
  end

  def update
    render json: annotation.update(annotation_params)
  end

  def destroy
    render json: annotation.destroy
  end

  def search
    # binding.pry
  end

  private

  def annotation
    Annotation.find(params[:id])
  end

  def annotation_params
    params.permit(:quote, :text, :readme_id, :ranges => ["start", "startOffset", "end", "endOffset"])
  end

end