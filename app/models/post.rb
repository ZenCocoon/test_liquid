class Post < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  liquid_methods :title, :body, :url, :edit_url

  def url
    post_path(self)
  end

  def edit_url
    edit_post_path(self)
  end
end
