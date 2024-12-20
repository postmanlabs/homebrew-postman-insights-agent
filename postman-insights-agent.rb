class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.18"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.18/postman-insights-agent_0.30.18_darwin_arm64.zip"
      sha256 "4bc87e2924ef3cc12ef4c7bbdc229d7be25c481dafdfd75c48a82570330dd4b5"
    else
      url "https://releases.observability.postman.com/cli/0.30.18/postman-insights-agent_0.30.18_darwin_amd64.zip"
      sha256 "5df67b612ba834020452926753425672ac70635e819f9fb626ae9a23aa5fd84c"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
