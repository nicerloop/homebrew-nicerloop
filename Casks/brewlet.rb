cask 'brewlet' do
    version '1.4'
    sha256 '5e41c055cf392dd5b7469298445608b6bd3330b68fd11059170a9a47c21949ff'
  
    url "https://github.com/zkokaja/Brewlet/releases/download/v#{version}/Brewlet.zip"
    appcast 'https://github.com/zkokaja/Brewlet/releases.atom'
    name 'Brewlet'
    homepage 'https://github.com/zkokaja/Brewlet'
  
    app 'Brewlet.app'
  end