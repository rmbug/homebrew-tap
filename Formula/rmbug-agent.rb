# typed: false
# frozen_string_literal: true

class RmbugAgent < Formula
  desc "rmBug Agent — secure identity-based database access"
  homepage "https://rmbug.com"
  version "1.0.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/rmbug/agent/releases/download/v1.0.15/rmbug-agent_1.0.15_darwin_arm64.tar.gz"
      sha256 "4896b7c1c51c2c13c4bce401e60678de6d2143cabfe268f388d6bfe72b478f17"
    end
    on_intel do
      url "https://github.com/rmbug/agent/releases/download/v1.0.15/rmbug-agent_1.0.15_darwin_amd64.tar.gz"
      sha256 "8e32d16457c603f6b0ae9dbd901155226b772fc47768eac8989385802f1211e7"
    end
  end

  def install
    bin.install "rmbug-agent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmbug-agent version 2>&1", 1)
  end
end
