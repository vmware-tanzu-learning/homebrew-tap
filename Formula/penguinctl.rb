# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Penguinctl < Formula
  desc "Penguin CLI"
  homepage "https://github.com/vmware-tanzu-learning/penguinctl"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.1/penguinctl_v0.1.1_darwin_arm64.tar.gz"
      sha256 "583651b39060ab33bf719a79607d1a50430a40c088fc9ec2a9c28999f6383a83"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.1/penguinctl_v0.1.1_darwin_amd64.tar.gz"
      sha256 "55b96cc86c3be489c6096847800ad3c9cd4ed2d02c86fb8cd895ca567f6ffa68"

      def install
        bin.install "penguinctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.1/penguinctl_v0.1.1_linux_amd64.tar.gz"
      sha256 "cb438a8e7a0514d25088a1a74b4ddc0f6d52e7ecda415591c88fa6378eb60f39"

      def install
        bin.install "penguinctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vmware-tanzu-learning/penguinctl/releases/download/v0.1.1/penguinctl_v0.1.1_linux_arm64.tar.gz"
      sha256 "734da709ec0e6b718c3296eda2bec285930f579eeb564323d10523ef640c50ac"

      def install
        bin.install "penguinctl"
      end
    end
  end

  test do
    system "#{bin}/penguinctl --version"
  end
end
