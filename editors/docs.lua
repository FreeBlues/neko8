local docs = {}

docs.content = {}
local content = docs.content

content.neko8 = {
	{name = "Memory", desc = "65k code space, 80k planned memory"},
	{name = "Sprites", desc = "512 sprites"},
	{name = "Map", desc = " 128 * 128 tile map"},
	{name = "Music SFX", desc = "4 channel, 64 definable chip blerps"},
	{name = "Display", desc = " 128 * 192, 16 colors"},
}
-- TODO: detect language
--if cart.lang == "lua" then
	content.sys = {
		{name = "pcall(f [, arg1, ··· ])",
		 rets = "--todo",
	   desc = "Origin function pcall in lua",
		 exam = "pcall(print, \"hello\")"},
		{name = "loadstring(str)",
	   rets = "--todo",
		 desc = "Origin function loadstring in lua",
		 exam = "loadstring(\"print(123456)\")"},
		{name = "setmetatable(t1,t2)",
		 rets = "--todo",
	   desc = "Origin function setmetatable in lua",
	   exam ="setmetatable(table1, table2)"},
		{name = "unpck(t)",
		 rets = "--todo",
	   desc = "Origin function table.unpack in lua",
	   exam ="unpack({1,2,3,4})"},
		{name = "memcpy(dest_addr, source_addr, len)",
		 rets = "--todo",
	   desc = "Copy memory",
	   exam ="--todo"},
		{name = "require(str)",
		 rets = "--todo",
	   desc= "Origin function require in lua",
	   exam ="require(\"socket\")"},
		{name = "tostring()",
		 rets = "--todo",
	   desc = "Origin function tostring in lua",
	   exam ="tostring(12345)\n\n returns: \"12345\""},
		{name = "tonumber()",
		 rets = "--todo",
	   desc = "Origin function tonumber in lua",
	   exam ="tonumber(\"12345\")\n\n returns: 12345"},
		{name = "smes(s)",
		 rets = "--todo",
	   desc="Show message at the bottom of screen",
	   exam ="smes(\"Hello!\")"},
		{name = "nver()",
		 rets = "--todo",
	   desc="Return neko8 version",
	   exam ="nver()"},
		{name = "mstat(b)",
		 rets = "--todo",
	   desc="Return status of mouse",
	   exam ="mstat(1)"},
	}
--[[	elseif cart.lang == "basic" then
		content.sys = {
		{name = "CLR()",
		 rets = "NIL",
	   desc = "Deletes all variables",
		 exam = "CLR()"}
		}
end-]]

