class HomesController < ApplicationController
  def top
  end
  
  def books
    @book = Book.new
    @books = Book.all
  end
  
  def create
    flash[:notice] ="successfully"
    @book = Book.new(book_params)
   if @book.save
     redirect_to book_path(@book.id)
   else
    
     @books = Book.all
     render :books
   end
    
    # redirect_to ????
  end
  
  def edit
  
    @book = Book.find(params[:id])
    
    
  end
  
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def show
     
    @books = Book.all
    @book = Book.find(params[:id])
  end
  
  def update
    flash[:notice] ="successfully"
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
