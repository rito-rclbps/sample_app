class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
    ContactMailer.create_contact('ctest145@gmail.com', params).deliver
    ContactMailer.create_contact(params[:email], params).deliver if params[:email]
  end

end
