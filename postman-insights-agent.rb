class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.39.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.39.0/postman-insights-agent_0.39.0_darwin_arm64.zip"
      sha256 "ee285eed38eb247c5df1081c96936bb01f5272b7962c77c305c5e9ed40eb5eda"
    else
      url "https://releases.observability.postman.com/cli/0.39.0/postman-insights-agent_0.39.0_darwin_amd64.zip"
      sha256 "813a7e98d339ba057adedce0fc41425040ab90a1e6fd186e9af82b6094b35efb"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
