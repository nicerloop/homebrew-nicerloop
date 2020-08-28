cask 'retroactive' do
  version '1.8'
  sha256 'd7975ab31c644a70eea4bea233e841ac863f3710ca317e97288bf0adb4feeb3c'

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  appcast 'https://github.com/cormiertyshawn895/Retroactive/releases.atom'
  name 'Retroactive'
  homepage 'https://github.com/cormiertyshawn895/Retroactive'

  app "Retroactive #{version}/Retroactive (right click to open).app"
end
