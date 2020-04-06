cask 'macos-catalina-patcher@1.3.0' do
  version '1.3.0'
  sha256 '128b39b3539809a67f0cd0da03b53a61d21731d5e891c58077fc33050fb525fc'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/dosdude1/macos-catalina-patcher/releases/download/#{version}/macOS.Catalina.Patcher.dmg"
  appcast 'http://dosdude1.com/catalina/changelog.html'
  name 'macOS Catalina Patcher'
  homepage 'http://dosdude1.com/catalina/'

  app 'macOS Catalina Patcher.app', target: 'macOS Catalina Patcher 1.3.0.app'
end
