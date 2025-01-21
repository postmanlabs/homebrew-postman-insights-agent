class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.19"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.19/postman-insights-agent_0.30.19_darwin_arm64.zip"
      sha256 "d92e39efaf03f28a07a2bcfd89c472a9c188b97b3091619363538ad411ce38ef"
    else
      url "https://releases.observability.postman.com/cli/0.30.19/postman-insights-agent_0.30.19_darwin_amd64.zip"
      sha256 "31df801e2ab93d7066b785e59800a4fea1a37084f1e278c7372e2c3a13ab256c"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
