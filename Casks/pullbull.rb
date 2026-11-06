cask "pullbull" do
  version "1.12.1"
  sha256 "5db40adb0faf9969d315604aa6fa92a66f530ee61fbdb9465280578c82862fa0"

  url "https://github.com/rustycamper/pullbull/releases/download/v#{version}/PullBull-#{version}-brew.zip"
  name "PullBull"
  desc "GitHub pull requests, issues and Projects boards in the menu bar"
  homepage "https://github.com/rustycamper/pullbull"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PullBull.app"

  uninstall quit: "io.github.rustycamper.pullbull"

  zap trash: [
    "~/Library/Application Support/io.github.rustycamper.pullbull",
    "~/Library/Caches/io.github.rustycamper.pullbull",
    "~/Library/HTTPStorages/io.github.rustycamper.pullbull",
    "~/Library/HTTPStorages/io.github.rustycamper.pullbull.binarycookies",
    "~/Library/Preferences/io.github.rustycamper.pullbull.plist",
  ]
end
