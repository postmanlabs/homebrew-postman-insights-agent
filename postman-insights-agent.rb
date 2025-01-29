class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.32.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.32.0/postman-insights-agent_0.32.0_darwin_arm64.zip"
      sha256 "0a4cb1d13d6fc193644768a078042d65eacdf0a810274508b2806864841f980b"
    else
      url "https://releases.observability.postman.com/cli/0.32.0/postman-insights-agent_0.32.0_darwin_amd64.zip"
      sha256 "b686430c521d92f06b074183e03aec3774c14df0d0da531a78208b2ba199887f"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
