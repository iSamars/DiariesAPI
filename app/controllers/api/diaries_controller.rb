module Api
  class DiariesController < ApplicationController
    def index
      diaries = Diary.order('created_at DESC')
      render json: { diaries: diaries }, status: :ok
    end

    def show
      diary = Diary.find(params[:id])
      if diary
        render json: diary, status: :ok
      else
        head(:unprocessable_entity)\
      end
    end

    def create
      diary = Diary.new(diary_params)
      if diary.save
        render json: diary, status: :created
      else
        render json: diary.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if Diary.destroy(params[:id])
        head(:ok)
      else
        head(:unprocessable_entity)
      end
    end

    def update
      diary = Diary.find(params[:id])
      if diary.update(diary_params)
        render json: diary, status: :ok
      else
        head(:unprocessable_entity)
      end
    end

    private

    def diary_params
      params.require(:diary).permit(:title, :expiration, :kind)
    end
  end
end
