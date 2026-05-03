cask "voiceforce" do
  version "0.23"
  sha256 "7f3eb2b9e44e4b6078ab78a6f3c5fdd963cc941979c1e35048ffa699b7af5dff"

  url "https://voiceforce.studioorange.ai/VoiceForce.dmg"
  name "VoiceForce"
  desc "Push-to-talk dictation with a local Parakeet model"
  homepage "https://voiceforce.studioorange.ai/"

  livecheck do
    url "https://voiceforce.studioorange.ai/version"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "VoiceForce.app"

  zap trash: [
    "~/Library/Application Support/VoiceForce",
    "~/Library/Caches/com.smian.VoiceForce",
    "~/Library/Preferences/com.smian.VoiceForce.plist",
    "~/Library/Saved Application State/com.smian.VoiceForce.savedState",
  ]
end
