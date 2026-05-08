# frozen_string_literal: true

class Upscan < Formula
  desc "Scan AWS accounts for idle resources and estimate Uptime Scheduler savings"
  homepage "https://uptimescheduler.com"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "eaa7fa6f0471e536a3451c99e05b2c35a307cf1e8a5284efc46be24099b341d7"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.0/upscan-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5973a636c5fd403b6a48f9bb2c511535dfdfd222448cc760fcd9e8041c442c12"
    end
  end

  def install
    bin.install "upscan"
  end

  test do
    assert_match "upscan", shell_output("#{bin}/upscan --version")
  end
end
