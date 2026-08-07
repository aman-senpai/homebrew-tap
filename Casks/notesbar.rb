cask "notesbar" do
  version "0.6.1"
  sha256 "f1dc90b56b3e19809f71ad07573d91ae277fc6676bbbe95f0772d0a456c99b0a"

  url "https://github.com/aman-senpai/NotesBar/releases/download/v#{version}/v#{version}.zip"
  name "NotesBar"
  desc "Unified macOS utility for Obsidian and Apple Notes — search, preview, and floating windows"
  homepage "https://github.com/aman-senpai/NotesBar"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NotesBar.app"

  zap trash: [
    "~/Library/Application Support/com.senpai.NotesBar",
    "~/Library/Caches/com.senpai.NotesBar",
    "~/Library/Preferences/com.senpai.NotesBar.plist",
    "~/Library/HTTPStorages/com.senpai.NotesBar",
    "~/Library/Saved Application State/com.senpai.NotesBar.savedState",
  ]
end
