# see https://github.com/Homebrew/homebrew-cask-versions/pull/7379
cask 'microsoft-edge-canary' do

  module Utils
    def self.file_version
      require 'open-uri'
      appcast = 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDCN01-chk.xml'
      appcast_version = open("#{appcast}").read.split(/\n+/).grep(/<string>/).last.scan(/<string>(.*)<\/string>/)[0][0].split('.')
      file_version = appcast_version[0] + ".0." + appcast_version[1] + ".0"
      end
  end

  version "#{Utils.file_version}"
  sha256 :no_check

  # officecdn-microsoft-com.akamaized.net was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdgeCanary-#{version}.pkg"
  appcast 'https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409EDCN01-chk.xml'
  name 'Microsoft Edge Canary'
  homepage 'https://www.microsoftedgeinsider.com/'

  auto_updates true

  pkg "MicrosoftEdgeCanary-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.Edge.Canary'
end
