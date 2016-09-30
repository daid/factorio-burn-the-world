function hasEntryInTable(t, value)
    for index, v in ipairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

function updateAllIf(type, key, has_value, new_value)
    for k, v in pairs(data.raw[type]) do
        if hasEntryInTable(v[key], has_value) and not hasEntryInTable(v[key], new_value) then
            table.insert(v[key], new_value)
        end
    end
end

require("prototypes.fuel-updates")
