module Todoist
  module Misc
    class Uploads
        include Todoist::Util  
        
        # Uploads a file given a Ruby File.
        def add(file)
          multipart_file = NetworkHelper.multipart_file(file)
          params = {file_name: File.basename(file), file: multipart_file}
          NetworkHelper.getMultipartResponse(Config::TODOIST_UPLOADS_ADD_COMMAND, params)
        end
        
        # Get uploads up to limit.  If last_id is entered, then the results list 
        # everything from that ID forward.
        def get(limit = 30, last_id = 0)
          params = {limit: limit}
          params["last_id"] = last_id if last_id
          NetworkHelper.getResponse(Config::TODOIST_UPLOADS_GET_COMMAND, params)
        end
        
        # Deletes an upload given a file URL.
        def delete(file_url)
          params = {file_url: file_url}
          NetworkHelper.getResponse(Config::TODOIST_UPLOADS_DELETE_COMMAND, params)
        end
    end
  end
end