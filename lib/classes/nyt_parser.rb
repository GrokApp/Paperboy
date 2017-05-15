require 'csv'

class NytParser
  def get_top_stories
    # GET /topstories/v2/<section>.<format>
    uri = URI("https://api.nytimes.com/svc/topstories/v2/home.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => "e0a59600479446f7879e0e1774c7efdd"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
    puts @result.inspect
  end
end
