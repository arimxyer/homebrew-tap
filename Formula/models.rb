# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "45da8a4feb6483136dc9908de5aa1b1047ca4c0b53be72f13f0cbc049cf9246d"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "033e534b4ef786227343efdf27fbeffff00c29c0af398474751aeb5bb3145165"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73ec09ada91359fb1f5c0be0dd8b3977d539d1f655fb9f31a78541732a190234"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.4.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45aa82409f33cc1b285fa4cf0be661509408e4c66fb5d420ade53e5119077502"
      def install
        bin.install "models"
      end
    end
  end
end
