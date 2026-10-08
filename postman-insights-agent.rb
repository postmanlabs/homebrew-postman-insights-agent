class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.41.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.41.0/postman-insights-agent_0.41.0_darwin_arm64.zip"
      sha256 "e661e8d6210466432ca5e340b059d93b695f8309c7ccabb55db99316adbbaf0b"
    else
      url "https://releases.observability.postman.com/cli/0.41.0/postman-insights-agent_0.41.0_darwin_amd64.zip"
      sha256 "425705f33067c452fb45cafa702acdb227e83aa6e0a9cffbc18649bff0669e93"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
