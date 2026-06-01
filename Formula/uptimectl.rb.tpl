# frozen_string_literal: true

class UptimeCtl < Formula
  desc "CLI for managing Uptime Scheduler - start, stop, and schedule AWS resources"
  homepage "https://uptimescheduler.com"
  version "{{VERSION}}"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v{{VERSION}}/uptime-macos-arm64.tar.gz"
      sha256 "{{ARM_SHA}}"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v{{VERSION}}/uptime-macos-x86_64.tar.gz"
      sha256 "{{X86_SHA}}"
    end
  end

  def install
    bin.install "uptimectl"
  end

  test do
    assert_match "uptime", shell_output("#{bin}/uptimectl --version")
  end
end
