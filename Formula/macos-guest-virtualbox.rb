class MacosGuestVirtualbox < Formula
  desc "Automted installer of macOS 10.13+ guests in Virtualbox"
  homepage "https://github.com/myspaghetti/macos-guest-virtualbox"
  url "https://github.com/myspaghetti/macos-virtualbox/releases/download/0.93.7/macos-guest-virtualbox.sh"
  sha256 "8f27aad76d6e4b1b8127a6632065ef01d6812b5d875e4adaa6fecb7cab9c096f"

  bottle :unneeded

  depends_on "bash"
  depends_on "coreutils"
  depends_on "dmg2img"
  depends_on "gzip"
  depends_on "unzip"
  depends_on "wget"

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"*.sh"]
  end
end
