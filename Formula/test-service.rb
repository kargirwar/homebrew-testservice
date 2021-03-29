class TestService < Formula
  desc "Test service description"
  homepage "https://dev0.kargirwar.com"
  url "git@github.com:kargirwar/test-service.git"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
