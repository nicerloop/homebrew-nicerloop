class MacosScripts < Formula
  desc "Various comman-line utility scripts for macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "bfc47250abf9bfd10a7b3f5737a0210532450e704911aed688798c7399621ff8"

  def install
    bin.install "launchpad-reset"
    bin.install "launchpad-sort"
    bin.install "login-picture"
    bin.install "rsync-backup"
    bin.install "smb-volume-mount"
    bin.install "vnc-connect"
    bin.install "webloc-to-url"
  end
end
