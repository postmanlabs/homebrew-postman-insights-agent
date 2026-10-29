class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.41.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.41.1/postman-insights-agent_0.41.1_darwin_arm64.zip"
      sha256 "2cf0836bde8ffba54df07c650c5f5eaa77f8622efdf5ec9dbc24d629cae496a9"
    else
      url "https://releases.observability.postman.com/cli/0.41.1/postman-insights-agent_0.41.1_darwin_amd64.zip"
      sha256 "93793c390810826b3bc9c3e98b7a0f893e2c30775be4994be7c37ad21e734689"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
