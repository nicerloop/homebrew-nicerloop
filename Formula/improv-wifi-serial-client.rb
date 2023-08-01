class ImprovWifiSerialClient < Formula
  desc "Configure an IoT device WiFi connection using improv-wifi serial protocol"
  homepage "https://github.com/nicerloop/improv-wifi-serial-client"
  url "https://github.com/nicerloop/improv-wifi-serial-client/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "faaf18712de47e31cd77d3f3ec4048b859b89ff359193eabfc3059961d7c80a0"

  bottle do
    root_url "https://github.com/nicerloop/homebrew-nicerloop/releases/download/improv-wifi-serial-client-0.4.1"
    sha256 cellar: :any_skip_relocation, ventura:  "4a2ea243bd14c0617bd819032713b80d99aeecdf3f6ca622bb8118868f158bc8"
    sha256 cellar: :any_skip_relocation, monterey: "8b457b8e9a104bc64c4501832c1ab1554e9baaff6268bdb87a0103c936539ebb"
    sha256 cellar: :any_skip_relocation, big_sur:  "2f5fa8b6af71db45d1383d21a3638651d081d4b7e56734c83f2d18eb21c3cda5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/improv-wifi-serial-client", "--version"
  end
end
