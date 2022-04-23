# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ServerTlsMonitor < Formula
  desc "Reports tls certificate metrics"
  homepage "https://jmoney.dev/"
  version "0.0.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.3/server-tls-monitor_0.0.3_Darwin_arm64.tar.gz"
      sha256 "3a137a1ac2a888c68c2387de424c9b387ac0e504db6c73f4d95deab1808eb203"

      def install
        bin.install "server-tls-monitor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.3/server-tls-monitor_0.0.3_Darwin_x86_64.tar.gz"
      sha256 "00a31d13d31348dbfc4a7dfa8ecffcb93c7c2ce00d8b2a5ae24a7755774a0fb4"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.3/server-tls-monitor_0.0.3_Linux_arm64.tar.gz"
      sha256 "8fe15d76caced43976e2f16f6895aedf7474ad34cb79d2c5c3c73e374ac0bf92"

      def install
        bin.install "server-tls-monitor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.0.3/server-tls-monitor_0.0.3_Linux_x86_64.tar.gz"
      sha256 "99d02577ccf85881eebf74c3d33000399612e5bf38d1e14f58dac3ce417d09cd"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  test do
    system "#{bin}/server-tls-monitor -h"
  end
end
