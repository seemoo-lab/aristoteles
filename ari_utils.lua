---
-- This file contains utility functions used across our dissector.
-- @author Tobias Kröll
--

--- Performs a simple table type check.
-- @param tab any
-- @return boolean
function istable(tab)
    return type(tab) == "table"
end

--- Simple contains check, that tries to find a value in an indexed array table.
-- @param tab table
-- @param value any
-- @return boolean
function table.Contains(tab, value)
    for i = 1, #tab do
        if tab[i] == value then
            return true
        end
    end

    return false
end

---
-- A simple merge function that merges the second table into the first table.
-- @note This will overwrite values from the first table if necessary.
-- @param first table
-- @param second table
function table.Merge(first, second)
    for k, v in pairs(second) do
        first[k] = v
    end
end

---
-- Get the value from a table with a path that is given as a table of indexes.
-- The method will try to traverse the dataTable and return the value or
-- it will return nil, if a key (even a subpath) is not defined.
--
-- Source: https://github.com/TTT-2/TTT2/blob/92dd4deeace2ea027b75fe973e056de717710b87/lua/ttt2/extensions/table.lua
--
-- @param table dataTable the table to traverse and search the path in.
-- @param any path the table with keys that will be used to traverse the tree (in order).
-- @return any the value at the given path or nil if it does not exist
function table.GetWithPath(dataTable, path)
    assert(path, "table.GetWithPath(..) missing path parameter.")

    -- Convert single key to table
    if not istable(path) then
        path = { path }
    end

    local currentDataTable = dataTable

    for i = 1, #path do
        if currentDataTable == nil then return end

        currentDataTable = currentDataTable[path[i]]
    end

    return currentDataTable
end

---
-- Set the value on a table with a path that is given as a table of indexes.
-- This method will traverse the given dataTable and create tables along the path if
-- necessary. It will then set the value in the traversed table.
--
-- Source: https://github.com/TTT-2/TTT2/blob/92dd4deeace2ea027b75fe973e056de717710b87/lua/ttt2/extensions/table.lua
--
-- @param table dataTable the table to traverse and set the value in.
-- @param any path the table with keys that will be used to traverse the tree (in order).
-- @param any value
function table.SetWithPath(dataTable, path, value)
    assert(path, "table.SetWithPath(..) missing path parameter.")

    -- Convert single key to table
    if not istable(path) then
        path = { path }
    end

    local currentDataTable = dataTable or {}

    -- Create new table entries along the path if they do not exist
    -- This will be done until the second last table is reached.
    for i = 1, (#path - 1) do
        currentDataTable[path[i]] = currentDataTable[path[i]] or {}
        currentDataTable = currentDataTable[path[i]]
    end

    -- Set the value on the table (the last table on the path)
    currentDataTable[path[#path]] = value
end
