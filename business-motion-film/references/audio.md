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

What the reference launch films do (audio analysis of 14 motion-first films): the music carries the sound design, with punchy rhythmic beds and cuts on beats. Effects are whooshes, pitched sweeps, sub hits on hard cuts, and crisp UI/product clicks. That density suits punchy tech tracks. **Copying it onto a calm, chill score was rejected** as "too loud… not clean… annoying throughout".

Rules from three rounds of client feedback on a chill home-services film:
1. **Few effects, only on the biggest moments.** About 12 in 30s worked better than 37: a soft whoosh on the 4–5 major scene changes, a pop per important reveal (e.g. photo pins), clicks only on real cursor clicks, one chime on confirmation, and one light low hit under the logo. No effects on every wipe, label, highlight or tick.
2. **Clean library sounds only.** AI-generated effects were rejected ("not professional… jarring"), and so were synthesized sine sweeps and ticks ("annoying"). Use a standard library (e.g. HyperFrames' bundled SFX), with a gentle high-pass (~120–250 Hz), a low-pass (~9–10 kHz) and click-free fades.
3. **Set levels in each effect's own frequency band, not by overall loudness.** Full-band loudness barely moves when an effect plays, because music dominates the total energy. Meanwhile clicks, ticks and chimes can jump 12–17 dB in the 2–8 kHz range where the ear is most sensitive, which is what made them annoying. Target about **+4 dB lift within the effect's own band** over the music-only mix. Solve gains offline: render a music-only version, add each effect at candidate gains, and band-pass around the effect's spectral centre.
4. Effects **at or below the music were inaudible** ("I can't even hear anything"). The window between inaudible and annoying is narrow, so measure and don't guess.
5. **Always deliver a music-only version** as a fallback alongside the mix.
6. If the music resolves on the logo, don't add a separate musical sting (key clashes). Don't cut the music out before the logo on calm pieces; it read as a glitch risk.

## Mix & master

- Mix and render as part of the composition (per-track volume, automation for dips under dense reading moments).
- **Loudness:** reference launch films master around −14 LUFS (some at −7 to −10). For a calm/chill piece, −16 LUFS worked: −18 felt too quiet, and −14 with dense effects felt too loud. True peak ≤ −1 dBFS with a limiter. Copy the video stream untouched; AAC 256k.
- Measure with `scripts/loudness.sh`. State honestly whether anyone actually listened, since measurements can't judge taste.
