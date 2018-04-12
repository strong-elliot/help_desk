class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :require_login, except: [:index]


    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
      @comment = Comment.new
      @comment.article_id = @article.id

    end

    def new
      @article = Article.new
    end

      def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash.notice = "Deleted Ticket: '#{@article.title}'!"

        redirect_to action: 'index'
      end

      def update
  @article = Article.find(params[:id])
  @article.update(article_params)
  flash.notice = "Ticket '#{@article.title}' Updated!"
  redirect_to article_path(@article)
end


        def edit
          @article = Article.find(params[:id])
        end


      def create
        @article = Article.new(article_params)
        @article.save
        flash.notice = "Created Ticket: '#{@article.title}'!"
        redirect_to article_path(@article)
    end
      # @article = Article.new
      # @article.title = params[:article][:title]
      # @article.user = params[:article][:user]
      # @article.tech = params[:article][:tech]
      # @article.description = params[:article][:description]
      # @article.resolution = params[:article][:resolution]
      # @article.catagory = params[:article][:catagory]
      # @article.save
      # redirect_to article_path(@article)
      #
end
