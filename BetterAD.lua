local function betterAutoDodge()
    local player = EntityList.Local()

    for i, ent in ipairs(EntityList.enemies()) do
        local PredPos = Pred.TracePos(ent, 10)
        local distX = math.abs(predPos.x - player.Pos().x)

        if distX < 150 && enemy.IsAttacking then
            Input.Cast(UserCmd.Dodge)
        end
    end
end

cb_add(cb.betterAutoDodge, betterAutoDodge)
