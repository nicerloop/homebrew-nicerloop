cask "rescribe" do
  version "1.0.0"
  sha256 "29a4c5faf3ecde2bf531085f59c9e19e732e8667f377734d65533d9540643282"

  url "https://rescribe.xyz/rescribe/#{version}/darwin/rescribe.zip"
  name "rescribe"
  desc "Easy-to-use desktop tool for performing OCR on image files, PDFs and Google Books"
  homepage "https://rescribe.xyz/rescribe/"

  livecheck do
    url "https://rescribe.xyz/rescribe/"
    regex(%r{href="(\d+(?:\.\d+)+)/darwin}i)
    strategy :page_match
  end

  app "Rescribe.app"
end
