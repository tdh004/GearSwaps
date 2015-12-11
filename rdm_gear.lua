functions user_setup ()

sets.precast['Chainspell'] = {body="Duelist's Tabard +2}
sets.precast['Convert'] = {main="Murgleis"}
sets.precast['Composure'] =
sets.precast['Saboteur'] = {hands="Estoqueur's Gantherots +2"}
sets.precast['Spontaneity'] =
sets.precast['Styme'] =

sets.precast.FC = {
  legs="Blood cuisses",neck="Orunmila's Torque",ring1="Prolix Ring",earring2="Loquacious Earring"
}
sets.midcast.MaxHaste = {
}
sets.midcast.MagicAcc = {
}
sets.midcast.DarkMagic = {
  body="Nashira Manteel",
  hands="Blood Finger gauntlets",
  back="Merciful Cape",
  waist="Casso sash",
  neck="Deceiver's Torque",
  ear1="Dark earring"
}
sets.midcast.ElementalMagic = {
  neck="Aesir torque",
  back="Merciful cape"
}
sets.midcast.EnfeeblingMagic = {
  hands="Estoqueur's Gantherots +2",
  neck="Enfeebling Torque"
}
sets.midcast.EnhancingMagic = {
  back="Merciful cape"
}
sets.midcast.HealingMagic = {}
sets.midcast['Stoneskin'] = set_combine(sets.midcast.EnhancingMagic, {
    hands="Stone Mufflers",
    legs="Haven Hose",
    neck="Stone Gorget",
    waist="Siegel Sash"
  }
)
sets.midcast['Refresh'] = {
  legs="Estoqueur's Fuseau +2"
}
sets.midcast['Phalanx'] = set_combine(sets.midcast.EnhancingMagic, {
    }
)
sets.midcast['Stun'] = set_combine(sets.midcast.MaxHaste, {
  }
)

end
