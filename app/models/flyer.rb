class Flyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :role

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
  	@roles = Role.all

    self.role_id ||= @roles.find_by(name:'flyer').id
  end

end
