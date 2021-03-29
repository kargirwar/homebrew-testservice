class TestService < Formula
  desc "This service has been created to test brew"
  homepage "https://dev0.kargirwar.com"
  url "https://break-timer.kargirwar.com/release.zip"
  version "1.0"
  sha256 "99a647c5cc798134c1057bfe7f36d06e6f48c983a862b49dffbe377236c81b8a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
  end
end
