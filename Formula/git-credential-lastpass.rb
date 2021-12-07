class GitCredentialLastpass < Formula
  desc "A credential helper for git to retrieve usernames and passwords from lastpass"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts.git", revision: "8dba1e636039612c595ed0434ff577d1cf856aad"
  version "2021-12-07"

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