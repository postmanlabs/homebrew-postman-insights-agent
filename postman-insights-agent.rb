class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.17"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.17/postman-insights-agent_0.30.17_darwin_arm64.zip"
      sha256 "d5a08014ef1a414a022342bb29adae29bb792510faf13d3d9b65dccff0036f1e"
    else
      url "https://releases.observability.postman.com/cli/0.30.17/postman-insights-agent_0.30.17_darwin_amd64.zip"
      sha256 "bb998ee40bf459f6c3b6244e8f21b7ecf94c1b562d870d24f9948dfaeef34403"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
