cask "zenshelf" do
  version "0.1"
  sha256 "4ce6dd5392f6221bb8556f6ff8310acce07a7e4c6f47bc0de5a0fe1b2d4d0028"

  url "https://github.com/aman-senpai/Zenshelf/releases/download/v#{version}/Zenshelf-v#{version}-macos-universal.zip"
  name "ZenShelf"
  desc "Menu bar companion for Zen Browser"
  homepage "https://github.com/aman-senpai/Zenshelf"

  depends_on macos: ">= 26.0"

  app "Zenshelf.app"

  zap trash: [
    "~/Library/Preferences/com.senpai.Zenshelf.plist",
    "~/Library/Application Support/Zenshelf",
  ]
end
