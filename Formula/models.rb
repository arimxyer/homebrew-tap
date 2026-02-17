# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.8.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.8.8/models-x86_64-apple-darwin.tar.gz"
      sha256 "b325dd0dfa509927be3f643071c50c4e39f1cd2609997eff10434b73cd28d5e6"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.8.8/models-aarch64-apple-darwin.tar.gz"
      sha256 "4b1e309985a0667907eaa5ab1be356f1ab82955cd55e92298777b5da5c8cf4c9"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.8/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fac9799a62ca262249ccf97e2930e84bc56e450a0f97177af9112562df775f25"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.8.8/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "626bc41967d18a422978283cc7af3cb37241f088279ac911e78146cacaafb96a"
      def install
        bin.install "models"
      end
    end
  end
end
