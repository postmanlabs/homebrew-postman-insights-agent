class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.12"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.12/postman-insights-agent_0.30.12_darwin_arm64.zip"
      sha256 "9dca7adc82740a5202fa604abe56f5092753b910876b7fa9d7cf7fcfbe6aaec9"
    else
      url "https://releases.observability.postman.com/cli/0.30.12/postman-insights-agent_0.30.12_darwin_amd64.zip"
      sha256 "168331cd32b3c85a936a2672c90c5e842da194285f81a5194e3a8b025a6b6865"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
