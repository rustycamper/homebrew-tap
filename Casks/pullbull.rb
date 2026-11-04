cask "pullbull" do
  version "1.11.0"
  sha256 "76d33b8e78f30bd8d34658e4262b017ffe873c0d3ef45e7018a5894e22909966"

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
