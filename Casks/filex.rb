cask "filex" do
  version "0.3.2"
  sha256 "a677d03185c207c17617cdf0164641f40ea6991193e852d272081bf130689a95"

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
