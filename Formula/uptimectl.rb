# frozen_string_literal: true

class Uptimectl < Formula
  desc "CLI for managing Uptime Scheduler - start, stop, and schedule AWS resources"
  homepage "https://uptimescheduler.com"
  version "1.2.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.2.0/uptimectl-macos-arm64.tar.gz"
      sha256 "b66a4d46e6efbfb3999791e138c845a564e9370a3147ffccb6eb023f14444665"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/uptime-cli/releases/download/v1.2.0/uptimectl-macos-x86_64.tar.gz"
      sha256 "54a12135026eb09097b74f7711d73677d513e1e1ea8328b691788619dc99314c"
    end
  end

  def install
    bin.install "uptimectl"
  end

  test do
    assert_match "uptime", shell_output("#{bin}/uptimectl --version")
  end
end
