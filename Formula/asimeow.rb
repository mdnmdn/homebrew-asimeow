class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.1.5"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.5/asimeow-aarch64-apple-darwin.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.5/asimeow-x86_64-apple-darwin.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "asimeow"
    # Add any other files you want to install
  end

  test do
    system "#{bin}/asimeow", "--help"
  end
end
