# frozen_string_literal: true

class Uptime < Formula
  desc "CLI for managing Uptime Scheduler - start, stop, and schedule AWS resources"
  homepage "https://uptimescheduler.com"
  version "1.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.1.0/uptime-macos-arm64.tar.gz"
      sha256 "ccdc66e4ecb596ed1f1a211e3856d4a30a4b6a86fe3cdd8f1a0216ec8fc1e3b0"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.1.0/uptime-macos-x86_64.tar.gz"
      sha256 "1a8d3f56c021b6c3a4838e48f334580e001001d9a2c95997d3a6a6f37cb8c899"
    end
  end

  def install
    bin.install "uptime"
  end

  test do
    assert_match "uptime", shell_output("#{bin}/uptime --version")
  end
end
