class SessionsController < ApplicationController
  def new
  end

  def create
    print 'going into create method of SessionsController'
    profile = Profile.find_by(account_holder_email: params[:account_holder_email])
    if profile && profile.authenticate(params[:password])
      session[:profile_id] = profile.id
      newsession = GameSession.new
      newsession.game_session_date = DateTime.now
      #we checked for profile.id AND also need to store it.
      newsession.profile_id = profile.id
      newsession.save
      redirect_to'/'
    else
      redirect_to '/crap'
    end
  end

  def destroy
    session[:profile_id] = nil
    redirect_to '/login'
  end
 
  def testjson
    #process json input parameter
#example URL:    http://localhost:3000/testjsonforjen?account={"val":"test","val1":"test1","val2":"test2"}
#    byebug
    @newobj = JSON.parse(params[:account])   #turns the 'account' attribute string json value into a ruby object instance called @newobj
    print @newobj
    print @newobj['val1']
    #Return
    @testprofile = Profile.new
    @testprofile.account_holder_email='qqq@qqq.qqq'
    render json: @testprofile #turns the ruby object instance called @testprofile into a string value formatted in json format and then sends that to the waiting requestor (i.e. the HTTParty call in the apitest logic) as the response (normally an HTML page is sent as a string value response, but we are implementing an API here, not serving a web page..)
  end
end 