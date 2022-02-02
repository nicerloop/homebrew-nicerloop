class MacosScripts < Formula
  desc "Various command-line utility scripts for macOS"
  homepage "https://github.com/nicerloop/macos-scripts"
  url "https://github.com/nicerloop/macos-scripts/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "54e057b77697f113b57c00e5444b016e8cd1a6d157028e80864ee90666a47d4e"

  def install
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
