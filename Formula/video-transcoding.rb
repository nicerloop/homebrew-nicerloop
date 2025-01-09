class VideoTranscoding < Formula
  desc "Tools to transcode, inspect and convert videos"
  homepage "https://github.com/donmelton/video_transcoding"
  url "https://github.com/donmelton/video_transcoding/archive/refs/tags/2025.01.09.tar.gz"
  sha256 "13310dfa984acd3c7fe473f8a531076e70cfb55fd9caf0ec34bf28b868934032"

  depends_on "ffmpeg"
  depends_on "handbrake"
  depends_on "mkvtoolnix"
  depends_on "mp4v2"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "video_transcoding.gemspec"
    system "gem", "install", "video_transcoding-#{version}.gem"
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
