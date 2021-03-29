class TestService < Formula
  desc ""
  homepage ""
  url "git@github.com:kargirwar/test-service.git"
  version ""
  sha256 ""
  license ""

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
