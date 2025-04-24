class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.4/postman-insights-agent_0.36.4_darwin_arm64.zip"
      sha256 "dc3d2a2400aca40d3feadbd7c07e84515ed1f753b6da06ab7cff273587c60b87"
    else
      url "https://releases.observability.postman.com/cli/0.36.4/postman-insights-agent_0.36.4_darwin_amd64.zip"
      sha256 "5033c54cd09f611ab11fda05576ad3cebcd755ca61a33fcc1e4bd53e7f9e5bfa"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
