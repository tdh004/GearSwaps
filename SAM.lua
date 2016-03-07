-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    state.Buff.Hasso = buffactive.Hasso or false
    state.Buff.Seigan = buffactive.Seigan or false
    state.Buff.Sekkanoki = buffactive.Sekkanoki or false
    state.Buff.Sengikori = buffactive.Sengikori or false
    state.Buff['Meikyo Shisui'] = buffactive['Meikyo Shisui'] or false
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.
function user_setup()
    state.OffenseMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'PDT', 'Reraise')
    state.WeaponskillMode:options('Normal', 'Acc', 'Mod')
    state.PhysicalDefenseMode:options('PDT', 'Reraise')

    update_combat_form()
    
    -- Additional local binds
    send_command('bind ^` input /ja "Hasso" <me>')
    send_command('bind !` input /ja "Seigan" <me>')

    select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind ^`')
    send_command('unbind !-')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
    
    -- Precast Sets
    -- Precast sets to enhance JAs
    sets.precast.JA['Meditate'] = {head="Wakido kabuto +1",hands="Sakonji kote"}
    sets.precast.JA['Warding Circle'] = {head="Wakido kabuto +1"}
    sets.precast.JA['Blade Bash'] = {hands="Sakonji Kote"}
	sets.precast.JA['Hasso'] = {hands="Wakido kote",legs="Kasuga haidate +1"}
	sets.precast.JA['Seigan'] = {head="Kasuga Kabuto"}
	sets.precast.JA['Sekkanoki'] = {hands="Unkai Kote+2"}
	sets.precast.JA['Third eye'] = {legs="Sao. Haidate +2"}
	sets.precast.JA['Shikikoyo'] = {legs="Sao. Haidate +2"}
	sets.precast.JA['Sengikori'] = {feet="Unkai Sune-Ate +2"}
	sets.precast.JA['Hamanoha'] = {}
	sets.precast.JA['Hagakure'] = {}
	sets.precast.JA['Konzen-ittai'] = {}
	
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {ammo="Thew Bomblet",
        head="Wakido kabuto +1",ear1="Brutal Earring",ear2="Moonshade Earring",
        body="Phorcys Korazin",hands="Boor bracelets",ring1="Pyrosoul Ring",ring2="Ifrit Ring +1",
        back="Atheling Mantle",waist="Windbuffet Belt",legs="Kasuga haidate +1",feet="Gigantes boots +1"}
    sets.precast.WS.Acc = set_combine(sets.precast.WS, {back="Letalis Mantle",hands="Phorcys mitts",feet="Unkai sune-ate +2"})

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Tachi: Fudo'] = {
		ammo="Thew bomblet",head="Wakido kabuto +1",neck="Light Gorget",ear1="Brutal earring",ear2="Moonshade earring",
		body="Phorcys Korazin",hands="Phorcys mitts",ring1="Pyrosoul Ring",ring2="Ifrit ring +1",
		back="Atheling mantle",waist="Light Belt",legs="Kasuga haidate +1",feet="Thereoid Greaves"
	}
    sets.precast.WS['Tachi: Fudo'].Acc = set_combine(sets.precast.WS['Tachi: Fudo'], {
		neck="Light Gorget",hands="Phorcys mitts",back="Letalis Mantle",waist="Light Belt",feet="Thereoid greaves"
	})
    sets.precast.WS['Tachi: Fudo'].Mod = set_combine(sets.precast.WS['Tachi: Fudo'], {waist="Light Belt"})
	
	sets.precast.WS['Tachi: Kaiten'] = {
		ammo="Thew bomblet",head="Wakido kabuto +1",neck="Light Gorget",ear1="Bladeborn earring",ear2="Steelflash earring",
		body="Phorcys Korazin",hands="Boor bracelets",ring1="Pyrosoul Ring",ring2="Ifrit ring +1",
		back="Buquwik cape",waist="Light Belt",legs="Kasuga haidate +1",feet="Thereoid Greaves"}
	sets.precast.WS['Tachi: Kaiten'].Acc = set_combine(sets.precast.WS['Tachi: Kaiten'], {
		hands="Phorcys mitts",back="Letalis mantle"
	})
	sets.precast.WS['Tachi: Kaiten'].Mod = sets.precast.WS['Tachi: Kaiten'].Acc

    sets.precast.WS['Tachi: Shoha'] = set_combine(sets.precast.WS, {neck="Thunder Gorget"})
    sets.precast.WS['Tachi: Shoha'].Acc = set_combine(sets.precast.WS.Acc, {neck="Thunder Gorget"})
    sets.precast.WS['Tachi: Shoha'].Mod = set_combine(sets.precast.WS['Tachi: Shoha'], {waist="Thunder Belt"})

    sets.precast.WS['Tachi: Rana'] = set_combine(sets.precast.WS, {neck="Snow Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",})
    sets.precast.WS['Tachi: Rana'].Acc = set_combine(sets.precast.WS.Acc, {neck="Snow Gorget",ear1="Bladeborn Earring",ear2="Steelflash Earring",})
    sets.precast.WS['Tachi: Rana'].Mod = set_combine(sets.precast.WS['Tachi: Rana'], {waist="Snow Belt"})

    sets.precast.WS['Tachi: Kasha'] = set_combine(sets.precast.WS, {neck="Light Gorget",waist="Light Belt"})

    sets.precast.WS['Tachi: Gekko'] = set_combine(sets.precast.WS, {neck="Snow Gorget",waist="Snow Belt"})

    sets.precast.WS['Tachi: Yukikaze'] = set_combine(sets.precast.WS, {neck="Snow Gorget",waist="Snow Belt"})

    sets.precast.WS['Tachi: Ageha'] = set_combine(sets.precast.WS, {neck="Soil Gorget",waist="Soil Belt"})

    sets.precast.WS['Tachi: Jinpu'] = set_combine(sets.precast.WS, {neck="Soil Gorget",waist="Soil Belt"})


    -- Midcast Sets
    sets.precast.FastRecast = {
		body="Neuvo coselete",neck="Orunmila's torque",ear1="Loquac. earring",ear2="Etiolation earring",ring1="Prolix ring"
	}
	sets.midcast.Trust = {
		head="Wakido kabuto +1",body="Kasuga domaru +1",hands="Sakonji kote",legs="Kasuga haidate +1",feet="Thereoid greaves"
	}
    
    -- Sets to return to when not performing an action.
    
    -- Resting sets
    sets.resting = {neck="Wiglen Gorget",ring1="Sheltered Ring",ring2="Paguroidea Ring"}
    

    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
    sets.idle.Town = {
        head="Fancy spectacles",body="Usukane haramaki +1",hands="Tenryu tekko +1",legs="Kasuga haidate +1",feet="Danzo Sune-ate",
		ring1="Sheltered Ring",neck="Wiglen gorget"}
    
    sets.idle.Field = {
        head="Twilight Helm",body="Twilight mail",hands="Sakonji kote",legs="Karieyh Brayettes +1",feet="Danzo Sune-ate",		
		neck="Wiglen gorget",back="Metallon mantle",ring1="Jelly Ring",ring2="Sheltered Ring",ammo="Brigantia pebble"}

    sets.idle.Weak = sets.idle.Field
    
    -- Defense sets
    sets.defense.PDT = {ammo="Iron Gobbet",
        head="Yaoyotl Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Otronif Harness +1",hands="Otronif Gloves",ring1="Defending Ring",ring2=gear.DarkRing.physical,
        back="Shadow Mantle",waist="Flume Belt",legs="Karieyh Brayettes +1",feet="Otronif Boots +1"}

    sets.defense.Reraise = {
        head="Twilight Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Twilight Mail",hands="Buremte Gloves",ring1="Defending Ring",ring2="Paguroidea Ring",
        back="Shadow Mantle",waist="Flume Belt",legs="Karieyh Brayettes +1",feet="Otronif Boots +1"}

    sets.defense.MDT = {ammo="Demonry Stone",
        head="Yaoyotl Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Otronif Harness +1",hands="Otronif Gloves",ring1="Defending Ring",ring2="Shadow Ring",
        back="Engulfer Cape",waist="Flume Belt",legs="Karieyh Brayettes +1",feet="Otronif Boots +1"}

    sets.Kiting = {feet="Danzo Sune-ate"}

    sets.Reraise = {head="Twilight Helm",body="Twilight Mail"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
    
    -- Normal melee group
    -- Delay 450 GK, 25 Save TP => 65 Store TP for a 5-hit (25 Store TP in gear)
    sets.engaged = {ammo="Hagneia Stone",head="Wakido kabuto +1",neck="Ganesha's mala",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Kasuga domaru +1",hands="Sakonji kote",ring1="Tyrant's ring",ring2="Rajas Ring",
		back="Letalis mantle",waist="Dynamic Belt +1",legs="Kasuga haidate +1",feet="Usukane sune-ate +1"}
    sets.engaged.Acc = {ammo="Hagneia Stone",head="Wakido kabuto +1",neck="Lissome necklace",ear1="Bladeborn Earring",ear2="Steelflash Earring",
		body="Kasuga domaru +1",hands="Sasuke tekko +1",ring1="Tyrant's ring",ring2="Rajas Ring",
		back="Letalis mantle",waist="Dynamic Belt +1",legs="Kasuga haidate +1",feet="Usukane sune-ate +1"}
    sets.engaged.PDT = {ammo="Thew Bomblet",
        head="Yaoyotl Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Otronif Harness +1",hands="Otronif Gloves",ring1="Defending Ring",ring2="K'ayres Ring",
        back="Iximulew Cape",waist="Goading Belt",legs="Unkai Haidate +2",feet="Otronif Boots +1"}
    sets.engaged.Acc.PDT = {ammo="Honed Tathlum",
        head="Yaoyotl Helm",neck="Twilight Torque",ear1="Bladeborn Earring",ear2="Steelflash Earring",
        body="Otronif Harness +1",hands="Otronif Gloves",ring1="Defending Ring",ring2="K'ayres Ring",
        back="Letalis Mantle",waist="Goading Belt",legs="Unkai Haidate +2",feet="Otronif Boots +1"}
    sets.engaged.Reraise = set_combine(sets.engaged, {
        head="Twilight Helm",body="Twilight Mail"
	})
    sets.engaged.Acc.Reraise = set_combine(sets.engaged.Acc, {
		head="Twilight Helm",body="Twilight Mail"
	})
        
    -- Melee sets for in Adoulin, which has an extra 10 Save TP for weaponskills.
    -- Delay 450 GK, 35 Save TP => 89 Store TP for a 4-hit (49 Store TP in gear), 2 Store TP for a 5-hit
    sets.engaged.Adoulin = sets.engaged
    sets.engaged.Adoulin.Acc = sets.engaged.Acc
    sets.engaged.Adoulin.PDT = {}
    sets.engaged.Adoulin.Acc.PDT = {}
    sets.engaged.Adoulin.Reraise = sets.engaged.Reraise
    sets.engaged.Adoulin.Acc.Reraise = sets.engaged.Acc.Reraise


    sets.buff.Sekkanoki = {hands="Unkai Kote +2"}
    sets.buff.Sengikori = {feet="Unkai Sune-ate +2"}
    -- sets.buff['Meikyo Shisui'] = {feet="Sakonji Sune-ate"}
end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic target handling to be done.
function job_pretarget(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        -- Change any GK weaponskills to polearm weaponskill if we're using a polearm.
        if player.equipment.main=='Quint Spear' or player.equipment.main=='Quint Spear' then
            if spell.english:startswith("Tachi:") then
                send_command('@input /ws "Penta Thrust" '..spell.target.raw)
                eventArgs.cancel = true
            end
        end
    end
end

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type:lower() == 'weaponskill' then
        if state.Buff.Sekkanoki then
            equip(sets.buff.Sekkanoki)
        end
        if state.Buff.Sengikori then
            equip(sets.buff.Sengikori)
        end
        if state.Buff['Meikyo Shisui'] then
            equip(sets.buff['Meikyo Shisui'])
        end
    end
end


-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    -- Effectively lock these items in place.
    if state.HybridMode.value == 'Reraise' or
        (state.DefenseMode.value == 'Physical' and state.PhysicalDefenseMode.value == 'Reraise') then
        equip(sets.Reraise)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    update_combat_form()
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function update_combat_form()
    if areas.Adoulin:contains(world.area) and buffactive.ionis then
        state.CombatForm:set('Adoulin')
    else
        state.CombatForm:reset()
    end
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    -- Default macro set/book
    if player.sub_job == 'WAR' then
        set_macro_page(1, 7)
    elseif player.sub_job == 'DNC' then
        set_macro_page(2, 7)
    elseif player.sub_job == 'THF' then
        set_macro_page(3, 7)
    elseif player.sub_job == 'NIN' then
        set_macro_page(4, 7)
    else
        set_macro_page(1, 7)
    end
end