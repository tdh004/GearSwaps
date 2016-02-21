function user_setup()

	sets.precast.JA['Arcane Circle']	= {feet="Ignominy Sollerets"}
	sets.precast.JA['Blood Weapon']		= {body="Abs. Cuirass +2"}
	sets.precast.JA['Dark Seal']		= {head="Fallen's Burgeonet"}
	sets.precast.JA['Diabolic Eye']		= {hands="Fall. Fin. Gaunt."}
	sets.precast.JA['Nether Void']		= {legs="Heathen's Flanchard"}
	sets.precast.JA['Souleater']		= {head="Ignominy burgeonet +1"}
	sets.precast.JA['Weapon Bash']		= {hands="Chaos Gauntlets +1"}

	
	-- sets.precast.JA['Last Resort']
	-- sets.precast.JA['Consume Mana']
	-- sets.precast.JA['Arcane Crest']
	-- sets.precast.JA['Scarlet Delirium']
	-- sets.precast.JA['Soul Enslavement']
	
	
	sets.precast.FC = {
		ammo="Impatiens",head="Fallen's burgeonet",body="Nuevo coselete",legs="Enif Cosciales",neck="Orunmila's Torque",ring1="Prolix Ring",ear2="Loquac. Earring"
	}
	sets.midcast.MagicAcc = {
		ammo="Sturm's report",body="Corselet",hands="Redan gloves",legs="Eschite cuisses",feet="Heathen's sollerets",ring1="Omega ring",ring2="Balrahn's ring"
	}
	sets.midcast.MaxHaste = {
		head="Quauhpilli Helm",hands="Heathen's gauntlets +1",legs="Ares' Flanchard +1",feet="Mikinaak greaves",waist="Dynamic belt +1"
	}
	sets.midcast.sTP = {
		ammo="Hagneia stone",head="Phorcys salade",body="Armada hauberk",hands="Ogier's gauntlets",legs="Ker's flanchard",feet="Mikinaak greaves",neck="Lissome necklace",ear1="Bladeborn earring",ear2="Steelflash earring",waist="Goading belt"
	}
	sets.midcast.Trust = {
		head="Ignominy burgeonet +1",body="Emet harness +1",hands="Redan gloves",legs="Eschite cuisses",feet="Heathen's sollerets"
	}
	sets.midcast.DarkMagic = {
		head="Ignominy burgeonet +1",body="Demon's harness",hands="Fall. Fin. Gaunt.",legs="Eschite cuisses",neck="Deceiver's Torque",ear1="Dark Earring",back="Merciful Cape",waist="Casso sash"
	}
	sets.midcast['Elemental Magic'] = set_combine(sets.midcast.sTP, {
			neck="Aesir torque",back="Merciful cape"
		}
	)
	sets.midcast['Enfeebling Magic'] = set_combine(sets.midcast.MagicAcc, {
			neck="Enfeebling torque", waist="Casso sash"
		}
	)
	sets.midcast['Stun'] = set_combine(sets.midcast.DarkMagic, {
			head="Quauhpilli helm",body="Nuevo coselete",hands="Heathen's gauntlets +1",legs="Enif cosciales",feet="Mikinaak greaves",neck="Orunmila's torque",waist="Dynamic belt +1",ring1="Prolix ring",ring2="Balrahn's Ring",ammo="Sturm's report"
		}
	)
	sets.midcast['Endark'] =  sets.midcast.DarkMagic
	sets.midcast['Endark II'] =  sets.midcast.DarkMagic
	sets.midcast['Dread Spikes'] = {
		head="Fallen's burgeonet",body="Heathen's Cuirass",hands="Ares' gauntlets +1",legs="Ares' flanchard +1"
	}
	sets.midcast['Absorb-TP'] = set_combine(sets.midcast.DarkMagic, {
			body="Corselet",hands="Heathen's gauntlets +1",feet="Heathen's Sollerets",ring1="Omega Ring",ring2="Balrahn's Ring",ammo="Sturm's report"
		}
	)
	sets.midcast['Drain'] = set_combine(sets.midcast.DarkMagic, {
			body="Corselet",hands="Fall. Fin. Gaunt.",feet="Heathen's Sollerets",ring1="Omega Ring",ring2="Balrahn's Ring",ammo="Sturm's report"
		}
	)
	sets.midcast['Drain III'] = set_combine(sets.midcast.DarkMagic, {
			body="Corselet",hands="Fall. Fin. Gaunt.",feet="Heathen's Sollerets",ring1="Omega Ring",ring2="Balrahn's Ring",ammo="Sturm's report"
		}
	)
	sets.midcast['Aspir'] = sets.midcast['Drain']
	sets.midcast.Bio = set_combine(sets.midcast.DarkMagic, {
			head="Phorcys salade",body="Armada hauberk",legs="Phorcys dirs",feet="Heathen's Sollerets",ammo="Hagneia Stone",ring1="Tyrant's ring",ring2="Rajas Ring",ear1="Bladeborn Earring",neck="Lissome necklace"
		}
	)
	sets.midcast['Utsusemi'] = sets.midcast.MaxHaste

	sets.idle.Town = {
		head="Fancy spectacles",body="Mekira meikogai",hands="Blood finger gauntlets",legs="Blood Cuisses",feet="Phorcys schuhs",neck="Wiglen gorget",ring1="Sheltered Ring",back="Niht mantle"
	}
	sets.idle.Field = {
		head="Twilight Helm",body="Twilight mail",hands="Redan gloves",legs="Blood Cuisses",feet="Phorcys schuhs",neck="Wiglen gorget",back="Metallon Mantle",ring1="Jelly Ring",ring2="Sheltered Ring",ammo="Brigantia pebble"
	}
	sets.idle.Weak = set_combine(sets.idle.Field, {
		head="Twilight Helm",body="Twilight mail"
	})

	sets.defense.PDT = {
		head="Heathen's burgonet +1",body="Mekira meikogai",hands="Redan gloves",legs="Ogier's Breeches",feet="Phorcys schuhs",back="Metallon Mantle",neck="Wiglen gorget",ring1="Jelly ring",ring2="Dark Ring",ammo="Brigantia pebble"
	}
	sets.defense.Reraise = set_combine(sets.defense.PDT, {
			head="Twilight Helm",body="Twilight Mail"
		}
	)
	sets.defense.MDT = {
		ammo="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		back="Letalis Mantle",
		waist="Dynamic Belt",
		neck="Twilight torque",
		ring1="Tyrant's ring",
		ring2="Rajas Ring",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring"
	}

	
	sets.Kiting = {legs="Blood Cuisses"}
	sets.Reraise = {head="Twilight Helm",body="Twilight Mail"}
	
	sets.engaged = {
		ammo="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		back="Letalis Mantle",
		waist="Dynamic Belt",
		neck="",
		ring1="Tyrant's ring",
		ring2="Rajas Ring",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring"
	}
	sets.engaged.Acc = {
		ammo="Fire bomblet",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		back="Letalis Mantle",
		waist="Dynamic Belt",
		neck="Lissome necklace",
		ring1="Tyrant's ring",
		ring2="Rajas Ring",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring"
	}
	sets.engaged.Multi = {
		ammo="",
		head="",
		body="",
		hands="",
		legs="",
		feet="",
		back="Letalis Mantle",
		waist="Dynamic Belt",
		neck="",
		ring1="Tyrant's ring",
		ring2="Rajas Ring",
		ear1="Bladeborn Earring",
		ear2="Steelflash Earring"
	}
	sets.engaged.Reraise = set_combine(sets.engaged, {
			head="Twilight Helm",
			body="Twilight Mail",
		}
	)
		
		
		
	end
