cask "voiceforce" do
  version "0.18"
  sha256 "69c3fdc1da583994787cbadb58cefe02f18a27fd1f7ded0019dc73f51f193f97"

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
