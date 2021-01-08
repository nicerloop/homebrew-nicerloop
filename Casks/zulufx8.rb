cask "zulufx8" do
  version "8.0.275,8.50.0.53-ca-fx"
  sha256 "d6d20fdbbee8cf6a8ebffb15c662b69ea2d72ae8f7920f4a8b1d4b5b44dd39a8"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"
  appcast "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=8&os=macos&ext=dmg&bundle_type=jdk&javafx=true&release_status=ga"

  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install ZuluFX #{version.major}.pkg"

  conflicts_with cask: 'zulu8'
end
