# frozen_string_literal: true

class Upscan < Formula
  desc "Scan AWS accounts for idle resources and estimate Uptime Scheduler savings"
  homepage "https://uptimescheduler.com"
  version "0.1.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.1/upscan-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "8988228d24b72f72af97cc58e1e88513909d449cc1930051bce6aa7347efa23b"
    end
    on_intel do
      url "https://github.com/Uptime-scheduler/upscan/releases/download/v0.1.1/upscan-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "b12d047674e5c2a92beb8c782c5315d23d63d563ef83967f81e11f3d56ca7bfd"
    end
  end

  def install
    bin.install "upscan"
  end

  test do
    assert_match "upscan", shell_output("#{bin}/upscan --version")
  end
end
