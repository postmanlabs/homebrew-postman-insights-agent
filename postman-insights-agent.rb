class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.5/postman-insights-agent_0.30.5_darwin_arm64.zip"
      sha256 "0adbf7db5e18f319a276d04aad1750e88e4e46b6a62458a1c60099fc0edd8a87"
    else
      url "https://releases.observability.postman.com/cli/0.30.5/postman-insights-agent_0.30.5_darwin_amd64.zip"
      sha256 "de13a018ddb45969a6b5331e4b63e8bea81866a8e6acb3abdca6190cc4fe6da6"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
