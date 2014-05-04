class ApproveController < ApplicationController
  before_action :require_admin_rights

  def post
    @post = Post.find(params[:id])
    @post.approved = true
    @post.save!
    redirect_to :back
  end
end