class FortranIos < Formula
  arch arm: "-arm64", intel: "86_64"

  desc "Fortran compiler for iOS ARM64"
  homepage "https://github.com/ColdGrub1384/fortran-ios"
  url "https://github.com/ColdGrub1384/fortran-ios/releases/download/v#{version}/fortran-ios-macos-#{arch}.zip"
  version "2.3"
  sha256 arm:   "d9912e2d4361ca0045b1aea39c8217c3551ff7565fa7e720400381dacf5c3295",
         intel: "a311dd2f91859384a8a4d38ed2a204219c9122db9d76f06500316292c751afc3"
  depends_on "docker"

  def install
    inreplace "bin/gfortran", '"flang.sh"', '"fortran-ios-flang.sh"'
    inreplace "bin/gfortran", '"llc"', '"fortran-ios-llc"'
    bin.install "bin/gfortran" => "fortran-ios-gfortran"
    bin.install "bin/flang.sh" => "fortran-ios-flang.sh"
    bin.install "bin/llc" => "fortran-ios-llc"
    share.install Dir["share/*"]
  end
end
