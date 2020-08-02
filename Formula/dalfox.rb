# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "1.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hahwul/dalfox/releases/download/v1.2.1/dalfox_1.2.1_darwin_amd64.tar.gz"
    sha256 "1b73adc2d50554dc45f038970ea3d05255ead4d60dd99c809f1324948664a256"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v1.2.1/dalfox_1.2.1_linux_amd64.tar.gz"
      sha256 "97f2d55d6b3f8a54d9a8927ca3011ecfe12e8815780e7ce593d708b91424c9b0"
    end
  end

  def install
    bin.install "dalfox"
  end

  test do
    system "#{bin}/dalfox version"
  end
end
