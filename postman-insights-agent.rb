class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.1/postman-insights-agent_0.30.1_darwin_arm64.zip"
      sha256 "7c758d478a9087b8e650cd5c89fe0cc09cbcf69cff312397fa9f109335250511"
    else
      url "https://releases.observability.postman.com/cli/0.30.1/postman-insights-agent_0.30.1_darwin_amd64.zip"
      sha256 "c3e2ac297090b8de42e6e2b53f3c23579900f73bcecf3c634df8e908cc42bf08"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
