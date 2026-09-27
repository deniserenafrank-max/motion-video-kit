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

**What the launch films actually do** (audio analysis of 14 motion-first reference films: loudness, transient detection against the music bed, cut alignment, spectrograms of studied transitions):
- The music carries most of the sound design: punchy rhythmic beds, with cuts landing on beats.
- The music **drops out for a moment right before a big moment**, then the moment hits.
- **Pitched sweeps ("zips")** on transitions: clean rising/falling tones (AgentArcade, Bolt), not just noisy whooshes.
- A **deep sub hit exactly on a hard cut** (Work Louder).
- **Crisp product/UI sounds in the 2–10 kHz band**, where the music leaves space (Work Louder's key clicks), clearly audible.
- Effects peak roughly **+5 to +10 dB above the music bed** at their moment.

**Rules that follow:**
- A whoosh on every scene change; a sub hit on the 1–2 biggest landings (headline slam, logo), with a 0.2–0.3s music dip just before the logo hit.
- Rising sweeps on reveals (layers lifting, cards rising); falling sweeps on objects landing or handing off.
- Ticks for labels, highlights and focus rings; pops for pins and badges; crisp clicks only on real cursor clicks; one chime on confirmation.
- **Level:** each effect peaks about +4 to +9 dB above the music at its moment; the logo hit is the loudest. Effects set "at or below the music" are inaudible. A client said "there are basically no sound effects, I can't hear anything".
- **Source:** a clean library (e.g. the HyperFrames bundled SFX) plus clean synthesized sweeps and ticks (`scripts/make-sweeps.sh`). AI-generated effects were rejected as "not professional… jarring".
- Keep library sounds bright (light high-pass only). Heavy low-pass makes them dull and easy to lose under the music.

## Mix & master

- Mix and render as part of the composition (per-track volume, automation for dips under dense reading moments).
- **Master to about −14 LUFS** integrated (most reference launch films sit at −14; some at −7 to −10), true peak ≤ −1 dBFS with a limiter. Our first −18 LUFS delivery felt far too quiet next to them. For a deliberately calm piece, −16 is the floor. Copy the video stream untouched; AAC 256k.
- Measure with `scripts/loudness.sh`. State honestly whether anyone actually listened, since measurements can't judge taste.
