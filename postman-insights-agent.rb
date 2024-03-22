class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.3/postman-insights-agent_0.30.3_darwin_arm64.zip"
      sha256 "9807431317ca7eee8e36051a5628d15dd6abbaa5bfe07992fd79634c50a64b39"
    else
      url "https://releases.observability.postman.com/cli/0.30.3/postman-insights-agent_0.30.3_darwin_amd64.zip"
      sha256 "24c312017f226f02d0ac6787a9acd0f97bbe934fc9d96597f8fe93bd696e5b0f"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
