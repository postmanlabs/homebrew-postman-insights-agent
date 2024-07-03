class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.8/postman-insights-agent_0.30.8_darwin_arm64.zip"
      sha256 "bcd71eaea0ef21826eed5e336ac0ac3dad8b19fc759c5e91d51096ae0d312aca"
    else
      url "https://releases.observability.postman.com/cli/0.30.8/postman-insights-agent_0.30.8_darwin_amd64.zip"
      sha256 "1375d47d2615ad722a40f9c326ada80d702dbea0496bb676f63c015742a57dc4"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
