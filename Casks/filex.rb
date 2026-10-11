cask "filex" do
  version "0.3.0"
  sha256 "a86beeadbf3c6acb34cf4c15d037bb63561fcf74dea224b79ae162d93053b237"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