content.graph = {
	{name = "printh(...)",
	 rets = "--todo",
	 desc = "Origin function in lua"},
	{name = "csize()",
	 rets = "--todo",
	 desc = "Return canvas width,height"},
	{name = "rect(x0, y0, x1, y1, c)",
	 rets = "--todo",
	 desc = "Draw rect from x0,y0 to x1,y1 with color:c"},
	{name = "rectfill(x0, y0, x1, y1, c)",
	 rets = "--todo",
	 desc = "Draw filled rect with x0,y0,x1,y1,c"},
	{name = "brect(x, y, w, h, c)",
	 rets = "--todo",
	 desc = "Draw rect pos:x,y width,height:w,h and color:c"},
	{name = "brectfill(x, y, w, h, c)",
	 rets = "--todo",
	 desc = "Draw filled rect with x,y,w,h,c"},
	{name = "color(c)",
	 rets = "--todo",
	 desc = "Set current color to c"},
	{name = "cls()",
	 rets = "--todo",
	 desc = "Clear the screen"},
	{name = "circ(ox, oy, r, c)",
	 rets = "--todo",
	 desc = "Draw circle pos:x,y with radius:r and color:c"},
	{name = "circfill(cx, cy, r, c)",
	 rets = "--todo",
	 desc = "Draw filled circle with color:c"},
	{name = "pset(x, y, c)",
	 rets = "--todo",
	 desc = "Set pixel:x,y with color:c"},
	{name = "pget(x, y, c)",
	 rets = "--todo",
	 desc = "Get color of pixel:x,y"},
	{name = "line(x1, y1, x2, y2, c)",
	 rets = "--todo",
	 desc = "Draw line from x1,y1 to x2,y2 with color:c"},
	{name = "print(s, x, y, c)",
	 rets = "--todo",
	 desc = "Print String s at x,y with color:c"},
	{name = "flip()",
	 rets = "--todo",
	 desc = "Flip screen back buffer"},
	{name = "cursor(x, y)",
	 rets = "--todo",
	 desc = "Draw cursor at x,y"},
	{name = "cget()",
	 rets = "--todo",
	 desc = "Return position x,y of current cursor"},
	{name = "scroll(pixels)",
	 rets = "--todo",
	 desc = "Scroll screen with pixels pixels"},
	{name = "spr(n, x, y, w, h, fx, fy)",
	 rets = "--todo",
   desc = "Draw sprite at x,y with sprites No.:n"},
	{name = "sspr(sx,sy,sw,sh,dx,dy,dw,dh,fx,fy)",
	 rets = "--todo",
   desc = "Draw texture from spritesheet"},
	{name = "sget(x, y)",
	 rets = "--todo",
	 desc = "Get spritesheet pixel color"},
	{name = "sset(x, y, c)",
	 rets = "--todo",
	 desc = "Set spritesheet pixel color"},
	{name = "pal(c0,c1,p)",
	 rets = "--todo",
	 desc = "Switch color c0 to c1"},
	{name = "palt(c, t)",
	 rets = "--todo",
	 desc = "Set transparency for color to t (boolean)"},
	{name = "map(cx,cy,sx,sy,cw,ch, bitmask)",
	 rets = "--todo",
	 desc = "Draw map"},
	{name = "mget(x, y)",
	 rets = "--todo",
	 desc = "get map value at x,y"},
	{name = "mset(x, y, v)",
	 rets = "--todo",
	 desc = "set map value to v at x,y"},
	{name = "camera([x, y])",
	 rets = "--todo",
	 desc = "Set camera position"},
	{name = "clip([x, y, w, h])",
	 rets = "--todo",
	 desc = "Set screen clipping region"},
	{name = "tri(x0, y0, x1, y1, x2, y2)",
	 rets = "--todo",
	 desc = "Draw triangle"},
	{name = "trifill(x0, y0, x1, y1, x2, y2, c)",
	 rets = "--todo",
	 desc = "Draw triangle with color:c"},
	{name = "poly(...)",
	 rets = "--todo",
	 desc = "Draw polygon"},
	{name = "polyfill(...)",
	 rets = "--todo",
	 desc = "draw polygon with filled color"},
}


content.input = {
	{name = "btn(b, p)",
	 rets = "--todo",
	 desc = "Get button b state for player p"},
	{name = "key(k)",
	 rets = "--todo",
	 desc = "Detect if key:k is pressed"},
	{name = "btnp(b, p)",
	 rets = "--todo",
	 desc = "Only true when the button was not pressed the last frame;" ..
			"repeats every 4 frames after button held for 12 frames"},
}

content.math = {
	{name = "flr(n)",
	 rets = "--todo",
	 desc = "Round down of n, flr(4.9)->4"},
	{name = "ceil(n)",
	 rets = "--todo",
	 desc = "Round up of n, ceil(2.1)->3"},
	{name = "cos(n)",
	 rets = "--todo",
	 desc = "Cosine n, [0..1]"},
	{name = "sin(n)",
	 rets = "--todo",
	 desc = "Sine n, [0..1]; inverted"},
	{name = "rnd(min, max)",
	 rets = "--todo",
	 desc = "Random from min to max"},
	{name = "srand(s)",
	 rets = "--todo",
	 desc = "Set random seed"},
	{name = "max(a, b)",
	 rets = "--todo",
	 desc = "Maximum of a,b"},
	{name = "min(a, b)",
	 rets = "--todo",
	 desc = "Minimum of a,b"},
	{name = "mid(x, y, z)",
	 rets = "--todo",
	 desc = "Middle of x,y,z"},
	{name = "abs(n)",
	 rets = "--todo",
	 desc = "Absolute value of n"},
	{name = "sgn(n)",
	 rets = "--todo",
	 desc = "Return n sign: -1 or 1"},
	{name = "atan2(dx, dy)",
	 rets = "--todo",
	 desc = "Convert (dx, dy) to an angle in [0..1]"},
	{name = "band(x, y)",
	 rets = "--todo",
	 desc = "Bitwise conjunction"},
	{name = "bnot(x)",
	 rets = "--todo",
	 desc = "Bitwise negation"},
	{name = "bor(x, y)",
	 rets = "--todo",
	 desc = "Bitwise disjunction"},
	{name = "shl(y, n)",
	 rets = "--todo",
	 desc = "Shift left"},
	{name = "shr(x, n)",
	 rets = "--todo",
	 desc = "Shift left"},
	{name = "sqrt(x)",
	 rets = "--todo",
	 desc = "Return x square root"},
}


