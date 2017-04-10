class RoomsController < ApplicationController
  
  def show

  	if Message.count > 0 and current_user!=nil

	  	@message_temp = Message.last
	  	@message_user = MessageUser.new

	  	@message_user.user_id = current_user.id
	  	@message_user.message_id = @message_temp.id

	  	@message_user.save

  	end

    @messages = Message.all

  end

end
