class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.38.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.38.1/postman-insights-agent_0.38.1_darwin_arm64.zip"
      sha256 "9bdf4b439ee76e3085707f2513abbd1992bd6093bb0da23bc20e41952ff6f31f"
    else
      url "https://releases.observability.postman.com/cli/0.38.1/postman-insights-agent_0.38.1_darwin_amd64.zip"
      sha256 "c5f8c55b0aa810e6fa00df890316d077c4ce4c8703bb2ab586a6cb8048aa72de"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
