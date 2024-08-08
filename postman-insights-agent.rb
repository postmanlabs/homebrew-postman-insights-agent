class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.13/postman-insights-agent_0.30.13_darwin_arm64.zip"
      sha256 "8dcc3e2c1fa019bf3b4d878064d1df197f344b582ec092330675af55937daeac"
    else
      url "https://releases.observability.postman.com/cli/0.30.13/postman-insights-agent_0.30.13_darwin_amd64.zip"
      sha256 "290881c002c39670707af6cae3a3359a7eb2835d9e0775434cbc7aad7b0d436d"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
