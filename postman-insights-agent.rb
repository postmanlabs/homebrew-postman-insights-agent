class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.15"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.15/postman-insights-agent_0.30.15_darwin_arm64.zip"
      sha256 "5b30e9ab90148742c7cce73b8834b82c6037a5b6d285c84fb3178cac656bbb03"
    else
      url "https://releases.observability.postman.com/cli/0.30.15/postman-insights-agent_0.30.15_darwin_amd64.zip"
      sha256 "dc715d9cd9a30ac946fe776bdf3fc290b7fc3497c9082a02accce93458f11fc7"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
