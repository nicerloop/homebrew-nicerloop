class GitCredentialKeepassxc < Formula
  desc "Helper that allows Git (and shell scripts) to use KeePassXC as credential store"
  homepage "https://github.com/frederick888/git-credential-keepassxc"
  url "https://github.com/Frederick888/git-credential-keepassxc/releases/download/v0.10.0/macos-latest-minimal.zip"
  sha256 "1d2485d466ed65a1d1a0c6005a0fc9c55594a1eaaf41b27eb1d114a727eec410"

  def install
    bin.install Dir["*"]
  end
end
