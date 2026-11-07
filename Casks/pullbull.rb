cask "pullbull" do
  version "1.13.2"
  sha256 "cb8a5f2aff967373aa781729b8c3adf4b88a0bebe686110e3d00baea1a0af647"

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
