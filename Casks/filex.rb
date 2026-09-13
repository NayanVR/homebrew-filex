cask "filex" do
  version "0.2.0"
  sha256 "88434c286f9084f78eb2d0988d1c5be611a6e57fff900683dc20e3713b28746f"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
