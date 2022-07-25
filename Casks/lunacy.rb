cask "lunacy" do
  version "8.6.2"
  sha256 "6aba89b4cfce4ea3a680b16a7fb6a2bd7d92b3a33ba3fb78498f8be632803e53"

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
