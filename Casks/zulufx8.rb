cask "zulufx8" do
  version "8.0.282,8.52.0.23-ca-fx"
  sha256 "84393b9430bbb4e5270cc00a0fc1311df6508e85c0bc891bff1ed1d5067da190"

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
