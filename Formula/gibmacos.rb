class Gibmacos < Formula
  desc "Py2/py3 script that can download macOS components direct from Apple"
  homepage "https://github.com/corpnewt/gibMacOS"
  url "https://github.com/corpnewt/gibMacOS.git", revision: "9a683e716faef22c05183095ebc38c3611b16295"
  version "2020-12-29"

  def install
    bin.install "BuildmacOSInstallApp.command"
    bin.install "MakeInstall.py"
    bin.install "Scripts"
    bin.install "gibMacOS.command"
  end
end
