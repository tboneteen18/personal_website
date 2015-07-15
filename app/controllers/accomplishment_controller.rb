class AccomplishmentController < ApplicationController
  # before_action :find_id, only:[:show, :edit, :update, :destroy]
  #
  # def show
  #
  # end
  #
  # def index
  #   @accomplisment = Accomplisment.all
  # end
  #
  # def new
  #   @accomplisment = Accomplisment.new
  # end
  #
  # def create
  #   if @accomplisment.save(accomplisment_params)
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end
  #
  # def edit
  # end
  #
  # def update
  #   if @accomplisment.update(accomplisment_params)
  #     redirect_to root_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   if @accomplisment.destroy
  #     redirect_to root_path
  #   else
  #      flash[:notice] = "Something went wrong Data not deleted"
  #   end
  # end
  #
  # private
  # def find_id
  #   @accomplisment = Accomplisment.find(params[:id])
  # end
  #
  # def accomplisment_params
  #   params.require(:accomplisment).permit(:title, :name, :description, :information, :date)
  # end

end
