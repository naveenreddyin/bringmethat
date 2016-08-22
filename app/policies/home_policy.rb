class HomePolicy < Struct.new(:user, :home)

  class Scope
    def resolve
      scope
    end
  end
  
  def index?
  	# @join = User.joins(:roles)
  	# puts "Role name: "
  	# puts @join.name
    true
  end
  def static?
  	@user = User.all
  	
    @user.first.role_id == 2
  end
end