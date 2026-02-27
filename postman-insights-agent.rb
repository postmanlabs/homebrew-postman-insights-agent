class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.40.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.40.0/postman-insights-agent_0.40.0_darwin_arm64.zip"
      sha256 "98e46230e6723466dc90c56f49083bd4edc22a5a1b36c1e98f77af95581b9d4f"
    else
      url "https://releases.observability.postman.com/cli/0.40.0/postman-insights-agent_0.40.0_darwin_amd64.zip"
      sha256 "b6a2ba47867ddd440bebabc6014d88b5b74966eb0bca99bf15900a9cd963ae96"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
