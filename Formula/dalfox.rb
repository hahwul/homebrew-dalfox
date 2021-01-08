# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "v2.2.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hahwul/dalfox/releases/download/v2.2.7/dalfox_2.2.7_darwin_amd64.tar.gz"
    sha256 "cfa16cd4c599ca4529c179deb497d004c8f37bfdb5a751b0e5d88d1397f76130"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hahwul/dalfox/releases/download/v2.2.7/dalfox_2.2.7_linux_amd64.tar.gz"
    sha256 "55e6c7b2b775efff6bc8c1a63f0834e934cd4e4d90efc519cada84224956e6d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/hahwul/dalfox/releases/download/v2.2.7/dalfox_2.2.7_linux_armv6.tar.gz"
    sha256 "cb8429cea09d5dabee44ed8ecafb554f0a9e8a037e8d3e854946a9dcee30debf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hahwul/dalfox/releases/download/v2.2.7/dalfox_2.2.7_linux_arm64.tar.gz"
    sha256 "1bb24b7c54ed59681615960b6b9150fcf76e23bec4063d773e90be1184917c2b"
  end

  def install
    bin.install "dalfox"
  end

  test do
    system "#{bin}/dalfox version"
  end
end
