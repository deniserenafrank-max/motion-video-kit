# Audio

Audio made otherwise strong visuals feel amateur more than anything else. These rules came from direct client rejections.

## Music

- **Match the music to the buyer's customer, not to "tech launch".** An energetic SaaS-launch score was rejected for a roofing/homeowner film. For home services, warm, chill, acoustic-leaning music fits: felt piano, clean or nylon guitar, a soft steady pulse (brushed kit, shaker), ~84–88 BPM, major key.
- **Chill still needs a pulse.** Beatless ambient or very sparse tracks feel sleepy against fast cuts and need heavy gain to be heard.
- **Structure the track to the film.** With generative music (e.g. ElevenLabs composition plans), write one section per scene group with exact durations that sum to the film length. Minimum section length is often 3s, so merge short sections. Ask for "starts immediately on the first beat, no long intro" and "clear resolved final chord at the start of the last section, then natural ring-out".
- **Check the generated track's loudness over time** (short-term per second). Reject tracks with a near-silent intro, dips under key scenes, or decay seconds before the logo. Regenerate with a different seed; some styles (e.g. tremolo electric guitar + Rhodes) repeatedly produced slow intros.
- **Avoid:** vocals/humming, lo-fi vinyl crackle, ukulele/whistling corporate stock, trailer hits, EDM drops, risers, anything "epic".
- **Deliver 2–3 options** cut to the same picture at identical integrated loudness, so the client compares music, not volume.

## Sound effects

- **AI-generated sound effects were rejected** as "not professional… jarring to the ear". Use a small library of standard, clean effects (soft whoosh, soft click, gentle pop, soft chime), e.g. the HyperFrames bundled SFX library.
- **Soften every effect:** high-pass (~140–200 Hz), low-pass (~5–8 kHz), 10ms fade-in, and a short fade-out so nothing clicks or hisses.
- **Be sparse.** Effects only on meaningful moments:
  - a soft whoosh on major scene changes only, not every wipe;
  - a gentle pop when a pin or label appears;
  - a soft click only where a cursor actually clicks;
  - one quiet chime on the confirmation.
- **Remove texture effects** (material scrapes, flyover air, card shuffles) unless they are unmistakably clean.
- **Level:** each effect's momentary loudness should land at or below the music's typical level at that moment. If an effect creates a +3–4 dB spike, lower it.
- **Logo:** if the music resolves on the logo, don't add a separate chord or sting (key clashes). For an energetic cut, a hit synced to the lockup frame plus a mix dip right before it works.

## Mix & master

- Mix and render as part of the composition (per-track volume, automation for dips under dense reading moments).
- Target −16 to −18 LUFS integrated for web/social, true peak ≤ −1 dBFS. Master with a simple gain offset and AAC 256k, copying the video stream untouched.
- Measure with `scripts/loudness.sh`. State honestly whether anyone actually listened, since measurements can't judge taste.
