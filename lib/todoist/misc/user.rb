module Todoist
  module Misc
    class User
        include Todoist::Util 

        # Logs the user in and grabs a token for the login session.
        def login(email, password)
          result = NetworkHelper.getResponse(Config::TODOIST_USER_LOGIN_COMMAND, {email: email, password: password}, false)
          user = ParseHelper.make_object(result)
          Config.token = user.token
          return user
        end

    end
  end
end