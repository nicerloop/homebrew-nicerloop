cask "letsview" do
  version "1.0.2.5"
  sha256 "20857ad62619d035c004b0d86dec94a82060814e0358099799795e6718b3ac7c"

  # url "https://download.aoscdn.com/down.php?softid=letsview"
  url "https://d31gfrlvpyxnbz.cloudfront.net/letsview.pkg?2041bafef0a821237fb33913c8d0a285.pkg"
  name "LetsView"
  homepage "https://letsview.com/mac"

  livecheck do
    url "https://letsview.com/download-letsview"
    regex(%r{itembox mac.*<i>Version: (.*)</i>.*itembox android}i)
    strategy :page_match
  end

  pkg "letsview.pkg"

  uninstall pkgutil: [
    "MacLetsView.apowersoft.com",
  ]
end
