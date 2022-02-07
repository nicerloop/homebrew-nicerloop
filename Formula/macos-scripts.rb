class MacosScripts < Formula
  desc "Various command-line utility scripts for macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "1e6c1dfcca8d9640ba244106fe1be2537103c68c5b280ea576d5f91d0a8037e1"

  def install
    bin.install "brew-bundle-leaves"
    bin.install "brew-bundle-patch-install-receipts"
    bin.install "launchpad-reset"
    bin.install "launchpad-sort"
    bin.install "login-picture"
    bin.install "rsync-backup"
    bin.install "smb-volume-mount"
    bin.install "vnc-connect"
    bin.install "volume-icon"
    bin.install "webloc-to-url"
    bin.install "xcode-command-line-tools-reinstall"
    bin.install "xcode-uninstall"
  end
end
