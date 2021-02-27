cask "letsview" do
  version "1.0.3.11,2041bafef0a821237fb33913c8d0a285"
  sha256 "a899ff3392d57b1386b92cbfc77cdb61184b98ca0a119f025e98b8789cf649cb"

  # url "https://download.aoscdn.com/down.php?softid=letsview"
  url "https://d31gfrlvpyxnbz.cloudfront.net/letsview.pkg?#{version.after_comma}.pkg",
      verified: "d31gfrlvpyxnbz.cloudfront.net/letsview.pkg?#{version.after_comma}.pkg"
  name "LetsView"
  desc "Turn a computer into an Airplay display"
  homepage "https://letsview.com/mac"

  livecheck do
    url "https://letsview.com/download-letsview"
    regex(%r{itembox mac.*<i>Version: (.*)</i>.*itembox android}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0] + ",2041bafef0a821237fb33913c8d0a285" }
    end
  end

  pkg "letsview.pkg"

  uninstall pkgutil: [
    "MacLetsView.apowersoft.com",
  ]
end
