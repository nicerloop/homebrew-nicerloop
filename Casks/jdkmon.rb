cask "jdkmon" do
  version "17.0.26"

  if Hardware::CPU.intel?
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "bf609190077211bf92de090414aa6209e3ec001e58d16f3bc93cdef9a87083e6"
    pkg "JDKMon-#{version}.pkg"
  else
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "aaa9bf9d948639a656747d6b559f266761a00f58dc05707a634217e14996aadf"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
