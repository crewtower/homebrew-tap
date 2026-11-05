cask "crewtower" do
  version "1.0.39"
  sha256 "0679c6dff50fec960f685cd8b19800940e5a520a5d7b7ba87d048bc6e9e0dd75"

  url "https://dl.crewtower.app/CrewTower-#{version}.dmg"
  name "CrewTower"
  desc "Notch panel to monitor and approve AI coding agents"
  homepage "https://crewtower.app/"

  livecheck do
    url "https://dl.crewtower.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CrewTower.app"

  uninstall quit: "app.crewtower.CrewTower"

  zap trash: [
    "~/Library/Application Support/CrewTower",
    "~/Library/Caches/app.crewtower.CrewTower",
    "~/Library/HTTPStorages/app.crewtower.CrewTower",
    "~/Library/Preferences/app.crewtower.CrewTower.plist",
  ]
end
