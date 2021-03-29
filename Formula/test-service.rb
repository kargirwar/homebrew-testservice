class TestService < Formula
  desc "This service has been created to test brew"
  homepage "https://dev0.kargirwar.com"
  url "https://break-timer.kargirwar.com/release.zip"
  version "1.0"
  sha256 "0d624efb15c52b6a3bcc02fb2ee13f753d052556ba1b8ff91f5a6c737fec59fe"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Version 1.0", shell_output(bin/"test-service -v", 0)
  end
end
