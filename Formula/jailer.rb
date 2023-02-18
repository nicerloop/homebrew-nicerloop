class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://github.com/Wisser/Jailer/releases/download/v14.3/jailer_14.3.zip"
  sha256 "53c442c32d33eafd488a64c84b2ce43f517505d62660c82e9be91c2a58a2d37b"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.sh") do |file|
      basename = "" + file.basename
      basename = basename.delete_suffix(".sh")
      (bin/basename).write_env_script file, Language::Java.overridable_java_home_env
    end
  end
end
