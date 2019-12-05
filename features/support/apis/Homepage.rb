# coding: utf-8
require "json"
require_relative "../apis/HTTPMethods"

module Homepage
  include HTTPMethods

  def getCourseList()
    url = "https://www.khanacademy.org/api/internal/graphql?opname=learnMenuTopicsQuery&lang=en&_=191204-1342-fb93ab3cfdb1_1575499931905"
    body = "{
query learnMenuTopicsQuery ($curriculum: “”){    slug    translatedTitle    href    children {      slug      translatedTitle      href      loggedOutHref      nonContentLink      __typename    }    __typename  }
    }".to_json
    headers = {
      "origin":"https://www.khanacademy.org",
      "x-ka-fkey":"1.0_pDHQrB5Ze-cBXQ==_1575499876",
      "content-type":"application/json"
    }
    response = postRequest(url, body, headers)
    object = JSON.parse(response.body)
    return object
  end
  
end

World(Homepage)
