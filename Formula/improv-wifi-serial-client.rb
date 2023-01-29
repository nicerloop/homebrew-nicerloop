class ImprovWifiSerialClient < Formula
  desc "Configure an IoT device WiFi connection using improv-wifi serial protocol."
  homepage "https://github.com/nicerloop/improv-wifi-serial-client"
  url "https://github.com/nicerloop/improv-wifi-serial-client/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "dd0b44b835aff621fc4e965ee429538ae1af338fe6a76d6f285f8e8130073585"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "improv-wifi-serial-client", "--version"
  end
end
