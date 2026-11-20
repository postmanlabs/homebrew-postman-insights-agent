class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.41.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.41.2/postman-insights-agent_0.41.2_darwin_arm64.zip"
      sha256 "701fdeb943ee8e47f57ac94ffb1d2e6b468eb8da54275b451fa76bc1239ba67b"
    else
      url "https://releases.observability.postman.com/cli/0.41.2/postman-insights-agent_0.41.2_darwin_amd64.zip"
      sha256 "116bf4c932d884b6ab52fb9c121f60054e2ee6c99373504920793ab2e6c14a88"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
