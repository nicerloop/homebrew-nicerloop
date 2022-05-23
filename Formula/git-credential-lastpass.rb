class GitCredentialLastpass < Formula
  desc "Credential helper for git to retrieve usernames and passwords from lastpass"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/git-credential-lastpass/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "04a32a4ff87fd4dfb7b98b8fb7ea6d4799fe0440d49e5522d8459afff8dbde7a"

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
