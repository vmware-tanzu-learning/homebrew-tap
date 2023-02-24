# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class Penguinctl < Formula
  desc "Penguin CLI"
  homepage "https://github.com/vmware-tanzu-learning/penguinctl"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.5/penguinctl_v0.4.5_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9c85a95545d4da521d82f916e8e3d82cc018105105f7a4dee34a57d835d8d393"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.5/penguinctl_v0.4.5_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e29f9f442e8fda25eb957758838eb1fbaa3f5de645b77b72639da914913284ed"

      def install
        bin.install "penguinctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.5/penguinctl_v0.4.5_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1a6b4986c22fd13f691ad6a7179df522520221c7441e82c46448e32aad2342ec"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.5/penguinctl_v0.4.5_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ed55836c06ef4c7ea25b280b9901a2ed071d245b7e2af55df6069c71371e14fd"

      def install
        bin.install "penguinctl"
      end
    end
  end

  test do
    system "#{bin}/penguinctl --version"
  end
end
