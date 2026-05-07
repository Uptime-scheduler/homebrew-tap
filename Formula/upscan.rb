# frozen_string_literal: true

class Upscan < Formula
  desc "Scan AWS accounts for idle resources and estimate Uptime Scheduler savings"
  homepage "https://uptimescheduler.com"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/uptimescheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM_SHA256"
    end
    on_intel do
      url "https://github.com/uptimescheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_SHA256"
    end
  end

  def install
    bin.install "upscan"
  end

  test do
    assert_match "upscan", shell_output("#{bin}/upscan --version")
  end
end
