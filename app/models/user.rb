class User < ApplicationRecord
  rolify
  has_many :sermons
  has_one_attached :avatar
  after_create  :set_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
  #scope :editable,  -> { where user_id: current_user.id}

  
  
  

   
 

private
  def set_default_role
    if User.all.count <= 1  
      self.add_role 'admin'
      self.add_role 'author'
      self.add_role 'publisher'
    else
    self.add_role 'guest'
    end   
  end    


  

end
