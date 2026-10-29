cask "pullbull" do
  version "1.2.0"
  sha256 "3dbca0643bd05eae991bb13b609f4a6356c5d7c44e0d426d45007364e42851fb"

  url "https://github.com/rustycamper/pullbull/releases/download/v#{version}/PullBull-#{version}.zip"
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