content.cmd = {
	{name = "help a", desc = "Show summary of neko commands info"},
	{name = "folder", desc = "Open neko carts folder"},
	{name = "ls a", desc = "List files at current directory"},
	{name = "run", desc = "Run a loaded cartridge"},
	{name = "new [a]", desc = "Create a new cartridge with language a"},
	{name = "mkdir a", desc = "Creat a directory with name a"},
	{name = "load a", desc = "Load cartridge a"},
	{name = "save a", desc = "Save a cartridge with name a"},
	{name = "reboot", desc = "Reboot neko"},
	{name = "shutdown", desc = "Exit neko"},
	{name = "cd a", desc = "Change directory to a"},
	{name = "rm a", desc = "Remove directory a"},
	{name = "edit", desc = "Open editor"},
	{name = "version", desc = "Show version in terminal"},
	{name = "pwd", desc = "Show current working directory"},
	{name = "install_demos", desc = "Install demos in current directory"},
}

content.table = {
	{name = "pairs(t)",
	 rets = "--todo",
	 desc = "Used in 'for k,v in pairs(t)' loops"},
	{name = "ipairs(t)",
	 rets = "--todo",
	 desc = "Used in 'for k,v in ipairs(t)' loops"},
	{name = "string()",
	 rets = "--todo",
	 desc = "----"},
	{name = "add(a, v)",
	 rets = "--todo",
	 desc = "Insert item v into table a"},
	{name = "del(a, dv)",
	 rets = "--todo",
	 desc = "Remove item dv from table a"},
	{name = "all(a)",
	 rets = "--todo",
	 desc = "Return every item of table a"},
	{name = "count(a)",
	 rets = "--todo",
	 desc = "Return length of table a "},
	{name = "foreach(a, f)",
	 rets = "--todo",
	 desc = "Iterate items in table a with function f"},
}

content.audio = {
	{name="sfx(n, channel, offset)",
	 rets = "--todo",
	 desc="Play sfx, n:-1 stop in channel, n:-2 release loop"},
	{name="music(n, fadeLen, channelMask)",
	 rets = "--todo",
	 desc="Play music; n:-1 stop"},
}

content.keys = {
	{name="esc", desc = "toggle editor"},
	{name="ctrl+s", desc="save cart"},
	{name="ctrl+r", desc="run cart"},
	{name="ctrl+ret", desc="toggle fullscreen"},
	{name="ctrl+c", desc="copy text"},
	{name="ctrl+v", desc="paste text"},
	{name="ctrl+x", desc="cut text"},
	{name="f1", desc="Open code editor"},
	{name="f2", desc="Open sprite editor"},
	{name="f3", desc="Open map editor"},
	{name="f4", desc="Open sfx editor"},
	{name="f5", desc="Open music editor"},
	{name="f6", desc="Open build-in help "},
	{name="f7", desc="New screenshot"},
	{name="f8", desc="New gif record"},
	{name="f9", desc="Save gif record"},
}

function docs.init()
	docs.forceDraw = false
	docs.icon = 13
	docs.page = 0
	docs.cate = "keys"
	docs.item = 1
	docs.name = "manual"
	docs.bg = config.editors.docs.bg
end

function docs.open()
	docs.forceDraw = true
end

function docs.close()

end

function docs._draw()
	if docs.forceDraw then
		docs.redraw()
		docs.forceDraw = false
	end
	editors.drawUI()
end

function docs.redraw()
	api.cls(docs.bg)

	neko.cart, neko.core = neko.core, neko.cart

	docs.drawCategory()
	docs.drawItem()

	neko.core, neko.cart = neko.cart, neko.core, neko.cart
	editors.drawUI()
end

