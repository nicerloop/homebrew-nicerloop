class GitCredentialKeepassxc < Formula
  desc "Helper that allows Git (and shell scripts) to use KeePassXC as credential store"
  homepage "https://github.com/frederick888/git-credential-keepassxc"
  url "https://github.com/Frederick888/git-credential-keepassxc/releases/download/v0.11.0/macos-latest-minimal.zip"
  sha256 "43a047e35df430a1bb0acf16f23f420933dfc51cc0d9fdf7dd18a5bbf58ee44e"

  def install
    bin.install Dir["*"]
  end
end
