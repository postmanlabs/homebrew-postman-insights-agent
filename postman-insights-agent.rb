class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.6/postman-insights-agent_0.30.6_darwin_arm64.zip"
      sha256 "1d2e8049badfcf46788bbfa769291357956eca63cd06729c85cb7f4bcc37db04"
    else
      url "https://releases.observability.postman.com/cli/0.30.6/postman-insights-agent_0.30.6_darwin_amd64.zip"
      sha256 "5c00fdd5c3e95b5c9afb6ebceaaae3d662d30af44990430eb6c557e97104e7a6"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
