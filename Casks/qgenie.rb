cask "qgenie" do
  version "0.0.2"
  sha256 "f8fce3f6a358f5a610c5bf35667bf169c7591fed29a345b9af8cedc0ba1b9a51"

  url "https://github.com/Queryus/QGenie_app/releases/download/v0.0.2/QGenie-0.0.1-arm64.dmg"
  name "QGenie"
  desc "QGenie Application"
  homepage "https://github.com/Queryus/QGenie_app"
  app "QGenie.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/QGenie.app"]
  end

  zap trash: [
    "~/Library/Application Support/QGenie",
    "~/Library/Preferences/com.Queryus.QGenie.plist",
    "~/Library/Saved Application State/com.Queryus.QGenie.savedState",
  ]
end