local function printDodge()
    local enemies = EntityList.Enemies()

    for i, ent in ipairs(enemies) do
        local Dodge = Entity.IsDodging(ent)
        if Dodge then
            print("Enemy is Dodging")
        end
    end
end

cb_add(cb.printDodge, printDodge)
