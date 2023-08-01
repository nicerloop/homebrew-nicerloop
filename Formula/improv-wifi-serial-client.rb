class ImprovWifiSerialClient < Formula
  desc "Configure an IoT device WiFi connection using improv-wifi serial protocol"
  homepage "https://github.com/nicerloop/improv-wifi-serial-client"
  url "https://github.com/nicerloop/improv-wifi-serial-client/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "108a51cfa835dc0dcace40d7af70b9b6408f937f59b357ddb0b7e17e63291757"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/improv-wifi-serial-client", "--version"
  end
end
