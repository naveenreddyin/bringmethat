class HomePolicy < Struct.new(:user, :home)

  class Scope
    def resolve
      scope
    end
  end
  
  def static?
  	@user = User.all

    @user.first.role_id == 2
  end
end