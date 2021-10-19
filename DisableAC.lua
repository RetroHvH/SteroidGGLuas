local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

local function dacoDodge()
    local enemies = EntityList.Enemies()

    for i, ent in ipairs(enemies) do
        local enemyDodge = Entity.IsDodging(ent)
        if enemyDodge then
            sleep(1)
        end
    end
end

cb_add(cb.dacoDodge, dacoDodge)
