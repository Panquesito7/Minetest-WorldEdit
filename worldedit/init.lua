assert(minetest.get_voxel_manip, string.rep(">", 300) .. "HEY YOU! YES, YOU OVER THERE. THIS VERSION OF WORLDEDIT REQUIRES MINETEST 0.4.7-DEV OR NEWER! MINETEST 0.4.7-STABLE WILL NOT WORK! YOU HAVE AN OLD VERSION." .. string.rep("<", 300))

local path = minetest.get_modpath(minetest.get_current_modname())

local loadmodule = function(path)
	local file = io.open(path)
	if not file then
		return
	end
	file:close()
	return dofile(path)
end

loadmodule(path .. "/manipulations.lua")
loadmodule(path .. "/primitives.lua")
loadmodule(path .. "/visualization.lua")
loadmodule(path .. "/serialization.lua")
loadmodule(path .. "/code.lua")
loadmodule(path .. "/compatibility.lua")

print("[MOD] WorldEdit loaded!")
