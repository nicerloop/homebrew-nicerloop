cask 'cbz-manager' do
  version '2020-05-10,5c02af6988271bb22d153bef92f57d753e0d77ba'
  sha256 'bb513b0b20332da666f89cbb121136deb0db7339d90a4fd0362de1e25c907af9'

  url "https://github.com/ociviol/cbzManager/raw/#{version.after_comma}/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip"
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
