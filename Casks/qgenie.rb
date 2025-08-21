cask "qgenie" do
  version "dev1.0.2"
  sha256 "772633fcade1a07defcfdf39283a1abdc0d699b451f3392ce0a00ccaf70b92f6"

  url "https://github.com/Queryus/QGenie_app/releases/download/dev1.0.2/QGenie-0.0.2.dmg"
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