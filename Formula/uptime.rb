# frozen_string_literal: true

class Uptime < Formula
  desc "CLI for managing Uptime Scheduler — start, stop, and schedule AWS resources"
  homepage "https://uptimescheduler.com"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v0.1.0/uptime-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM_SHA256"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v0.1.0/uptime-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_SHA256"
    end
  end

  def install
    bin.install "uptime"
  end

  test do
    assert_match "uptime", shell_output("#{bin}/uptime --version")
  end
end