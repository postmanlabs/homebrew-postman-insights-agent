class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.0/postman-insights-agent_0.36.0_darwin_arm64.zip"
      sha256 "d3e21106cfe6b62faa23a563c288597f8a74921bbd955e2872b6194dda6c6e72"
    else
      url "https://releases.observability.postman.com/cli/0.36.0/postman-insights-agent_0.36.0_darwin_amd64.zip"
      sha256 "f438701cb3af0776e99beb8854c6628a4a83de5452a203a640a74ae0a2f36057"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
