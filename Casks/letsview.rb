cask "letsview" do
  version "1.0.3.11,b2618c54ea83a9b6f7404b47df0a053e"
  sha256 "a899ff3392d57b1386b92cbfc77cdb61184b98ca0a119f025e98b8789cf649cb"

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
