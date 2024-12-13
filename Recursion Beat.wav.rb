"""
Recursion Freestyle Beat

Author: Jimmy Song
Course: CSCI 3725
Assignment: M8 - Hakuna Fermata
Date: December 12, 2024

Original beat created for background of Recursion Freestyle
"""

use_bpm 70

# Introduction tune, without heavy drums or snares
use_synth :piano
play :gs5
sleep 0.2
play :fs5
sleep 0.4
play :gs5
sleep 0.2
play :fs5
sleep 0.4
play :gs5
sleep 0.2
play :fs5
sleep 0.4
play :gs5
sleep 0.2
play :fs5
sleep 0.4
play :gs5
sleep 0.2
play :fs5
sleep 0.2
play :e5
sleep 0.2
play :ds5
sleep 0.2
use_synth :dsaw
play :cs5, release: 1.1
sleep 1
use_synth :piano
play :gs5
sleep 0.25
play :e5
sleep 0.25
play :fs5
sleep 0.5
use_synth :dsaw
play :b5, release: 1, amp: 0.5
sleep 0.8
play :cs6, release: 1, amp: 0.5
sleep 1.2
use_synth :dsaw
play :cs5, release: 1.3
sleep 1
use_synth :piano
play :gs5
sleep 0.25
play :e5
sleep 0.25
play :fs5
sleep 0.5
use_synth :tech_saws
play :gs5, release: 1, amp: 2
sleep 0.8
play :fs5, release: 1, amp: 2
sleep 1.2


# Heavy repeating drum beat in thread
in_thread do
  loop do
    sample :drum_bass_hard, amp: 6
    sleep 1
    sample :drum_snare_hard, amp: 2
    sleep 0.75
    sample :drum_bass_hard, amp: 6
    sleep 0.75
    sample :drum_bass_hard, amp: 6
    sleep 0.5
    sample :drum_snare_hard, amp: 2
    sleep 1
    sample :drum_bass_hard, amp: 6
    sleep 1
    sample :drum_snare_hard, amp: 2
    sleep 0.75
    sample :drum_bass_hard, amp: 6
    sleep 0.75
    sample :drum_bass_hard, amp: 6
    sleep 0.5
    sample :drum_snare_soft, amp: 6
    sleep 0.25
    sample :drum_bass_hard, amp: 6
    sleep 0.75
  end
end

# Accompanying snare tune in thread
in_thread do
  loop do
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.167
    sample :drum_snare_soft, amp: 2
    sleep 0.167
    sample :drum_snare_soft, amp: 2
    sleep 0.167
  end
end

# Melodic piano tune in thread
in_thread do
  loop do
    use_synth :dsaw
    play :cs5, release: 1.1
    sleep 1
    use_synth :piano
    play :gs5
    sleep 0.25
    play :e5
    sleep 0.25
    play :fs5
    sleep 0.5
    use_synth :dsaw
    play :b5, release: 1, amp: 0.5
    sleep 0.8
    play :cs6, release: 1, amp: 0.5
    sleep 1.2
    use_synth :dsaw
    play :cs5, release: 1.1
    sleep 1
    use_synth :piano
    play :gs5
    sleep 0.25
    play :e5
    sleep 0.25
    play :fs5
    sleep 0.5
    use_synth :tech_saws
    play :gs5, release: 1, amp: 2
    sleep 0.8
    play :fs5, release: 1, amp: 2
    sleep 1.2
  end
end