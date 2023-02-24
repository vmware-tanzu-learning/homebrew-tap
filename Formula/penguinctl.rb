# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class Penguinctl < Formula
  desc "Penguin CLI"
  homepage "https://github.com/vmware-tanzu-learning/penguinctl"
  version "0.4.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.4/penguinctl_v0.4.4_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a227aaf3b59228ac283ec1bc6d74384acb70d75d7bad33d8be398dce46eb204f"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.4/penguinctl_v0.4.4_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ea38ae8a9795c2744ecb884742384f1d4939f224a6d3f054252e39a159e1c857"

      def install
        bin.install "penguinctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.4/penguinctl_v0.4.4_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3c51fb6ad3549c9909452df01e8edf2a38fe429fcceee51b99174498b820df4d"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.4.4/penguinctl_v0.4.4_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9c13c611741936846516a4094f8a9f55c45002a8c0941032b63ae2572d95c1ca"

      def install
        bin.install "penguinctl"
      end
    end
  end

  test do
    system "#{bin}/penguinctl --version"
  end
end
