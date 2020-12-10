cask "zulufx8" do
  version "8.0.275,8.50.0.53-ca-fx"
  sha256 "f7e8cd3bc868c54dc58e6e64b232043f737e6401b739be40e841ffc59c322930"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"
  appcast "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=8&os=macos&ext=zip&bundle_type=jdk&javafx=true&release_status=ga"

  depends_on macos: ">= :yosemite"

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-8.jdk",
      target: "/Library/Java/JavaVirtualMachines/zulu-8.jdk"

  conflicts_with cask: 'zulu8'
end
