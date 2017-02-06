module BlogsHelper
  def blog_status_class blog
    if blog.Published?
      'btn btn-primary btn-green'
    else
      'btn btn-primary'
    end
  end
end
