class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.10/postman-insights-agent_0.30.10_darwin_arm64.zip"
      sha256 "3f15c4b56ace3d0ae9af4a6921e7c47b5274b92ff029443b165973774f715a0d"
    else
      url "https://releases.observability.postman.com/cli/0.30.10/postman-insights-agent_0.30.10_darwin_amd64.zip"
      sha256 "038d42c370e6084fc93380e83022df964c1d2f8737dfbb4b52200c75524ae9ae"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
