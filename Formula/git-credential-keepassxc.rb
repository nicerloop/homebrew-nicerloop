class GitCredentialKeepassxc < Formula
  desc "Helper that allows Git (and shell scripts) to use KeePassXC as credential store"
  homepage "https://github.com/frederick888/git-credential-keepassxc"
  url "https://github.com/Frederick888/git-credential-keepassxc/releases/download/v0.10.1/macos-latest-minimal.zip"
  sha256 "4155d1b70f3c4fe49838205f38078d05be2a56117820ae7951304c7fce360972"

  def install
    bin.install Dir["*"]
  end
end
