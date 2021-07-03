# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "2.4.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.3/dalfox_2.4.3_darwin_amd64.tar.gz"
      sha256 "965e9abd07da7b7d9df6e8e74c6a627adf9e2871c9845f3c91a5ee54af5eced6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.3/dalfox_2.4.3_linux_amd64.tar.gz"
      sha256 "b03b585a3798db25ccc3702e2faf907f7f433c0560af6231a9f74fbdcb2bccb3"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.3/dalfox_2.4.3_linux_armv6.tar.gz"
      sha256 "aea9ba58c829e992be2aa87a6dc419ca09874e857827fd5245e62b3797f03353"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.3/dalfox_2.4.3_linux_arm64.tar.gz"
      sha256 "85fdd9a30bcbf749209033c6eb605434e4d835887ac076f990a8bb16609e260f"
    end
  end

  def install
    bin.install "dalfox"
  end

  test do
    system "#{bin}/dalfox version"
  end
end
