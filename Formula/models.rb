# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.6.2/models-x86_64-apple-darwin.tar.gz"
      sha256 "6374c393402205895536ea5358c16cd76506e56aa018d01464977de3d6d95976"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.6.2/models-aarch64-apple-darwin.tar.gz"
      sha256 "c8ce3250b3e64daf2535159bbe8c4688ad8237b5d030ff19ff0eb00934931d1a"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.2/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79d0dfc913d7e5c433fc03d7831036b8bb277841fe1b932bda475a1c9603ff19"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.2/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ccc5db67e6108c552fa01b10b3e8b2d4898ef6b968fb2b775ce22c9d85c5baf"
      def install
        bin.install "models"
      end
    end
  end
end
