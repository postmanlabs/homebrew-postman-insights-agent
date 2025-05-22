class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.8/postman-insights-agent_0.36.8_darwin_arm64.zip"
      sha256 "5fd392cb0700243ac1e0d6295cd3a1bff378720e6ae1591fe01a24b4f0315557"
    else
      url "https://releases.observability.postman.com/cli/0.36.8/postman-insights-agent_0.36.8_darwin_amd64.zip"
      sha256 "46aedee89ec1c30bace410338ccbd3c8182716add4f4622c888be8a45c9c31ba"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
