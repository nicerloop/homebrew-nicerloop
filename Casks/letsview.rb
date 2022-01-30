cask "letsview" do
  version "1.1.0,b2618c54ea83a9b6f7404b47df0a053e"
  sha256 "00d361fc438059d171ea6c00a271ada3f2eaac5a22153a9e61cce53f25c96599"

  # "https://download.aoscdn.com/down.php?softid=letsview", "User-Agent: Macintosh"
  url "https://download.apowersoft.info/letsview.pkg?#{version.after_comma}.pkg",
      verified: "apowersoft.info/letsview"
  name "LetsView"
  desc "Turn a computer into an Airplay display"
  homepage "https://letsview.com/mac"

  livecheck do
    url "https://letsview.com/download-letsview"
    regex(%r{itembox mac.*<i>Version: (.*)</i>.*itembox android}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0] + ",b2618c54ea83a9b6f7404b47df0a053e" }
    end
  end

  pkg "letsview.pkg"

  uninstall pkgutil: [
    "MacLetsView.apowersoft.com",
  ]
end
