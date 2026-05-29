# frozen_string_literal: true

class Upscan < Formula
  desc "Scan AWS accounts for idle resources and estimate Uptime Scheduler savings"
  homepage "https://uptimescheduler.com"
  version "0.1.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.1/upscan-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "fd21a4cc3ecc8a9f898f5ed0ce4175fa42dba69bae8b17960b874d13f36982ca"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.1/upscan-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "a6ee1a1c3996cf1da6883989729dcf4630c7612ecb4bd9070b67b7aab0580dee"
    end
  end

  def install
    bin.install "upscan"
  end

  test do
    assert_match "upscan", shell_output("#{bin}/upscan --version")
  end
end
