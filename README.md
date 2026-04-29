# homebrew-voiceforce

Homebrew tap for [VoiceForce](https://voiceforce.studioorange.ai/) — push-to-talk dictation for macOS with a local Parakeet model.

## Install

```sh
brew install --cask smian1/voiceforce/voiceforce
```

Updates are automatic: VoiceForce has a built-in updater that pulls new
versions directly from the distribution server. If you'd rather let
Homebrew manage it, `brew upgrade --cask voiceforce` works too.

## Uninstall

```sh
brew uninstall --cask voiceforce
brew untap smian1/voiceforce   # optional
```

## Why a tap instead of the main Homebrew Cask?

Homebrew Cask has notability thresholds (stars, watchers, general-use
signals) that early-stage apps don't meet. A personal tap works today;
VoiceForce will submit to the main cask repo once the project has
more traction.
