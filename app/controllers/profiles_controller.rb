class ProfilesController < ApplicationController
  def new
  end

  def create
    print 'creating a profile method'
    profile = Profile.new
    profile.account_holder_name = params[:account_holder_name]
    profile.account_holder_email = params[:account_holder_email]
    profile.password = params[:password]
    profile.student_name = params[:student_name]
    profile.student_grade = params[:student_grade]
    if profile.save 
      redirect_to '/login'
    else
      redirect_to '/signup'
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end


end
