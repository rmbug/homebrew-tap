# This formula is auto-updated by GoReleaser on each agent release.
# Manual edits will be overwritten.
class RmbugAgent < Formula
  desc "rmBug Agent — secure identity-based database access"
  homepage "https://rmbug.com"
  version "0.0.0"
  url "https://github.com/rmbug/core/releases"

  def install
    bin.install "rmbug-agent"
  end
end
