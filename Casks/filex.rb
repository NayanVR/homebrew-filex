cask "filex" do
  version "0.1.1"
  sha256 "ca4b9f3a82b5a04b011d973718776586ed55b812e99c846dc8381bb0267204d4"

  url "https://github.com/NayanVR/Filex/releases/download/v#{version}/filex-#{version}-macos.tar.gz"
  name "Filex"
  desc "Fast cross-platform file explorer"
  homepage "https://github.com/NayanVR/Filex"

  app "Filex.app"
end
