cask "jdkmon" do
  version "17.0.33"

  if Hardware::CPU.intel?
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "c3468361c6bcec37a12871d6846097e206edb6548e28a3cf200e7f7c692ad177"
    pkg "JDKMon-#{version}.pkg"
  else
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "39db14b85d3a8332045d06d2ab28cb06ae79d27be2ce9f3df4bb3dabd4316880"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
