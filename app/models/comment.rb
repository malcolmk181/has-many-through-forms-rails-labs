class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def username
    !user.nil? ? user.username : ""
  end

  def username=(uname)
    self.user = User.find_or_create_by(username: uname)
    self.save
  end

  def user_attributes_username
    username
  end

  def user_attributes_username=(uname)
    username=(uname)
  end


end
