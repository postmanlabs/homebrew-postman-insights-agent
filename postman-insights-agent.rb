class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.34.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.34.0/postman-insights-agent_0.34.0_darwin_arm64.zip"
      sha256 "5a600343f8dc694d015d5623be3d2e724c06efc43041eedb538b6e0cfd3c7d4f"
    else
      url "https://releases.observability.postman.com/cli/0.34.0/postman-insights-agent_0.34.0_darwin_amd64.zip"
      sha256 "ccb4ca90f4936c6a8ea2002e7e0fd7064965148fb6ec4d3db290b914ae7a186e"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
