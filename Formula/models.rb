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
      sha256 "397e5f438be63b0879b7ba94976ef26c39ec57f9a0e0de37f0f74234fe34b5dc"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-aarch64-apple-darwin.tar.gz"
      sha256 "70f598ad61cd7024058ea56c9d43034179c65558f133b1188bf4737dac14b7a6"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3357f038929419d44ef1b0a4352652cdfc26bef5312a31fc2e25f315da73f173"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.10.1/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd1b85019a4057078413739308a93d4ca756870e82c7fdb504b319006dde8d59"
      def install
        bin.install "models"
      end
    end
  end
end
