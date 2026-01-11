# typed: false
# frozen_string_literal: true

class Models < Formula
  desc "Fast CLI and TUI for browsing AI model information from models.dev"
  homepage "https://github.com/arimxyer/models"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arimxyer/models/releases/download/v0.3.0/models-x86_64-apple-darwin.tar.gz"
      sha256 "b4b89394292a74aab65363f598a45c904c6898fcad0ecdf61a1ce393274b21da"

      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arimxyer/models/releases/download/v0.3.0/models-aarch64-apple-darwin.tar.gz"
      sha256 "453fafae5e369698a5ad93a907b7496804603cca075a3e3bf212553e376a9854"

      def install
        bin.install "models"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.3.0/models-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "123feed4fe8c787b9410de1a160fcf04fbedf3867eae414e8f57cf92df84fe13"
      def install
        bin.install "models"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arimxyer/models/releases/download/v0.3.0/models-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daec9258fffcddeb3b93c7388380f0c11da68ec9e600106838b9f222843f4252"
      def install
        bin.install "models"
      end
    end
  end
end
