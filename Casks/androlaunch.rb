cask "androlaunch" do
  version "0.3.6"
  sha256 "8973ea31187413fcaf5e65796e730b39335ed790e3aa22477bd949f21597754b"

  url "https://github.com/aman-senpai/AndroLaunch/releases/download/v#{version}/v#{version}.zip"
  name "AndroLaunch"
  desc "Cross-platform Android device management — screen mirroring, app management, file explorer, and emulator control"
  homepage "https://github.com/aman-senpai/AndroLaunch"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on formula: "android-platform-tools"
  depends_on formula: "scrcpy"

  app "AndroLaunch.app"

  zap trash: [
    "~/Library/Application Support/com.senpai.AndroLaunch",
    "~/Library/Caches/com.senpai.AndroLaunch",
    "~/Library/Preferences/com.senpai.AndroLaunch.plist",
    "~/Library/HTTPStorages/com.senpai.AndroLaunch",
    "~/Library/Saved Application State/com.senpai.AndroLaunch.savedState",
  ]
end
