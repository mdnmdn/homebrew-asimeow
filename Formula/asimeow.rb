class Asimeow < Formula
  desc "A tool for managing macOS Time Machine exclusions for developer projects"
  homepage "https://github.com/mdnmdn/asimeow"
  version "0.1.8"
  license "MIT"  # Replace with your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.8/asimeow-aarch64-apple-darwin.zip"
      sha256 "8fad74540178f7fe916594488ec6eee86bd2c81284b216df5b28e8957fbebf82"
    else
      url "https://github.com/mdnmdn/asimeow/releases/download/v0.1.8/asimeow-x86_64-apple-darwin.zip"
      sha256 "44395e26ef84c40a8e521d3992e596fbd56c0798422ebdd3393def828c265ef4"
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
