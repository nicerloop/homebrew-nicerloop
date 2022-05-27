cask "lunacy" do
  version "8.5.2"
  sha256 "e7a419ea07422c05161b1d0383277fa251f93ccbbf6dcac608556e186f429178"

  url "https://lun-eu.icons8.com/s/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "UI Design tool, cross-platform alternative to Sketch"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://docs.icons8.com/release-notes/"
    regex(/Lunacy_(\d+(?:\.\d+)+).dmg/i)
  end

  app "Lunacy.app"
end
