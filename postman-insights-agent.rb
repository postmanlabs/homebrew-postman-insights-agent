class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.37.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.37.0/postman-insights-agent_0.37.0_darwin_arm64.zip"
      sha256 "6574eed7e2bd6b9ffcd840a273f0cf59faaa5869d890d091a2bb9eccc7d0ca36"
    else
      url "https://releases.observability.postman.com/cli/0.37.0/postman-insights-agent_0.37.0_darwin_amd64.zip"
      sha256 "2e87e7047e38b962bca282ebca50c1a3961f133fb5ec90ee285f9a13f196a98e"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
