class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.33.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.33.0/postman-insights-agent_0.33.0_darwin_arm64.zip"
      sha256 "ac6b352a38932de8566b78bbe4cf0ea20c2f3b1dad2d3f1dbe0d28edb98fb234"
    else
      url "https://releases.observability.postman.com/cli/0.33.0/postman-insights-agent_0.33.0_darwin_amd64.zip"
      sha256 "5dd5eae4d75d11e724987c42de9d9eddc6ea5b71b8594d37a80b9c269304ee8a"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
