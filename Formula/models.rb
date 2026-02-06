# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.6.1/models-x86_64-apple-darwin.tar.gz"
      sha256 "394e855ea84131c668274851b57852a1d7ed8ebf2614710635f668d0f4c646ef"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.6.1/models-aarch64-apple-darwin.tar.gz"
      sha256 "f6f5429a7f215369d476f18bf6be43d6bba590287fbc809b6c163196c83ad5c4"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.1/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3337d922919b3677206c12f21405fa66adcbb83a6d182790ad729ee7aa9d746f"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.6.1/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "821429f92fe784767d5b95418bdd8ae72abf13ab58e7f08c0f7b86e1de797f13"
      def install
        bin.install "models"
      end
    end
  end
end
