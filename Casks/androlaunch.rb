cask "androlaunch" do
  # CORRECTED URL to match the asset name on GitHub Releases (v0.3.3.zip)
  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v0.3.3/v0.3.3.zip"
  name "AndroLaunch"
  desc "macOS menu bar application for managing Android devices."
  homepage "https://github.com/aman-senpai/AndroLaunch"

  # CORRECTED SHA-256 verified from the GitHub release page
  sha256 "65f7cf17aefc61282d517e7efbe26e9fb139b7e3018bee4baf458fc9e11779a4"

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
