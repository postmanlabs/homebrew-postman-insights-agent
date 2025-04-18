class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.2/postman-insights-agent_0.36.2_darwin_arm64.zip"
      sha256 "e38f00321c826740f153f1da248bcea1ae27d7a14838abca65093658dd89a228"
    else
      url "https://releases.observability.postman.com/cli/0.36.2/postman-insights-agent_0.36.2_darwin_amd64.zip"
      sha256 "1d161edd826935eaa87bdc131bc38b98fc2c382421221521fb0108f710b4b751"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
