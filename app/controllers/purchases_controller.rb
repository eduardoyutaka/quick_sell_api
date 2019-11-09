class PurchasesController < ApplicationController
  def index
    purchases = Purchase.all
    render status: :ok, json: purchases
  end

  def show
    purchase = Purchase.find_by(id: params[:id])

    if purchase
      render status: :ok, json: purchase
    else
      render status: :not_found, json: { message: 'Purchase not found' }
    end
  end

  def create
    purchase = Purchase.create(build_purchase)
    render status: :ok, json: purchase
  end

  def update
    purchase = Purchase.find_by(id: params[:id])

    if purchase
      purchase.update(build_purchase)
      render status: :ok, json: purchase
    else
      render status: :not_found, json: { message: 'Purchase not found' }
    end
  end

  def destroy
    purchase = Purchase.find_by(id: params[:id])

    if purchase
      purchase.delete
      render status: :ok, json: purchase
    else
      render status: :not_found, json: { message: 'Purchase not found' }
    end
  end

  private

  def build_purchase
    purchase = Hash.new
    purchase[:customer_age] = params[:customer_age] if params[:customer_age]
    purchase[:customer_gender] = params[:customer_gender] if params[:customer_gender]
    purchase[:product_name] = params[:product_name] if params[:product_name]
    purchase[:product_price] = params[:product_price] if params[:product_price]
    purchase
  end
end
