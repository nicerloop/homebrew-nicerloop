class GitCredentialLastpass < Formula
  desc "A credential helper for git to retrieve usernames and passwords from lastpass"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts.git", branch: "main", revision: "ac5ea502a12236875b369771b03aebc6d0c09689"
  version "2021-12-07_2"

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