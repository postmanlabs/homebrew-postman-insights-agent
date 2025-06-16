class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.37.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.37.1/postman-insights-agent_0.37.1_darwin_arm64.zip"
      sha256 "80923257fe7056703a35b6b6e4114c46ed0f3245dde11b1abbf7a1f936914b2a"
    else
      url "https://releases.observability.postman.com/cli/0.37.1/postman-insights-agent_0.37.1_darwin_amd64.zip"
      sha256 "96ab0f063c477bbf0e634d215480efdcf11b9dfc1ff30b60d0c2a17d115fb2c4"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
