module ApplicationHelper
  def render_notice(msg = notice)
    if msg
      content_tag :p, msg.to_s, :id => 'notice'
    end
  end
end
