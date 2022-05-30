class WineScripts < Formula
  desc "Command-line utility scripts for wine on macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/wine-scripts/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "3c5c2243d7edad589a3478a96241e767ba0cac7d3630cea0582350117a145b4d"

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
