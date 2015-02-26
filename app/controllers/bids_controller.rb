class BidsController < ApplicationController

  def create
    @bid = Bid.create(bid_params)
    #leaving so I can see the origianl fix when the bids create was in the item view
    
    # if @bid.save
    #   respond_to do |i|
    #     i.html {redirect_to @bid.item, notice: 'Your bid has been recorded!'}
    #     i.js {render 'items/create.js.erb'}
    #   end
    # else
    #   @item = @bid.item
    #   render "items/show"
    # end
  end


  private
    # Only allow a trusted parameter "white list" through.
    def bid_params
      params.require(:bid).permit(:amount, :item_id)
    end
end
