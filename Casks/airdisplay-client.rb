cask 'airdisplay-client' do
  version '3.2'
  sha256 'a18e1580508c8d7830b22132de01c4ed87ef9cbfcf862690e0ef44c1ad764292'

  url "https://www.avatron.com/updates/software/airdisplay_macclient/admac-web-#{version.no_dots}.zip"
  name 'Air Display Client'
  homepage 'https://avatron.com/applications/air-display/'

  app 'Air Display.app'
end
