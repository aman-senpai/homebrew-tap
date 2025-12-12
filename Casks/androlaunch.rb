cask "androlaunch" do
  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v0.3.3/AndroLaunch.zip"
  name "AndroLaunch"
  desc "macOS menu bar application for managing Android devices."
  homepage "https://github.com/aman-senpai/AndroLaunch"

  # The calculated SHA-256 checksum:
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  # This is the core installation instruction for a macOS application bundle.
  app "AndroLaunch.app"

  # Dependencies and information for the user
  caveats do
    <<~EOS
      AndroLaunch relies on 'adb' and 'scrcpy'.
      You may need to install them using Homebrew:
        brew install android-platform-tools scrcpy
    EOS
  end
end
