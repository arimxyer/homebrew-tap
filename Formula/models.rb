# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.6.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "2b36422539e5c49ec3cf13fde3bff5a564397ac5b702a3639ca01ab7cf90b129"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.6.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "0381a74eb309d7029593bb690a4d9bc5a31537efe2e516c265efa6707d747fe9"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "302455185f4fcf8acf782a552513124c7a66266bc07b0c785c6891d7ea12b5ba"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b59470fca6d9c7bb653b731c91cb23a3a6e2640ea4915eb651667ea418bc337"
      def install
        bin.install "models"
      end
    end
  end
end
