# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CidrEncoderATV04 < Formula
  desc "CLI for time efficiently encoding cidr blocks to find if an IP exists in a range"
  homepage "https://jmoney.dev/cidr-encoder"
  version "0.4"
  license "Apache 2.0"
  depends_on :macos

  on_arm do
    url "https://github.com/jmoney/cidr-encoder/releases/download/v0.4/tokenizer_cli_0.4_darwin_arm64.tar.gz"
    sha256 "57a0d323e93b01209b7f3ff086dbb104157710b262cacbac26357e89b1aedc94"

    def install
      bin.install "cidr-encoder"
    end
  end

  test do
    system "#{bin}/cidr-encoder -h"
  end
end