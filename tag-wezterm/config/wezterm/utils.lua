local function merge_tables(target_table, array_of_tables)
	for _, t in ipairs(array_of_tables) do
		for k, v in pairs(t) do
			target_table[k] = v
		end
	end
	return target_table
end

return {
	merge_tables = merge_tables,
}
