class TestService < Formula
  desc "This service has been created to test brew"
  homepage "https://dev0.kargirwar.com"
  version "1.0"
  license "MIT"

  bottle :unneeded

  if os.Mac? && Hardware::CPU.intel?
    url "https://break-timer.kargirwar.com/release.zip"
    sha256 "04acf3831ba06a4275dea71b3dfc039ea5a3b99345ecae014d4d773928450b65"
  end

  def install
    bin.install "test-service"
  end

  test do
    assert_match "Version 1.0", shell_output(bin/"test-service -v")
  end
end
