class GitCredentialLastpass < Formula
  desc "Credential helper for git to retrieve usernames and passwords from lastpass"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "bfc47250abf9bfd10a7b3f5737a0210532450e704911aed688798c7399621ff8"

  depends_on "lastpass-cli"
  depends_on "pinentry-mac"

  def install
    bin.install "git-credential-lastpass"
  end

  def caveats
    <<~EOS
      To set up this git credential helper:
        git config --global credential.helper "lastpass"
    EOS
  end
end
