# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "A fast TUI and CLI for browsing AI models, benchmarks, and coding agents"
  homepage "https://github.com/arimxyer/models"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-x86_64-apple-darwin.tar.gz"
      sha256 "d2b1b934efab3dc096df5049e97d22d890a9edd265965ba3e14a2fb217921267"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-aarch64-apple-darwin.tar.gz"
      sha256 "1775da52df8758892428a6ef790a9d976dfc2af084082c707d9df137adc3a3c7"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e19ffe7576fab7e4d0bd703ea054c949871c476091537d470cd783698f2ce83"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0319ef161e626257b3ecd697505c9bfc5da34857ec2a8f222febfe71cf18dc60"
      def install
        bin.install "models"
      end
    end
  end
end
