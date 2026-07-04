cask "zenshelf" do
  version "1.1.0"
  sha256 "188e88670cd9248764f07fb7cadacef242c892be41d03e3489e05b67c2abecf8"

  url "https://github.com/aman-senpai/Zenshelf/releases/download/v#{version}/Zenshelf-v#{version}-macos-universal.zip"
  name "ZenShelf"
  desc "Menu bar companion for Zen Browser"
  homepage "https://github.com/aman-senpai/Zenshelf"

  app "Zenshelf.app"

  zap trash: [
    "~/Library/Preferences/com.senpai.Zenshelf.plist",
    "~/Library/Application Support/Zenshelf",
  ]
end
