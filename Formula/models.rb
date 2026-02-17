# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-x86_64-apple-darwin.tar.gz"
      sha256 "1d7a1212afedfd08733488488fffd83e339ffc97534009a604a4b449f62a9447"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-aarch64-apple-darwin.tar.gz"
      sha256 "1ebbb5416df0be3cdffdd2278cadc03ace46424cd69eb2c627307b9183ed99d6"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec7d15cb65977bf8b35dfe83b9763cdad04271a7c4f9a5470a30ca4752bfa943"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.7/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a83cf7b838a9f97414543d392af2f33925bace64ae33087a681bf6d912d70af"
      def install
        bin.install "models"
      end
    end
  end
end
