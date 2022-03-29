# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dalfox < Formula
  desc "DalFox(Finder Of XSS) / Parameter Analysis and XSS Scanning tool based on golang"
  homepage "https://www.hahwul.com"
  version "2.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hahwul/dalfox/releases/download/v2.7.3/dalfox_2.7.3_darwin_arm64.tar.gz"
      sha256 "58d23295e3babc4364cb720daa4bf7ee8d3e5248aa8b66286fb6ccef1b5d1687"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.7.3/dalfox_2.7.3_darwin_amd64.tar.gz"
      sha256 "f99a5faee30c7f6e56729b712c321961d0bdf8e732ec44556314e117c029cf69"

      def install
        bin.install "dalfox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.7.3/dalfox_2.7.3_linux_armv6.tar.gz"
      sha256 "9d81ac61196fce684de76b1764183173ab471d7a5351a870665aebcc8c51e8b3"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hahwul/dalfox/releases/download/v2.7.3/dalfox_2.7.3_linux_arm64.tar.gz"
      sha256 "64d15a5df805c407babaaae87f0ca5d0735f045a5e4b78f1961c6c820e9f2efe"

      def install
        bin.install "dalfox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/dalfox/releases/download/v2.7.3/dalfox_2.7.3_linux_amd64.tar.gz"
      sha256 "ee01188e78b7649abb2dc5d22fce08901a9f8c6db12ea800c86dfa731923ff08"

      def install
        bin.install "dalfox"
      end
    end
  end

  test do
    system "#{bin}/dalfox version"
  end
end
