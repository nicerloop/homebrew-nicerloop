class MacosScripts < Formula
  desc "Various comman-line utility scripts for macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "a75a24670fc38a7ed04092779589ffff02198c3e5c3ae35bfd9267370e1ec753"

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
