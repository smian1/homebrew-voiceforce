cask "voiceforce" do
  version "0.21"
  sha256 "c75f15dc0b3eb24ade3c3faf085e39c0563f3c08b947b16e4c37a429ca0f7bce"

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
