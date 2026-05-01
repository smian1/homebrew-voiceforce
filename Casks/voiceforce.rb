cask "voiceforce" do
  version "0.22"
  sha256 "292d2ec5782446912e84319eb0935541ba1a374e733416134046c58d0f7435aa"

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
