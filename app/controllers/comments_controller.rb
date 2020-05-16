class CommentsController < ApplicationController
    before_action :set_comment, only: [:edit, :update, :destroy]
    before_action :set_doctor

    def index
      @comments = @doctor.comments.order("created_at")
    end

    def new
      @comment = @doctor.comments.new
    end

    def show
    end

    def create
      @comment = @doctor.comments.new(comment_params)
      @comment.update(user_id: current_user.id)
      if @comment.save
        redirect_to @doctor
      else
        render :new
      end
    end

    def edit
    end

    def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        redirect_to @doctor
      else
        render :edit
      end
    end

    def destroy
      @comment.destroy
      redirect_to @doctor
    end

     private

      def set_comment
        @comment = Comment.find(params[:id])
      end

      def set_doctor
        @doctor = Doctor.find(params[:doctor_id])
      end

      def comment_params
        params.require(:comment).permit(:message, :user_id)
      end
  end
