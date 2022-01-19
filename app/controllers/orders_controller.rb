class OrdersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
  before_action :set_order, only: %i[ show edit update destroy ]
  # layout 'order_layout'

  def index
    @orders=Order.all
  end

  def show
    set_order
  end

  def new
    @order=Order.new
  end

  def create
    @order = Order.new(order_params)
    # byebug
    if @order.save
      flash.notice = "The order record was created successfully."
      redirect_to @order

    else
      flash.now.alert = @order.errors.full_messages.to_sentence
      render :new
    end
  end

  def edit
  end

  def update
    @order.update(order_params)
    if   flash.notice = "The order record was updated successfully."
      redirect_to @order

    else
      flash.now.alert = @order.errors.full_messages.to_sentence
      render :edit
    end
  end

  def delete
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
  end
end

private
def set_order
  # byebug
  @order = Order.find(params[:id])
end

def order_params
  params.require(:order).permit(:product_name, :product_count, :customer_id)
end

def catch_not_found(e)
  Rails.logger.debug("We had a not found exception.")
  flash.alert = e.to_s
  redirect_to order_path
end

end
