# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class Penguinctl < Formula
  desc "Penguin CLI"
  homepage "https://github.com/vmware-tanzu-learning/penguinctl"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.8/penguinctl_v0.1.8_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "263739156a8c9860a6cb7d15710147204d2c204b2a6e4c60a3ec9facbd3e4861"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.8/penguinctl_v0.1.8_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "965cea3f62a73dc867703accc87667c2e0ee44b43aa1895fbe7ff6213ff7df57"

      def install
        bin.install "penguinctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.8/penguinctl_v0.1.8_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c1b08932fcb4f355915f0095af991f4d94e4444316825a4fed1a1f06131ee5c7"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.8/penguinctl_v0.1.8_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "588dcd2bd9e790bfcbd0b7f2b2798b0c53f3e2653aaac896eb6ea93206e23ed4"

      def install
        bin.install "penguinctl"
      end
    end
  end

  test do
    system "#{bin}/penguinctl --version"
  end
end
