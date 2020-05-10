cask 'macos-catalina-patcher' do
  version '1.4.3'
  sha256 'b7d3de21e2f7c400093abf9000684193fa50fa770baa617b8d2291fb850ccba1'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/dosdude1/macos-catalina-patcher/releases/download/#{version}/macOS.Catalina.Patcher.dmg"
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app'
end
