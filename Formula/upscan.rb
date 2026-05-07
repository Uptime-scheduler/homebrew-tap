# frozen_string_literal: true

class Upscan < Formula
  desc "Scan AWS accounts for idle resources and estimate Uptime Scheduler savings"
  homepage "https://uptimescheduler.com"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "artifacts/upscan-0.1.0-aarch64-apple-darwin.tar.gz.sha256:90df14e72acac78dd382ea590d7d62f6be034ff626d06b11eefaf5ef5eef1d23"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "artifacts/upscan-0.1.0-x86_64-apple-darwin.tar.gz.sha256:0fa7f5adca1588bd8ff44e559df26be59a0185707f9bfe37bedea5363690dbd5"
    end
  end

  def install
    bin.install "upscan"
  end

  test do
    assert_match "upscan", shell_output("#{bin}/upscan --version")
  end
end
