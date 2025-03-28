class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.36.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.36.1/postman-insights-agent_0.36.1_darwin_arm64.zip"
      sha256 "57b84f1a24f84edda9207dda75daa48c7667b6c650b05e73d8e2755845e2c34f"
    else
      url "https://releases.observability.postman.com/cli/0.36.1/postman-insights-agent_0.36.1_darwin_amd64.zip"
      sha256 "30a414acd95eb092c7d962e826163c6795fb7ad82cf9ef6b1f8e1b624571dd7f"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
