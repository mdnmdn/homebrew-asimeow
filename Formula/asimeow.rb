class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.2.0"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.2.0/asimeow-aarch64-apple-darwin.zip"
      sha256 "a5ea2a8fd53f099ee984dee5f53e14c6f046811a3950d3fade0485607c0fa5d4"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.2.0/asimeow-x86_64-apple-darwin.zip"
      sha256 "21273a826bcc6c1bb09e14754d529cb387fecd2f54d882211750a64f37ada8ae"
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
