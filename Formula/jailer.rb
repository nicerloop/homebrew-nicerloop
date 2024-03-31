class Jailer < Formula
  desc "Database Subsetting and Relational Data Browsing Tool"
  homepage "https://wisser.github.io/Jailer"
  url "https://github.com/Wisser/Jailer/releases/download/v15.8.4/jailer_15.8.4.zip"
  sha256 "7df57798043adc5f9b6208dcba52518e9f1857d958bdf35ef94b63575215c51b"

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
    system "#{bin}/jailer"
  end
end
