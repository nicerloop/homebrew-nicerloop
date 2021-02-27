cask "letsview" do
  version "1.0.2.5,2041bafef0a821237fb33913c8d0a285"
  sha256 "20857ad62619d035c004b0d86dec94a82060814e0358099799795e6718b3ac7c"

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
