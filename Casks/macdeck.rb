cask "macdeck" do
  version "1.0.0"
  sha256 "84ae9de8a3cc218a6e32429e3ef864ac8137ec5e4a78d31ea71beddab40cc0a0"

  url "https://github.com/aman-senpai/MacDeck/releases/download/v#{version}/v#{version}.zip"
  name "MacDeck"
  desc "Controller-friendly macOS game launcher"
  homepage "https://github.com/aman-senpai/MacDeck"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "MacDeck.app"

  zap trash: [
    "~/Library/Application Support/MacDeck",
    "~/Library/Preferences/com.senpai.MacDeck.plist",
    "~/Library/Caches/com.senpai.MacDeck",
  ]
end
