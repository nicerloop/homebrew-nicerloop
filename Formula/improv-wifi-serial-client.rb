class ImprovWifiSerialClient < Formula
  desc "Configure an IoT device WiFi connection using improv-wifi serial protocol"
  homepage "https://github.com/nicerloop/improv-wifi-serial-client"
  url "https://github.com/nicerloop/improv-wifi-serial-client/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "faaf18712de47e31cd77d3f3ec4048b859b89ff359193eabfc3059961d7c80a0"

  bottle do
    root_url "https://github.com/nicerloop/homebrew-nicerloop/releases/download/improv-wifi-serial-client-0.4.0"
    sha256 cellar: :any_skip_relocation, ventura: "83360be43bd850cd7e25a52e89c46d501ce4b1bed9393ec0d53943379db7d96e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/improv-wifi-serial-client", "--version"
  end
end
