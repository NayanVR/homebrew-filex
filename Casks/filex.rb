cask "filex" do
  version "0.4.1"
  sha256 "b8bc64ca9a909e0ae5ecc4a5c5101e512c949a72179fd73cc38419804cd2c3dd"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"

  # Quit the app before an upgrade; Homebrew reopens it afterwards. A
  # running filex-indexd isn't stopped here: it notices its replaced binary
  # and restarts itself (FIL-21).
  uninstall quit: "dev.filex.app"

  # Only on --zap. An uninstall launchctl: entry also runs on every upgrade and
  # deletes the plist of the opt-in launch agent (packaging/launchd).
  zap launchctl: "dev.filex.indexd"
end
