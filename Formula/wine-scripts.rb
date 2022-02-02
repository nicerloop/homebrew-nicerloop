class WineScripts < Formula
  desc "Command-line utility scripts for wine on macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "54e057b77697f113b57c00e5444b016e8cd1a6d157028e80864ee90666a47d4e"

  depends_on "winetricks"
  depends_on "exiftool"
  depends_on "icoutils"
  depends_on "coreutils"
  # depends_on cask: "gcenx/wine/wine-crossover"

  def install
    bin.install "wine-setup-win32-dotnet48"
    bin.install "wine-wrap-application"
  end
end
