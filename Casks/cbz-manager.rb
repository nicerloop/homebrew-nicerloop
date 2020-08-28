cask 'cbz-manager' do
  version '2020-08-21,7cebf88c4170b64d4684250634e5358cd9b0ec83'
  sha256 '70150351a8074562e407cb215b54dd62ca5486bd8d91ee3f4c6299786bb24446'

  url "https://github.com/ociviol/cbzManager/raw/#{version.after_comma}/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip"
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
