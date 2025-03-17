class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.35.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.35.0/postman-insights-agent_0.35.0_darwin_arm64.zip"
      sha256 "32416d13efe4c472c8f49e28bf276752e129889e9d0143c41308a8f2e380e3c4"
    else
      url "https://releases.observability.postman.com/cli/0.35.0/postman-insights-agent_0.35.0_darwin_amd64.zip"
      sha256 "d55ea8e66bce0c980911b57cfc09baea1b997bfc5faaafefe8bfe94b686f1d90"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
