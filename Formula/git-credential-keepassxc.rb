class GitCredentialKeepassxc < Formula
  desc "Helper that allows Git (and shell scripts) to use KeePassXC as credential store"
  homepage "https://github.com/frederick888/git-credential-keepassxc"
  url "https://github.com/Frederick888/git-credential-keepassxc/releases/download/v0.8.2/macos-latest-minimal.zip"
  sha256 "01636b58af7a3aab4e3d980accd06ce8c7c1eda624f4aab482e15efe12803b68"

  def install
    bin.install Dir["*"]
  end
end
