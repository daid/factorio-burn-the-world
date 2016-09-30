function tableRemoveValue(t, v)
    for index, value in ipairs(t) do
        if value == v then
            table.remove(t, index)
            return
        end
    end
end

function tableHasEntry(t, value)
    for index, v in ipairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

function updateAllIf(type, key, has_value, new_value)
    for k, v in pairs(data.raw[type]) do
        if tableHasEntry(v[key], has_value) and not tableHasEntry(v[key], new_value) then
            table.insert(v[key], new_value)
        end
    end
end

