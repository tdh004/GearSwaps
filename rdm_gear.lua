functions user_setup ()

sets.precast['Chainspell'] = {body="Duelist's Tabard +2"}
sets.precast['Convert'] = {main="Murgleis"}
sets.precast['Saboteur'] = {hands="Estoqueur's Gantherots +2"}
-- sets.precast['Composure'] =
-- sets.precast['Spontaneity'] =
-- sets.precast['Styme'] =

sets.precast.FC = {
  legs="Blood cuisses",neck="Orunmila's Torque",ring1="Prolix Ring",ear2="Loquacious Earring"
}
sets.midcast.MaxHaste = {
}
sets.midcast.INT
sets.midcast.MND
sets.midcast.MagicAcc = {
  ammo="Sturm's report",ring1="Omega ring",ring2="Bahlran's ring"
}
sets.midcast['Dark Magic'] = {
  hands="Blood Finger gauntlets",back="Merciful Cape",waist="Casso sash",neck="Deceiver's Torque",ear1="Dark earring"
}
sets.midcast['Elemental Magic'] = {
  neck="Aesir torque",
  back="Merciful cape"
}
sets.midcast['Enfeebling Magic'] = {
  hands="Estoqueur's Gantherots +2",
  neck="Enfeebling Torque"
}
sets.midcast['Enhancing Magic'] = {
  hands="Estoqueur's Gantherots +2",neck="Enhancing Torque",back="Merciful cape"
}
sets.midcast['Healing Magic'] = {}
sets.midcast['Stoneskin'] = set_combine(sets.midcast['Enhancing Magic'], {
    hands="Stone Mufflers",legs="Haven Hose",neck="Stone Gorget",waist="Siegel Sash"
  })
sets.midcast['Refresh'] = set_combine(sets.midcast.MaxHaste, {
  legs="Estoqueur's Fuseau +2"
})
sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
    })
sets.midcast['Stun'] = set_combine(sets.midcast.MaxHaste, {
    neck="Deceiver's torque",ear1="Dark earring",back="Merciful cape",ammo="Sturm's report"
  })

sets.Idle.Town
sets.Idle.Field

end
