class GitCredentialKeepassxc < Formula
  desc "Helper that allows Git (and shell scripts) to use KeePassXC as credential store"
  homepage "https://github.com/frederick888/git-credential-keepassxc"
  url "https://github.com/Frederick888/git-credential-keepassxc/releases/download/v0.9.1/macos-latest-minimal.zip"
  sha256 "ee2b5e433096714fdc0a4016c1c93c3b7e6cc028f410c0ac1004073277f3b63c"

  def install
    bin.install Dir["*"]
  end
end
