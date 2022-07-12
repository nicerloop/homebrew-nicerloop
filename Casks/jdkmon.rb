cask "jdkmon" do
  version "17.0.31"

  if Hardware::CPU.intel?
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "79153bb518c2c3b150a9d599cfc5a34af4661227bfbaa10927e62e98723b4a43"
    pkg "JDKMon-#{version}.pkg"
  else
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "462c0c88487ac010d49388fbd181aca3e668e4bd31bb7d1b6a6a4a5542d48a00"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
