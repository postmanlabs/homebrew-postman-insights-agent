class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.35.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.35.1/postman-insights-agent_0.35.1_darwin_arm64.zip"
      sha256 "e894563ea943de0c3f8edbcb8e40f0d7c24aa1b43c504247e64af5e7b0eed775"
    else
      url "https://releases.observability.postman.com/cli/0.35.1/postman-insights-agent_0.35.1_darwin_amd64.zip"
      sha256 "4cca52223cde5080fa699bef38bfc357a47d1ef79a08e77b797afe3692502014"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
