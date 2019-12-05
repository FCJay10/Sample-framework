require "rest_client"
require "mime/types"

module HTTPMethods
  def postRequest(postws, body, headers)
    response = RestClient.post(postws, body, headers)
    return response
  end
  
  def deleteRequest(postws, headers)
    response = RestClient.delete(postws, headers)
    return response
  end
  
  def getRequest(postws, headers)
    response = RestClient.get(postws, headers)
    return response
  end

  def putRequest(postws, body, headers)
    response = RestClient.put(postws, body,  headers)
    return response
  end

  def patchRequest(postws, body, headers)
    response = RestClient.patch(postws, body,  headers)
    return response
  end  
end
