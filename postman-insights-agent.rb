class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.14"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.14/postman-insights-agent_0.30.14_darwin_arm64.zip"
      sha256 "09c55bd3a792a89d040ff40698378407a514401a3d6713cbaef75f26320e55fc"
    else
      url "https://releases.observability.postman.com/cli/0.30.14/postman-insights-agent_0.30.14_darwin_amd64.zip"
      sha256 "4fdd869a0b3fd14a215c91c24f18c0f784a9986a5b514a07ae7a894efb0e3c4b"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
