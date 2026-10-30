cask "pullbull" do
  version "1.6.0"
  sha256 "73acf284d0022d3a8d487768df46a2e27e4b719143e8bf0df2bb1c989da7742e"

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
