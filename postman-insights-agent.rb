class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.37.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.37.2/postman-insights-agent_0.37.2_darwin_arm64.zip"
      sha256 "a64f721e3e4a946f1d845be27b0fe8cd6d2e5adc3bb7f5153495ec98b87486a9"
    else
      url "https://releases.observability.postman.com/cli/0.37.2/postman-insights-agent_0.37.2_darwin_amd64.zip"
      sha256 "4ea029c180ba5cd500fe9d109c36ef4e427a2b4c80c7bdcc5fdcd16a0a0ebba0"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
