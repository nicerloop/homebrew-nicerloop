class GitCredentialLastpass < Formula
  desc "Credential helper for git to retrieve usernames and passwords from lastpass"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "a75a24670fc38a7ed04092779589ffff02198c3e5c3ae35bfd9267370e1ec753"

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
