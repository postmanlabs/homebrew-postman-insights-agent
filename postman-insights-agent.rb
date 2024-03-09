class PostmanInsightsAgent < Formula
  desc "Postman Insights Agent"
  homepage "https://www.postman.com"
  version "0.30.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://releases.observability.postman.com/cli/0.30.2/postman-insights-agent_0.30.2_darwin_arm64.zip"
      sha256 "876063b0bf5fe4f4f003234cc5b40578bb36cebe18828d55ebf71d37862e2bbd"
    else
      url "https://releases.observability.postman.com/cli/0.30.2/postman-insights-agent_0.30.2_darwin_amd64.zip"
      sha256 "1cd92baf5fade3ecb64c17e0bd12a69db51b525748f924bb162c2a875477d8cb"
    end
  end

  def install
    bin.install "postman-insights-agent"
  end
end
