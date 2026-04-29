cask "voiceforce" do
  version "0.20"
  sha256 "23f0460b48d6cf7825c0db5fcb62bf7c0deded992055bd7b3668f22c6e16ea4f"

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
