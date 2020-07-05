cask 'cbz-manager' do
  version '2020-06-25,86ff3fcfa2ce116402afd60c8908bd0f311a08c0'
  sha256 '7ca39627b17e222115e2ef70e14c51ad3ab38794ea61f8f1c8084ff0ed07274e'

  url "https://github.com/ociviol/cbzManager/raw/#{version.after_comma}/precompiled%20binairies/Mac%20OsX/cbzManagerOsx.zip"
  name 'cbzManager'
  homepage 'https://ollivierciviolsoftware.wordpress.com'

  depends_on formula: 'unzip'
  depends_on formula: 'unrar'
  depends_on formula: 'p7zip'
  depends_on formula: 'webp'

  app 'cbzManagerOsx.app'
end
