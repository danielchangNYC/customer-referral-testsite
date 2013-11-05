class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    if Customer.create(customer_params)
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
      if @customer.update_attributes(customer_params)
         redirect_to :action => 'index'
      else
         render :action => 'edit', :id => @customer
      end
  end

  def destroy
    Customer.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :referring_customer_id)
  end

end
