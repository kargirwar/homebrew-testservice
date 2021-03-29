class TestService < Formula
  desc "This service has been created to test brew"
  homepage "https://dev0.kargirwar.com"
  url "git@github.com:kargirwar/test-service.git"
  version "1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
