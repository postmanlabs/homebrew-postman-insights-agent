class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.0/postman-insights-agent_0.30.0_darwin_arm64.zip"
      sha256 "41f59cda82d442bdd3a1f7cc7bcab465098a7730d15ce61397ec13a42b1e35fe"
    else
      url "https://releases.observability.postman.com/cli/0.30.0/postman-insights-agent_0.30.0_darwin_amd64.zip"
      sha256 "8ea58ac4310e7f2db06bc03f24c6cd8428b15cd377e047c91fed16f3a47489b1"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
