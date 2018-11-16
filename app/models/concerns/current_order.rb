module CurrentOrder
  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end