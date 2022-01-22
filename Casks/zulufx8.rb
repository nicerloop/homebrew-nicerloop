cask "zulufx8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "8.0.322,8.60.0.21-ca-fx"

  if Hardware::CPU.intel?
    sha256 "8bf213e0fc9f97fe8ff1cedea75b1490747a4f67e8a7ff160a6656b8cefed226"
  else
    sha256 "26633a1cfa92048df8922853fb938f0893ccb25b5ead7ba8f9388d95b98ed23f"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit with JavaFX"
  desc "OpenJDK  with JavaFX distribution from Azul"
  homepage "https://www.azul.com/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=true&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.dmg/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  conflicts_with cask: "zulu8"
  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
