class ArticlesController < ApplicationController
	def index
		@article = Article.all
		
	end
	def show
		@article = Article.find(params[:id])
	end
	def new
		@article = Article.new
    end
    def edit
        @article = Article.find(params[:id])
    end
	
    def create
        @article = Article.new(article_params)
 
        if @article.save
            flash[:succes] = "Article created"
           redirect_to @article
        else
           render 'new'
        end
    end

    def update
    	@article = Article.find(params[:id])

    	if @article.update(article_params)
    		redirecto_to @article
    	else
    		render 'edit'
    		
    	end
    	
    end
 
    private

    def article_params
        params.require(:article).permit(:title, :body)
   end
  end
