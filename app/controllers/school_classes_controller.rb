class SchoolClassesController < ApplicationController
  before_action :set_class, only: [:show, :edit, :update]

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def index
    @classes = SchoolClass.all
  end

  def show

  end

  def edit

  end

  def update
    @school_class.update(class_params)
    redirect_to school_class_path(@school_class)
  end

 private

  def set_class
    @school_class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
