cask "zulufx8" do
  version "8.0.292,8.54.0.21-ca-fx"
  sha256 "103a15bd07245e1fcad30ffe25e8847750ec6de50492e9a361325d17432d9a04"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit"
  desc "Zulu build of OpenJDK - free to use without restrictions"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=8&os=macos&ext=dmg&bundle_type=jdk&javafx=true&release_status=ga"
    regex(/url":"https:.*zulu(.*)-jdk(.*)-macos/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] + "," + match[0] }
    end
  end

  conflicts_with cask: "zulu8"
  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install ZuluFX #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
