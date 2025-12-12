cask "androlaunch" do
  # Stanza Order: version, sha256 (near the top for easy updating)
  version "0.3.3"
  sha256 "65f7cf17aefc61282d517e7efbe26e9fb139b7e3018bee4baf458fc9e11779a4"

  # Stanza Order: url, name, desc, homepage
  # URL uses string interpolation with version for easier updates
  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v#{version}/v#{version}.zip"
  name "AndroLaunch"
  desc "macOS menu bar application for managing Android devices."
  homepage "https://github.com/aman-senpai/AndroLaunch"

  # Stanza Order: livecheck (added for completeness)
  livecheck do
    # This strategy looks at GitHub releases for new tags
    url :homepage
    strategy :github_latest
    # The default regex should work for versions like v0.3.3
  end
  
  # Stanza Order: Artifacts (e.g., app)
  # Installs the .app bundle into /Applications
  app "AndroLaunch.app"

  # Stanza Order: caveats (near the end)
  # Uses the preferred `depends_on_formula` syntax for required tools
  caveats do
    <<~EOS
      AndroLaunch relies on 'adb' and 'scrcpy'.
      You may need to install them using Homebrew:
        brew install android-platform-tools scrcpy
    EOS
  end
  
  # Optional: A `depends_on` stanza can be used for Homebrew dependencies,
  # but since `adb` and `scrcpy` are only used at runtime and not strictly
  # required for the Cask to install, the `caveats` approach is often preferred.
  # If we wanted to make it a hard dependency:
  # depends_on formula: ["android-platform-tools", "scrcpy"]
end
