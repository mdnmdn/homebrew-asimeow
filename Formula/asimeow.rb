class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.1.7"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.7/asimeow-aarch64-apple-darwin.zip"
      sha256 "1130fc3b0cbc6ca80a5c58dac54e57e6897f6d124f40906d6a586b26f97398c8"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.7/asimeow-x86_64-apple-darwin.zip"
      sha256 "610c774321460c3d131a51c37c86ffcfdbced4277e0531159793871071116f04"
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
