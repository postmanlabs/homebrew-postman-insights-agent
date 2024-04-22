class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.4/postman-insights-agent_0.30.4_darwin_arm64.zip"
      sha256 "8840be778456d634b907b070392c9de6d570fc50f8d236b724aadb409a80e035"
    else
      url "https://releases.observability.postman.com/cli/0.30.4/postman-insights-agent_0.30.4_darwin_amd64.zip"
      sha256 "3935c23763773c38e1086b228b2254f8833d0e78c70dd64da6f1a20f7c98249c"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
