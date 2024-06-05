class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.7/postman-insights-agent_0.30.7_darwin_arm64.zip"
      sha256 "ffc6aa2e387ff6b0d422c75770134f5d52943934c42f33a83949afd5b34f3439"
    else
      url "https://releases.observability.postman.com/cli/0.30.7/postman-insights-agent_0.30.7_darwin_amd64.zip"
      sha256 "78e0d8ac373deddec8d8ebf9103be492c4edf7c4a9ed5ebeaff42a07df86d281"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
