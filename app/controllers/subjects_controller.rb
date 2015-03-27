class SubjectsController < ApplicationController

  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  
  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subject_params)

    respond_to do |format|
      if @subject.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @subject.errors.full_messages, 
                             status: :unprocessable_entity }
      end
      
    end
  end

  def edit
  end

  def update
     respond_to do |format|
      if @subject.update(subject_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @subject.errors.full_messages,
                                   status: :unprocessable_entity }
      end
     
    end
  end

  def destroy
    @subject.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to subjects_url }
      format.json { head :no_content }
    end
  end

private
  
  def set_subject
    @subject = Subject.find(params[:id])
  end
  
  def subject_params
    params.require(:subject).permit(:name, :description)
  end

end
