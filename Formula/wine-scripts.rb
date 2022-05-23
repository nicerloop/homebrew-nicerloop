class WineScripts < Formula
  desc "Command-line utility scripts for wine on macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/wine-scripts/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "cbfa5604b2358f24d5a0077392ce7521452e34a2946beae28709100e99e6114e"

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
