# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.1.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "207aa2d5ba03d02b29e6cb10988fa62e6b081d824f438cb2ee1a41908efa7c88"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.1.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "c1688858241d25c85cc00a9691b1fa4d099dd6f1730e93bf45361055e7506fe0"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.1.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc2863b949d85884a97e2f16458ed66d1b23e53184f4e4cc80748fa119ddbcb3"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.1.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c18bea0644d3b58f74f37b1aee63154b8d8f8d6f6871a21a5c46b761ae4305eb"
      def install
        bin.install "models"
      end
    end
  end
end
