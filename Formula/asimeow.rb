class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.9/asimeow-aarch64-apple-darwin.zip"
      sha256 "7b8e923e4851637b72ff09d2204204e1ff30f1c3b27443a4f2d6e801b71bbcea"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.9/asimeow-x86_64-apple-darwin.zip"
      sha256 "439126aa5956042d1f5971f4254a61882976f648021e6f2d27723dc065cb7ae0"
    end
  end

  def install
    bin.install "asimeow"
    # Add any other files you want to install
  end

  service do
    run [opt_bin/"asimeow"]
    run_type :cron
    cron "*/5 * * * *"
    log_path var/"log/asimeow.log"
    error_log_path var/"log/asimeow.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    system "#{bin}/asimeow", "--help"
  end
end
