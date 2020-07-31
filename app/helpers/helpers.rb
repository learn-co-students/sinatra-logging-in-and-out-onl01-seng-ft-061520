class Helpers

  def self.current_user(session)
    #use the user_id from the session hash to find the user in the database and return that user
    User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(session)
    #return true if the user_id is in the session hash and false if not. The Ruby !! operator will come in handy here.
    !!session[:user_id]
  end

end
