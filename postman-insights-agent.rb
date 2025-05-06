class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.6/postman-insights-agent_0.36.6_darwin_arm64.zip"
      sha256 "6e3ef3a09f94f838e93c5598023b00abfb3297f7245e64d5766fb7b6aab8ac1e"
    else
      url "https://releases.observability.postman.com/cli/0.36.6/postman-insights-agent_0.36.6_darwin_amd64.zip"
      sha256 "40d874e9fa932e58c4967e1c1d860ff47cd5d051838c49b30bf5a45a131ce997"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
