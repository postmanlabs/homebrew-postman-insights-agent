class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.37.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.37.3/postman-insights-agent_0.37.3_darwin_arm64.zip"
      sha256 "c1329ac1a09b3d37922ccbe76a3d1c32e1e5f5b1fb43dbc342aacfe112112422"
    else
      url "https://releases.observability.postman.com/cli/0.37.3/postman-insights-agent_0.37.3_darwin_amd64.zip"
      sha256 "035b13d30a2e92200d3dfb9cbc61e1fb36d603ef3d6b758fe4ada5cb736d96fa"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
