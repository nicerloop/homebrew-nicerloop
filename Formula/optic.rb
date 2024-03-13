class Optic < Formula
  desc "OpenAPI linting, diffing and testing"
  homepage "https://github.com/opticdev/optic"
  url "https://github.com/opticdev/optic/releases/download/v0.54.10/optic-darwin-amd64.tar.gz"
  version "0.54.10"
  sha256 "f16cd06759d65c293fa41beafb9ed0eff0983d7a0b706f7b1af152b32562b268"
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
