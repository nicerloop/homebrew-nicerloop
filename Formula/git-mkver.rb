class GitMkver < Formula
  MKVER_VERSION = "1.2.1".freeze
  MKVER_SHA256  = "081e92be4e94c24f63733f07b60040250565af9518541c2e80019d578dc888ca".freeze

  desc "Installs git-mkver from pre-built binaries"
  homepage "https://idc101.github.io/git-mkver/"
  url "https://github.com/idc101/git-mkver/releases/download/v#{MKVER_VERSION}/git-mkver-darwin-amd64-#{MKVER_VERSION}.tar.gz"
  sha256 MKVER_SHA256

  def install
    bin.install "git-mkver"
  end
end
