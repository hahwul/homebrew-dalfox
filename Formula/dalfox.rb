# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "2.4.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.7/dalfox_2.4.7_darwin_amd64.tar.gz"
      sha256 "bdfe97e57e71366043cfa20d8e8ef88901787e3e475dba038c830f8afb2a6240"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.7/dalfox_2.4.7_linux_amd64.tar.gz"
      sha256 "4f7712f6d56c3fea1805bf59a16aef5be729d5a7a33b848eb4c36453618422ac"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.7/dalfox_2.4.7_linux_armv6.tar.gz"
      sha256 "98fee67ae112de33f736185f1aab8c77e5046dfe5dce56cca9127a9685e88f52"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.4.7/dalfox_2.4.7_linux_arm64.tar.gz"
      sha256 "6cc093a24b685b9a6439e3e26aaea15f323eea995bc53eb372042ed289b0b857"
    end
  end

  def install
    bin.install "dalfox"
  end

  test do
    system "#{bin}/dalfox version"
  end
end
