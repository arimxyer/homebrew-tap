# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.9.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.9.7/models-x86_64-apple-darwin.tar.gz"
      sha256 "0911cd76b3acf357b75101d6280b2fbd31f3b674ab3456eb4fa0aa0801fbd3f2"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.9.7/models-aarch64-apple-darwin.tar.gz"
      sha256 "bd1fd33b6c92f232693acd7b764f4ce323b59b31bc9a4c6d15a40798f1856615"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.7/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a744fc928e41b53699417bca087c1e0607fa8d2a9ea1953049d792ca5d58ee15"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.9.7/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3126c39c686621cce7428792424cc1abde198f4279b5163ca9f9f96c6c96a54"
      def install
        bin.install "models"
      end
    end
  end
end
