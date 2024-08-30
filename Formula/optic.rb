class Optic < Formula
  desc "OpenAPI linting, diffing and testing"
  homepage "https://github.com/opticdev/optic"
  url "https://github.com/opticdev/optic/releases/download/v1.0.3/optic-darwin-amd64.tar.gz"
  version "1.0.3"
  sha256 "b054e3f97c0d519c20145414226ba3cacc3c219ae2678014599fadb992ffb91a"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "optic-darwin-amd64" => "optic"
  end

  test do
    system "#{bin}/optic", "--version"
    assert_equal "#{version}\n", `#{bin}/optic --version`
  end
end
