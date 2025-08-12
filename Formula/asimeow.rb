class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.2.1"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.2.1/asimeow-aarch64-apple-darwin.zip"
      sha256 "38ccd35f44d3c8e9aeef629ec3c8584e988a978db9b14bec07e2f1676932bca5"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.2.1/asimeow-x86_64-apple-darwin.zip"
      sha256 "5ea867152b2374c7a6bc7fc8d65c3bb6c009dfb612fad0d219baf8e80ef6a367"
    end
  end

  def install
    bin.install "asimeow"
    # Add any other files you want to install
  end

  service do
    run [opt_bin/"asimeow"]
    run_type :interval
    interval 21600 # 6 hours in seconds (6 * 60 * 60)
    log_path var/"log/asimeow.log"
    error_log_path var/"log/asimeow.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    system "#{bin}/asimeow", "--help"
  end
end
