class InquiryController < ApplicationController
  def index
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    render 'index' if @inquiry.invalid?
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    render 'index' if params[:back]
  end
  
  private
    def inquiry_params
      params[:inquiry].permit(:name, :email, :message)
    end
end
