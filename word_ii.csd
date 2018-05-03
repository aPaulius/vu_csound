<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr     = 44100
kr     = 4410
ksmps  = 10
nchnls = 2

instr 1 ; additive synthesis

iamp = ampdb(p4)

asig1 oscil iamp * .56,  cpspch(p5),        1
asig2 oscil iamp * .92,  cpspch(p5 + 0.03), 1
asig3 oscil iamp * 1.19, cpspch(p5 + 0.07), 1
asig4 oscil iamp * 1.7,  cpspch(p5 - 1.0),  1
asig5 oscil iamp * 2.0,  cpspch(p5 + 1.0),  1

aadd = asig1 + asig2 + asig3 + asig4 + asig5

kenv line 1, p3, 0

out aadd * kenv

endin

</CsInstruments>
<CsScore>

f1 0 8192 10 1 ; sinusinė banga

; -- akordai -- 
;  st   dur db pitch
i1 0    4   80 6.09
i1 .    .   .  7.00
i1 .    .   .  7.04
i1 4    3   .  6.11
i1 .    .   .  7.02
i1 .    .   .  7.06
i1 7    6   .  7.00
i1 .    .   .  7.04
i1 .    .   .  7.07
i1 13   4.5 .  6.09
i1 .    .   .  7.00
i1 .    .   .  7.04
i1 17.5 1   .  6.11
i1 .    .   .  7.02
i1 .    .   .  7.06
i1 18.5 4   .  6.04
i1 .    .   .  6.07
i1 .    .   .  6.11

; -- melodija --
;  st   dur db pitch
i1 1    1.5 .  9.07
i1 2.5  .   .  9.04
i1 4    .   .  8.11
i1 5.5  0.5 .  9.00
i1 6    .   .  8.11
i1 6.5  .   .  8.09
i1 8.5  .   .  8.11
i1 9    .   .  9.00
i1 9.5  .   .  9.02
i1 10.5 .   .  8.11
i1 11   1.5 .  8.06
i1 13   .   .  8.06
i1 15   0.5 .  8.07
i1 15.5 .   .  8.06
i1 16   .   .  8.04
i1 18.5 .   .  8.02
i1 19   .   .  8.04
i1 19.5 .   .  7.11

e

</CsScore>
</CsoundSynthesizer> 