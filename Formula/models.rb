# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.7.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "12e2d25cf3c35a01cf8ba87625d9dc09fc243190e50c50625b48f011dbf5d7a7"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.7.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "5ab8c62f8188c150c4b282413bedb37f281fe5c614b0dad4798e199cef5e1c45"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.7.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a86fa1ee32c9c8393f7ce2502c9d9cd507e290c3406ea23095a773856b690f8"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.7.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "296c8f31fcd0dbdc2efc8e6d2fdd6c3604239d2ea463e7997fad19509c89865e"
      def install
        bin.install "models"
      end
    end
  end
end
