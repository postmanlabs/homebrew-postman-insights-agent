class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.40.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.40.1/postman-insights-agent_0.40.1_darwin_arm64.zip"
      sha256 "ef69fb6b695342b31c4e5112d7f61cbd418144b59387eeb348cf787ced4c9a2a"
    else
      url "https://releases.observability.postman.com/cli/0.40.1/postman-insights-agent_0.40.1_darwin_amd64.zip"
      sha256 "30819135e1c746dd094c1c366d31f777290d2d149869ecb1ac137cd5b90d65de"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
