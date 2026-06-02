# frozen_string_literal: true

class Uptimectl < Formula
  desc "CLI for managing Uptime Scheduler - start, stop, and schedule AWS resources"
  homepage "https://uptimescheduler.com"
  version "1.2.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.2.0/uptimectl-macos-arm64.tar.gz"
      sha256 "22519443358497fcadf399ca3c4fe6c17c09979c28380adf7f85a5b00a923246"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.2.0/uptimectl-macos-x86_64.tar.gz"
      sha256 "7be2a16b0c2ea295301b90579116a7550757a69372f5989e61e9a1b67572e06f"
    end
  end

  def install
    bin.install "uptimectl"
  end

  test do
    assert_match "uptime", shell_output("#{bin}/uptimectl --version")
  end
end
