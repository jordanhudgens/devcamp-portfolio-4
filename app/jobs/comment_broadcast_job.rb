class CommentBroadcastJob < ApplicationJob
  queue_as :default 

  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel"
  end
end