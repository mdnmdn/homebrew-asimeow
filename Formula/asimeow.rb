class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.1.7"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.7/asimeow-aarch64-apple-darwin.zip"
      sha256 "cf3a88629aa0d8bcdd322ec4f1c5ded26c28f91693af403f0beee2c5a9f0629e"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.7/asimeow-x86_64-apple-darwin.zip"
      sha256 "eda2889c1287c59fe540694502f595d6f1ab4b0b4fe1d46214ac0926b6706a1d"
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