-- new UI
function docs.drawCategory()
	-- draw category at col 1
	local posX,posY = 2,8
	for k,v in pairs(content) do
		local w,h = string.len(k), 8
		-- draw left side category
		api.rect(0,7,40/2+2,128-8,4)
		api.print(k, posX, posY, k == docs.cate and 12 or 13)
		posY = posY + 8
	end
	-- draw functions in selected category at col 2
	local i,j = 1,#content[docs.cate]
	for k,v in pairs(content[docs.cate]) do
		local nameY,descY = 8*(k-1)+8, 12*(k-1)+14
		local posX,posY = 40/2+4-2, 7
		api.brect(posX,posY,30+8+2,128-8-7,4)
		local sm = string.match
		local name = sm(v.name,"[%w]*[%+%d%s_]*[%a]*") or "none"
		-- when name is too long:>=9 chars, display chars of 1~9, the rest will display as "."
		name = (string.len(name) <= 9 and {name} or {string.sub(name,1,9) .. "." })[1]
		local para = sm(v.name, "[%(].*[%)]") or ":"
		if j <= 13 then
			api.print(name, posX+2, 8*i, k == docs.item and 12 or 13)
			i = i+1
		elseif j > 13 then
			local n = api.ceil(j/13)-1
			local x, y = 40/2+4+1 , config.canvas.height-8*2-1
			-- draw page number at bottom of col 2
			for i = 0, n  or 0  do
				api.spr( i == docs.page and 7 or 6, x + i * 8, y)
				api.print(i, x+2 + i * 8, y+2, i == docs.page and 12 or 7)
			end
			-- draw function name at col 2
			if docs.page == 0 and nameY <= 128-8-16 then
				--print("nameY, k:",nameY, k)
				api.print(name, posX+2, 8*i, k == docs.item and 12 or 13)
				i = i + 1
			elseif docs.page == 1 and nameY > 128-8-16 and
							nameY <= 128*2-8-8-16-16 then
				api.print(name, posX+2, 8*i, k == docs.item and 12 or 13)
				i = i + 1
			elseif docs.page == 2 and nameY > 128*2-8-8-16-16 and
							nameY <= 128*3-8-16 then
				api.print(name, posX+2, 8*i, k == docs.item and 12 or 13)
				i = i + 1
			end
		end
	end
end

function docs.drawItem()
	local x,y,w,h,c = 40/2+4+30+8+2-2, 7, 80+38+9+2, 128-8-7, 4
	api.brect(x, y, w, h, c)
	local item = content[docs.cate][docs.item] or content[docs.cate][1]
	local sm = string.match
	local name = sm(item.name, "[%a]*[%+%s%d_]*[%a]*") or "none"
	local para = sm(item.name, "[%(].*[%)]") or "none"
	local rets = item.rets or "none"
	api.print("Name:", x+2, y+2, 1)
	api.print(name, x+3, y+1+8, 12)
	api.print("Paras:", x+2, y+1+8+8, 1)
	api.print(para, x+3, y+1+8+8+8, 8)
	api.print("Rets",  x+2, y+1+8+8+8+8,1)
	api.print(rets,x+3, y+1+8+8+8+8+8, 6 )

	api.print("Desc:", x+2, y+1+8+8+8+8+8+8,1)
	-- deal with desc multi lines
	local len = string.len(item.desc)
	for i = 1, api.ceil(len/31) do
		local line = string.sub(item.desc, 1+(i-1)*31, i*31)
		api.print(line, x+3, y+41+(i-1)*8 +8+8, 6)
	end

	local posY = y+41+(api.ceil(len/31)-1)*8 + 8 +8+8
	api.print("Example:", x+2, posY, 1)
	local exam = item.exam or "--todo"
	api.print(exam, x+3, posY +8, 6)
end

function docs._update()
	lmb = mb
	lmx = mx
	lmy = my
	mx, my, mb = api.mstat(1)

	if mx ~= lmx or my ~= lmy then
		docs.redrawInfo = true
	end

	if mb then
		if lmb == false then
			--select category
			if mx >= 2 and mx <= 40/2 then
				local posY = 8
				for k,v in pairs(content) do
				  if my >= posY and my <= posY + 8 then
					  docs.cate = k
						docs.page = 0
						docs.item = 1
					  docs.forceDraw = true
						return
				  end
					posY = posY + 8
			  end
			end
			-- select item page of category
			local h = config.canvas.height
			if my >= h-16 and my <= h-8 then
				local j = api.ceil(#content[docs.cate]/13) - 1
				local posX = 40/2+4+1
				for i = 0, j do
					if mx >= posX + i*8 and mx <= posX + 8 +i*8 then
						docs.page = i
						docs.item = 1
						docs.forceDraw = true
						return
					end
				end
			end
			-- selct item
			if mx >= 40/2+4 and mx <= 40/2+4+30+8 then
				local posY = 8
				for k,v in pairs(content[docs.cate]) do
					if my >= posY and my <= posY + 8 then
						docs.item = k + docs.page*13
						docs.forceDraw = true
						return
					end
					posY = posY + 8
				end
			end
		end
	end
end

function docs.import(data)
	docs.data = data
end

function docs.export()
	return docs.data
end

return docs


