class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://github.com/Wisser/Jailer/releases/download/v16.5.1/jailer_16.5.1.zip"
  sha256 "3063ccf5fd44b3494e53a7ed70cef32b62429281f74b931c5237577c5ad2f301"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.sh") do |file|
      basename = "" + file.basename
      basename = basename.delete_suffix(".sh")
      (bin/basename).write_env_script file, Language::Java.overridable_java_home_env
    end
  end

  test do
    system bin/"jailer"
  end
end
