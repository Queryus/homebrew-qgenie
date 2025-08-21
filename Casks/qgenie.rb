cask "qgenie" do
  version "dev1.0.4"
  sha256 "d29644d08ca61ceea68a33965799c7044f3a7554965a56a883b31992a880d692"

  url "https://github.com/Queryus/QGenie_app/releases/download/dev1.0.4/QGenie-0.0.2.dmg"
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