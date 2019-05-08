class AuthorsController < ApplicationController
  
  #GET
  def index
      authors = Author.all
      render json:authors, status:200
  end
  
  #GET
  def show
    author = Author.find(params[:id])
    render json:author, status: 200
  end
  
  #POST
  def create 
    author = Author.new(author_params)
    if author.save
      render json: author, status: 201
    else
      render json: author.errors, status: :unprocessable_entity
    end
        
  end
  
  #PUT / PATCH
  def update
    author = Author.find(params[:id])
    if author.update(author_params)
      render json: author, status: :updated_entity
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end
  
  #DESTROY
  
  def delete
  end
  
  
    def author_params
      params.require(:author).permit(:name, :edad)
    end 
  
end




