# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "2.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_darwin_arm64.tar.gz"
      sha256 "228f23bfcdcfe7c3ee38fc0dde19b0b4abb76b82aeccbb581c741b386d7df311"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_darwin_amd64.tar.gz"
      sha256 "e4bdaf38fbe8f8d64d804b4d1665b69792ee9a9609aa9830bdf6a16136220843"

      def install
        bin.install "dalfox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_linux_armv6.tar.gz"
      sha256 "7cf7b0ce118126ab03dfc6865016b5d547324bb5c8c7ce747e2f91936326724c"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_linux_arm64.tar.gz"
      sha256 "c12ed294d719bb2fc9902775ace4e7b296bb5533fa4d97885810400c19ae5a51"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_linux_amd64.tar.gz"
      sha256 "85ec406fee10bb3de59afb860293a05eb63d992c914258197c6cd9d490ec8168"

      def install
        bin.install "dalfox"
      end
    end
  end

  test do
    system "#{bin}/dalfox version"
  end
end
