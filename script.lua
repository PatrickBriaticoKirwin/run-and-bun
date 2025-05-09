-- press A every 60 frames
local frame = 0

while true do
    frame = frame + 1

    if frame % 60 == 0 then
        joypad.set({["A"] = true})
    end

    -- Dummy HP read (we'll replace this with real address once found)
    -- local hp = memory.read_u8(0x02024284)
    -- gui.text(10, 10, "HP: " .. hp)

    emu.frameadvance()
end

