--dumped by kursa
--decompiled by anonymoussigmaxxx
print('https://discord.gg/rollmopss')

local l_base64_0 = require("neverlose/base64");
local l_clipboard_0 = require("neverlose/clipboard");
local l_smoothy_0 = require("neverlose/smoothy");
local _ = require("neverlose/inspect");
local v4 = "\226\128\138";
local v5 = nil;
local l_dev_break_after_count_0 = cvar.dev_break_after_count;
do
    local l_l_dev_break_after_count_0_0 = l_dev_break_after_count_0;
    local function v8()
        -- upvalues: l_l_dev_break_after_count_0_0 (ref)
        return l_l_dev_break_after_count_0_0:int() ~= 0;
    end;
    v5 = function(v9)
        -- upvalues: v8 (ref)
        if not v8() then
            return;
        else
            print(v9);
            return;
        end;
    end;
end;
l_dev_break_after_count_0 = function(v10, v11)
    for v12 = 1, #v10 do
        if v10[v12] == v11 then
            return v12;
        end;
    end;
    return nil;
end;
local function v15(...)
    local v13 = "";
    for v14 = 1, select("#", ...) do
        v13 = v13 .. select(v14, ...);
    end;
    return v13;
end;
local function v17(v16)
    return math.floor(v16 + 0.5);
end;
local function v21(v18, v19)
    return function(...)
        -- upvalues: v19 (ref), v18 (ref)
        local v20 = table.pack(pcall(v19, ...));
        if not v20[1] then
            print_raw(string.format("\aff4040ff[\"%s\"] failed: %s", v18, v20[2]));
            return nil;
        else
            return table.unpack(v20, 2, v20.n);
        end;
    end;
end;
v5("begin_script");
local v22 = {};
local v23 = common.get_username();
v22.name = "Frost";
v22.user = v23;
v22.build = "Debug";
v5("begin_trial");
v23 = {};
local v24 = "frost trial";
local v25 = nil;
do
    local l_v24_0, l_v25_0 = v24, v25;
    local function v31()
        -- upvalues: l_v25_0 (ref), l_v24_0 (ref)
        if l_v25_0 == nil then
            return nil;
        else
            local v28 = common.get_unixtime();
            local v29 = db[l_v24_0] or {
                first_startup = v28
            };
            local v30 = v28 - v29.first_startup;
            db["frost trial"] = v29;
            if l_v25_0 < v30 then
                error("Trial expired");
            end;
            return l_v25_0 - v30;
        end;
    end;
    v23.process = function()
        -- upvalues: v31 (ref)
        return v31();
    end;
    v23.time = v31();
end;
v5("begin_aux");
v24 = nil;
v24 = {};
v25 = 0.083333336;
v24.lerp = function(v32, v33, v34)
    return v32 + v34 * (v33 - v32);
end;
do
    local l_v25_1 = v25;
    v24.to_foot = function(v36)
        -- upvalues: l_v25_1 (ref)
        return v36 * l_v25_1;
    end;
    v24.closest_ray_point = function(v37, v38, v39, v40)
        local v41 = v39 - v37;
        local v42 = v38 - v37;
        local v43 = v42.x * v42.x + v42.y * v42.y;
        local v44 = (v41.x * v42.x + v41.y * v42.y) / v43;
        if v40 then
            if v44 <= 0 then
                return v37;
            elseif v44 >= 1 then
                return v38;
            end;
        end;
        return v37 + v44 * v42;
    end;
end;
v5("begin_software");
v25 = nil;
v25 = {
    antiaim = {
        angles = {
            enabled = ui.find("Aimbot", "Anti Aim", "Angles", "Enabled"), 
            pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"), 
            yaw = {
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Base"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Avoid Backstab"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Hidden")
            }, 
            yaw_modifier = {
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset")
            }, 
            body_yaw = {
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Inverter"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding")
            }, 
            freestanding = {
                ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding", "Disable Yaw Modifiers"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding", "Body Freestanding")
            }, 
            extended_angles = {
                ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles", "Extended Pitch"), 
                ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles", "Extended Roll")
            }
        }, 
        misc = {
            fake_duck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck"), 
            slow_walk = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"), 
            leg_movement = ui.find("Aimbot", "Anti Aim", "Misc", "Leg Movement")
        }
    }, 
    ragebot = {
        main = {
            peek_assist = {
                ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"), 
                {
                    ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Style")
                }, 
                ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Auto Stop"), 
                ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Retreat Mode")
            }, 
            hide_shots = {
                ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"), 
                ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options")
            }, 
            double_tap = {
                ui.find("Aimbot", "Ragebot", "Main", "Double Tap"), 
                ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options"), 
                ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Fake Lag Limit"), 
                ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Immediate Teleport"), 
                ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Quick-Switch")
            }
        }, 
        selection = {
            min_damage = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage")
        }
    }
};
v5("begin_debug_overlay");
local v45 = nil;
v45 = {};
local v46 = ffi.typeof("        struct {\n            float x, y, z;\n        }\n    ");
local v47 = ffi.typeof("        struct {\n            uint8_t r, g, b, a;\n        }\n    ");
local v48 = utils.get_vfunc("engine.dll", "VDebugOverlay004", 1, ffi.typeof("void(__thiscall*)(void *thisptr, const $ &origin, const $ &mins, const $ &maxs, const $ &angles, int r, int g, int b, int a, float duration)", v46, v46, v46, v46));
local v49 = utils.get_vfunc("engine.dll", "VDebugOverlay004", 20, ffi.typeof("void(__thiscall*)(void *thisptr, const $ &origin, const $ &dest, int r, int g, int b, int a, bool noDepthTest, float duration)", v46, v46));
local v50 = utils.get_vfunc("engine.dll", "VDebugOverlay004", 21, "void(__thiscall*)(void *thisptr, const $ &origin, const $ &mins, const $ &maxs, const $ &angles, $ *face_color, $ *edge_color, float duration)", v46, v46, v46, v46, v47, v47);
do
    local l_v46_0, l_v47_0, l_v48_0, l_v49_0, l_v50_0 = v46, v47, v48, v49, v50;
    v45.box = function(v56, v57, v58, v59, v60, v61, v62, v63, v64)
        -- upvalues: l_v46_0 (ref), l_v48_0 (ref)
        v56 = l_v46_0(v56:unpack());
        v57 = l_v46_0(v57:unpack());
        v58 = l_v46_0(v58:unpack());
        v59 = l_v46_0(v59:unpack());
        l_v48_0(v56, v57, v58, v59, v60, v61, v62, v63, v64);
    end;
    v45.line = function(v65, v66, v67, v68, v69)
        -- upvalues: l_v46_0 (ref), l_v49_0 (ref)
        v65 = l_v46_0(v65:unpack());
        v66 = l_v46_0(v66:unpack());
        l_v49_0(v65, v66, v67.r, v67.g, v67.b, v67.a, v68, v69);
    end;
    v45.box_new = function(v70, v71, v72, v73, v74, v75, v76)
        -- upvalues: l_v46_0 (ref), l_v47_0 (ref), l_v50_0 (ref)
        v70 = l_v46_0(v70:unpack());
        v71 = l_v46_0(v71:unpack());
        v72 = l_v46_0(v72:unpack());
        v73 = l_v46_0(v73:unpack());
        v74 = l_v47_0(v74:unpack());
        v75 = l_v47_0(v75:unpack());
        l_v50_0(v70, v71, v72, v73, v74, v75, v76);
    end;
end;
v5("begin_event_system");
v46 = nil;
v46 = {};
v47 = {};
v47.__index = v47;
v47.new = function(v77)
    return setmetatable({
        count = 0, 
        list = {}
    }, v77);
end;
v47.__len = function(v78)
    return v78.count;
end;
v47.__call = function(v79, v80, v81)
    if v81 == false then
        return v79:unset(v80);
    else
        return v79:set(v80);
    end;
end;
v47.unset = function(v82, v83)
    -- upvalues: l_dev_break_after_count_0 (ref)
    local v84 = l_dev_break_after_count_0(v82.list, v83);
    if v84 ~= nil then
        v82.count = v82.count - 1;
        table.remove(v82.list, v84);
    end;
    return v82;
end;
v47.set = function(v85, v86, v87)
    -- upvalues: l_dev_break_after_count_0 (ref)
    if v87 == false then
        return v85:unset(v86);
    else
        if not l_dev_break_after_count_0(v85.list, v86) then
            v85.count = v85.count + 1;
            table.insert(v85.list, v86);
        end;
        return v85;
    end;
end;
v47.fire = function(v88, ...)
    local l_list_0 = v88.list;
    for v90 = 1, #l_list_0 do
        l_list_0[v90](...);
    end;
    return v88;
end;
v48 = {};
do
    local l_v47_1, l_v48_1 = v47, v48;
    v49 = function(v93, v94)
        -- upvalues: l_v47_1 (ref)
        local v95 = rawget(v93, v94);
        if v95 == nil then
            v95 = l_v47_1:new();
            rawset(v93, v94, v95);
        end;
        return v95;
    end;
    do
        local l_v49_1 = v49;
        l_v48_1.new = function(_)
            -- upvalues: l_v49_1 (ref)
            return setmetatable({}, {
                __index = l_v49_1
            });
        end;
    end;
    v46.new = function(_)
        -- upvalues: l_v48_1 (ref)
        return l_v48_1:new();
    end;
end;
v5("begin_menu");
v47 = nil;
v47 = {};
v48 = bit.lshift(1, 0);
v49 = {};
v49.__index = v49;
v49.__newindex = function(v99, v100, v101)
    v99[0][v100] = v101;
end;
do
    local l_v48_2, l_v49_2 = v48, v49;
    l_v49_2.__index = function(v104, v105)
        -- upvalues: l_v49_2 (ref), l_v48_2 (ref)
        local v106 = rawget(l_v49_2, v105);
        if v106 ~= nil then
            return v106;
        else
            local v107 = rawget(v104, v105);
            if v107 ~= nil then
                return v107;
            else
                local v108 = v104[0][v105];
                if v108 == nil then
                    return nil;
                elseif type(v108) == "function" then
                    local function v112(...)
                        -- upvalues: v104 (ref), l_v48_2 (ref), v108 (ref)
                        local v109 = {};
                        local v110 = select("#", ...);
                        for v111 = 1, v110 do
                            v109[v111] = select(v111, ...);
                        end;
                        if bit.band(v104.flags, l_v48_2) ~= 0 then
                            v104:fire_callbacks(v109, v110);
                        end;
                        if v109[1] == v104 then
                            v109[1] = v104[0];
                        end;
                        return v108(unpack(v109, 1, v110));
                    end;
                    rawset(v104, v105, v112);
                    return v112;
                else
                    return v108;
                end;
            end;
        end;
    end;
    l_v49_2.new = function(v113, v114)
        -- upvalues: l_v48_2 (ref)
        local v115 = {
            flags = 0, 
            [0] = v114, 
            callbacks = {}
        };
        v115.flags = bit.bor(v115.flags, l_v48_2);
        return setmetatable(v115, v113);
    end;
    l_v49_2.fire_callbacks = function(v116, ...)
        local v117 = rawget(v116, "callbacks");
        for v118 = 1, #v117 do
            v117[v118](...);
        end;
        return v116;
    end;
    l_v49_2.get_flag = function(v119, v120)
        return bit.band(v119.flags, v120) ~= 0;
    end;
    l_v49_2.set_flag = function(v121, v122, v123)
        if v123 then
            v121.flags = bit.bor(v121.flags, v122);
        else
            v121.flags = bit.band(v121.flags, bit.bnot(v122));
        end;
        return v121;
    end;
    l_v49_2.set_callback = function(v124, v125)
        -- upvalues: l_dev_break_after_count_0 (ref)
        local v126 = rawget(v124, "callbacks");
        if l_dev_break_after_count_0(v126, v125) == nil then
            table.insert(v126, v125);
        end;
        return v124;
    end;
    l_v49_2.unset_callback = function(v127, v128)
        -- upvalues: l_dev_break_after_count_0 (ref)
        local v129 = rawget(v127, "callbacks");
        local v130 = l_dev_break_after_count_0(v129, v128);
        if v130 ~= nil then
            table.remove(v129, v130);
        end;
        return v127;
    end;
    v47.group_flags = {
        callbacks = l_v48_2
    };
    v47.cast = function(v131)
        -- upvalues: l_v49_2 (ref)
        return l_v49_2:new(v131);
    end;
    v47.create = function(...)
        -- upvalues: l_v49_2 (ref)
        return l_v49_2:new(ui.create(...));
    end;
end;
v5("begin_logging_system");
v48 = nil;
v48 = {};
v49 = "ui\\beepclear.wav";
v50 = "resource\\warning.wav";
local l_play_0 = cvar.play;
local function v137(v133, v134)
    -- upvalues: v22 (ref)
    local v135 = " ";
    local v136 = string.format("\a%s[%s]\aDEFAULT", v133:to_hex(), v22.name:lower());
    print_raw(v136 .. v135 .. v134);
end;
do
    local l_v49_3, l_v50_1, l_l_play_0_0, l_v137_0 = v49, v50, l_play_0, v137;
    v48.log = function(v142)
        -- upvalues: l_v137_0 (ref)
        l_v137_0(color(255, 255, 255, 200), v142);
    end;
    v48.success = function(v143)
        -- upvalues: l_v137_0 (ref), l_l_play_0_0 (ref), l_v49_3 (ref)
        l_v137_0(color(100, 175, 255), v143);
        l_l_play_0_0:call(l_v49_3);
    end;
    v48.error = function(v144)
        -- upvalues: l_v137_0 (ref), l_l_play_0_0 (ref), l_v50_1 (ref)
        l_v137_0(color(250, 50, 50, 255), v144);
        l_l_play_0_0:call(l_v50_1);
    end;
end;
v5("begin_windows");
v49 = nil;
v49 = {};
v50 = ui.create("##WINDOWS");
v50:visibility(false);
l_play_0 = {};
v137 = {};
local v145 = vector();
local v146 = vector();
local v147 = false;
local v148 = false;
local v149 = 0;
local v150 = vector();
local v151 = vector();
local v152 = nil;
local v153 = nil;
do
    local l_v50_2, l_l_play_0_1, l_v137_1, l_v145_0, l_v146_0, l_v147_0, l_v148_0, l_v149_0, l_v150_0, l_v151_0, l_v152_0, l_v153_0 = v50, l_play_0, v137, v145, v146, v147, v148, v149, v150, v151, v152, v153;
    local v182 = {
        new = function(v166, v167)
            -- upvalues: l_v50_2 (ref), l_l_play_0_1 (ref), l_v137_1 (ref)
            local v168 = {
                name = v167, 
                pos = vector(), 
                size = vector(), 
                anchor = vector(0, 0), 
                updated = false, 
                dragging = false, 
                item_x = l_v50_2:value(string.format("%s_x", v167), ""), 
                item_y = l_v50_2:value(string.format("%s_y", v167), "")
            };
            l_l_play_0_1[v167] = v168;
            l_v137_1[#l_v137_1 + 1] = v168;
            return setmetatable(v168, v166);
        end, 
        set_pos = function(v169, v170)
            local v171 = render.screen_size();
            if v171.x == 0 and v171.y == 0 then
                return;
            else
                local v172 = v170:clone();
                v172.x = math.clamp(v172.x, 0, v171.x - v169.size.x);
                v172.y = math.clamp(v172.y, 0, v171.y - v169.size.y);
                v169.pos = v172;
                return;
            end;
        end, 
        set_size = function(v173, v174)
            local v175 = render.screen_size();
            if v175.x == 0 and v175.y == 0 then
                return;
            else
                local v176 = v174 - v173.size;
                v173.size = v174;
                v173:set_pos(v173.pos - v176 * v173.anchor);
                return;
            end;
        end, 
        set_anchor = function(v177, v178)
            v177.anchor = v178;
        end, 
        is_hovering = function(v179)
            return v179.hovering;
        end, 
        is_dragging = function(v180)
            return v180.dragging;
        end, 
        update = function(v181)
            v181.updated = true;
        end
    };
    v182.__index = v182;
    local function v186(v183, v184, v185)
        return v183.x >= v184.x and v183.y >= v184.y and v183.x <= v185.x and v183.y <= v185.y;
    end;
    local function v191()
        -- upvalues: l_v145_0 (ref), l_v150_0 (ref), l_v146_0 (ref), l_v147_0 (ref), l_v148_0 (ref), l_v149_0 (ref), l_v151_0 (ref)
        local v187 = ui.get_mouse_position();
        local v188 = common.is_button_down(1);
        local l_frametime_0 = globals.frametime;
        l_v145_0 = v187:clone();
        l_v150_0 = l_v145_0 - l_v146_0;
        l_v146_0 = l_v145_0;
        l_v147_0 = v188;
        l_v148_0 = v188 and l_v149_0 < 0;
        local v190;
        if v188 then
            if l_v149_0 < 0 then
                v190 = 0;
                goto label0 --[[  true, true  ]];
            else
                v190 = l_v149_0 + l_frametime_0;
                if v190 then
                    goto label0;
                end;
            end;
        end;
        v190 = -1;
        ::label0::;
        l_v149_0 = v190;
        if l_v148_0 then
            l_v151_0 = l_v145_0;
        end;
    end;
    local function _()
        -- upvalues: l_v137_1 (ref)
        for v192 = 1, #l_v137_1 do
            local v193 = l_v137_1[v192];
            local l_pos_0 = v193.pos;
            local l_size_0 = v193.size;
            render.rect_outline(l_pos_0, l_pos_0 + l_size_0, color(0, 0, 0, 100));
        end;
    end;
    local function v202()
        -- upvalues: l_v137_1 (ref), v186 (ref), l_v145_0 (ref), l_v152_0 (ref)
        local v197 = nil;
        if ui.get_alpha() > 0 then
            for v198 = 1, #l_v137_1 do
                local v199 = l_v137_1[v198];
                local l_pos_1 = v199.pos;
                local l_size_1 = v199.size;
                if v199.updated and v186(l_v145_0, l_pos_1, l_pos_1 + l_size_1) then
                    v197 = v199;
                end;
            end;
        end;
        l_v152_0 = v197;
    end;
    local function v205()
        -- upvalues: l_v147_0 (ref), l_v148_0 (ref), l_v152_0 (ref), l_v137_1 (ref), l_v153_0 (ref)
        if l_v147_0 then
            if l_v148_0 and l_v152_0 ~= nil then
                for v203 = 1, #l_v137_1 do
                    local v204 = l_v137_1[v203];
                    if v204 == l_v152_0 then
                        table.remove(l_v137_1, v203);
                        table.insert(l_v137_1, v204);
                        break;
                    end;
                end;
                l_v153_0 = l_v152_0;
                return;
            else
                return;
            end;
        else
            l_v153_0 = nil;
            return;
        end;
    end;
    local function v208()
        -- upvalues: l_v137_1 (ref)
        for v206 = 1, #l_v137_1 do
            local v207 = l_v137_1[v206];
            v207.updated = false;
            v207.hovering = false;
            v207.dragging = false;
        end;
    end;
    local function v209()
        -- upvalues: l_v152_0 (ref)
        if l_v152_0 == nil then
            return;
        else
            l_v152_0.hovering = true;
            return;
        end;
    end;
    local function v211()
        -- upvalues: l_v153_0 (ref), l_v150_0 (ref)
        if l_v153_0 == nil then
            return;
        else
            local v210 = l_v153_0.pos + l_v150_0;
            l_v153_0:set_pos(v210);
            l_v153_0.dragging = true;
            return;
        end;
    end;
    local function v217()
        -- upvalues: l_v137_1 (ref)
        local v212 = render.screen_size();
        for v213 = 1, #l_v137_1 do
            local v214 = l_v137_1[v213];
            local v215 = v214.pos.x / v212.x;
            local v216 = v214.pos.y / v212.y;
            v214.item_x:set(tostring(v215));
            v214.item_y:set(tostring(v216));
        end;
    end;
    local function v223()
        -- upvalues: l_v137_1 (ref)
        local v218 = render.screen_size();
        for v219 = 1, #l_v137_1 do
            local v220 = l_v137_1[v219];
            local v221 = tonumber(v220.item_x:get());
            local v222 = tonumber(v220.item_y:get());
            if v221 ~= nil and v222 ~= nil then
                v220:set_pos(v218 * vector(v221, v222));
            end;
        end;
    end;
    local function v224()
        -- upvalues: v191 (ref), v202 (ref), v205 (ref), v208 (ref), v209 (ref), v211 (ref)
        v191();
        v202();
        v205();
        v208();
        v209();
        v211();
    end;
    local function v226(v225)
        -- upvalues: l_v152_0 (ref), l_v153_0 (ref)
        if l_v152_0 ~= nil or l_v153_0 ~= nil then
            v225.in_attack = 0;
            v225.in_attack2 = 0;
        end;
    end;
    local function v228(v227)
        -- upvalues: v217 (ref), v223 (ref)
        if v227 == "pre_save" then
            v217();
        end;
        if v227 == "post_load" then
            v223();
        end;
    end;
    v49.new = function(v229, v230, v231)
        -- upvalues: l_l_play_0_1 (ref), v182 (ref)
        local v232 = l_l_play_0_1[v229] or v182:new(v229);
        v232:set_pos(render.screen_size() * vector(v230, v231));
        return v232;
    end;
    v49.save_settings = function()
        -- upvalues: v217 (ref)
        v217();
    end;
    v49.load_settings = function()
        -- upvalues: v223 (ref)
        v223();
    end;
    v224 = v21("windows.on_render", v224);
    v226 = v21("windows.on_createmove", v226);
    v228 = v21("windows.on_config_state", v228);
    events.render(v224);
    events.createmove(v226);
    events.config_state(v228);
    utils.execute_after(0, function()
        -- upvalues: v223 (ref)
        v223();
    end);
end;
v5("begin_config_system");
v50 = nil;
v50 = {};
l_play_0 = {};
do
    local l_l_play_0_2 = l_play_0;
    v50.get = function()
        -- upvalues: l_l_play_0_2 (ref)
        return l_l_play_0_2;
    end;
    v50.add = function(v234, v235, v236)
        -- upvalues: l_l_play_0_2 (ref)
        l_l_play_0_2[v234] = {
            [1] = v235, 
            [2] = v236
        };
    end;
end;
v5("begin_motion");
l_play_0 = nil;
l_play_0 = {};
v137 = function(v237, v238, v239, v240)
    return v239 * v237 / v240 + v238;
end;
v145 = function()
    return globals.frametime;
end;
v146 = function(v241, v242, v243, v244, v245)
    if v244 <= 0 then
        return v243;
    elseif v245 <= v244 then
        return v243;
    else
        v242 = v241(v244, v242, v243 - v242, v245);
        if type(v242) == "number" then
            if math.abs(v243 - v242) < 0.001 then
                return v243;
            else
                local v246 = v242 % 1;
                if v246 < 0.001 then
                    return math.floor(v242);
                elseif v246 > 0.999 then
                    return math.ceil(v242);
                end;
            end;
        end;
        return v242;
    end;
end;
do
    local l_v137_2, l_v145_1, l_v146_1 = v137, v145, v146;
    l_play_0.interp = function(v250, v251, v252, v253)
        -- upvalues: l_v137_2 (ref), l_v146_1 (ref), l_v145_1 (ref)
        if not v253 then
            v253 = l_v137_2;
        end;
        if type(v251) == "boolean" then
            v251 = v251 and 1 or 0;
        end;
        return l_v146_1(v253, v250, v251, l_v145_1(), v252);
    end;
end;
v5("begin_render");
v137 = nil;
v145 = _G.render;
v146 = math.floor;
v147 = color(0, 0, 0, 0);
v148 = 1;
v149 = "s";
do
    local l_v145_2, l_v147_1, l_v148_1, l_v150_1, l_v151_1, l_v152_1, l_v153_1 = v145, v147, v148, v150, v151, v152, v153;
    l_v150_1 = function(v261)
        -- upvalues: l_v148_1 (ref)
        if l_v148_1 == 1 then
            return v261;
        else
            return v261 * l_v148_1;
        end;
    end;
    l_v151_1 = 1;
    l_v152_1 = {};
    l_v153_1 = color().alpha_modulate;
    local function v264(v262, v263)
        -- upvalues: l_v151_1 (ref), l_v147_1 (ref), l_v153_1 (ref)
        if l_v151_1 == 1 then
            return v262;
        elseif not v263 and l_v151_1 == 0 then
            return l_v147_1;
        else
            return l_v153_1(v262, l_v151_1, true);
        end;
    end;
    v137 = setmetatable({
        cheap = false, 
        dpi = l_v145_2.get_scale(2), 
        push_alpha = function(v265)
            -- upvalues: l_v152_1 (ref), l_v151_1 (ref)
            local v266 = #l_v152_1;
            if v266 > 255 then
                error("alpha stack exceeded 255 objects, report to developers");
            end;
            l_v152_1[v266 + 1] = v265;
            l_v151_1 = l_v151_1 * l_v152_1[v266 + 1] * (l_v152_1[v266] or 1);
        end, 
        pop_alpha = function()
            -- upvalues: l_v152_1 (ref), l_v151_1 (ref)
            local v267 = #l_v152_1;
            local l_l_v152_1_0 = l_v152_1;
            local l_v267_0 = v267;
            local v270 = nil;
            v267 = v267 - 1;
            l_l_v152_1_0[l_v267_0] = v270;
            l_v151_1 = v267 == 0 and 1 or l_v152_1[v267] * (l_v152_1[v267 - 1] or 1);
        end, 
        get_alpha = function(v271)
            -- upvalues: l_v152_1 (ref), l_v151_1 (ref)
            if v271 then
                return l_v152_1[v271];
            else
                return l_v151_1, #l_v152_1;
            end;
        end, 
        screen_size = function(v272)
            -- upvalues: l_v145_2 (ref), l_v148_1 (ref)
            return l_v145_2.screen_size() / (v272 and 1 or l_v148_1);
        end, 
        measure_text = function(v273, ...)
            -- upvalues: l_v145_2 (ref), l_v148_1 (ref)
            return l_v145_2.measure_text(v273, ...) / l_v148_1;
        end, 
        load_font = function(v274, v275, v276)
            -- upvalues: l_v145_2 (ref)
            return l_v145_2.load_font(v274, v275, v276 or "");
        end, 
        text = function(v277, v278, v279, v280, ...)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref), v137 (ref)
            l_v145_2.text(v277, l_v150_1(v278), v264(v279), v280, ...);
            if measure == true then
                return v137.measure_text(v277, v280, ...);
            else
                return;
            end;
        end, 
        blur = function(v281, v282, v283, v284, v285)
            -- upvalues: v137 (ref), l_v150_1 (ref), l_v151_1 (ref), l_v145_2 (ref)
            if v137.cheap then
                return;
            else
                if type(v285) == "table" then
                    for v286 = 1, 4 do
                        v285[v286] = l_v150_1(v285[v286] or 0);
                    end;
                else
                    v285 = l_v150_1(v285 or 0);
                end;
                local v287 = (v284 or 1) * l_v151_1;
                v283 = l_v150_1(v283 or 2);
                v284 = v287;
                if v284 > 0 and v283 > 0 then
                    l_v145_2.blur(l_v150_1(v281), l_v150_1(v282), v283, v284, v285);
                end;
                return;
            end;
        end, 
        shadow = function(v288, v289, v290, v291, v292, v293)
            -- upvalues: v137 (ref), l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            if v137.cheap then
                return;
            else
                l_v145_2.shadow(l_v150_1(v288), l_v150_1(v289), v264(v290), l_v150_1(v291 or 16), l_v150_1(v292 or 0), l_v150_1(v293 or 0));
                return;
            end;
        end, 
        line = function(v294, v295, v296)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            l_v145_2.line(l_v150_1(v294), l_v150_1(v295), v264(v296));
        end, 
        rect = function(v297, v298, v299, v300, v301)
            -- upvalues: l_v150_1 (ref), l_v145_2 (ref), v264 (ref)
            if type(v300) == "table" then
                for v302 = 1, 4 do
                    v300[v302] = l_v150_1(v300[v302] or 0);
                end;
            else
                v300 = l_v150_1(v300 or 0);
            end;
            l_v145_2.rect(l_v150_1(v297), l_v150_1(v298), v264(v299), v300, v301 or false);
        end, 
        rect_outline = function(v303, v304, v305, v306, v307, v308)
            -- upvalues: l_v150_1 (ref), l_v145_2 (ref), v264 (ref)
            if type(v307) == "table" then
                for v309 = 1, 4 do
                    v307[v309] = l_v150_1(v307[v309] or 0);
                end;
            else
                v307 = l_v150_1(v307 or 0);
            end;
            l_v145_2.rect_outline(l_v150_1(v303), l_v150_1(v304), v264(v305), l_v150_1(v306 or 0), v307, v308 or false);
        end, 
        gradient = function(v310, v311, v312, v313, v314, v315, v316)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            local v317 = v314 or v312;
            if not v315 then
                v315 = v313;
            end;
            l_v145_2.gradient(l_v150_1(v310), l_v150_1(v311), v264(v312, true), v264(v313, true), v264(v317, true), v264(v315, true), v316 or 0);
        end, 
        circle = function(v318, v319, v320, v321, v322)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            l_v145_2.circle(l_v150_1(v318), v264(v319), l_v150_1(v320), v321 or 0, v322 or 1);
        end, 
        circle_outline = function(v323, v324, v325, v326, v327, v328)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            l_v145_2.circle_outline(l_v150_1(v323), v264(v324), l_v150_1(v325), v326 or 0, v327 or 1, l_v150_1(v328 or 1));
        end, 
        circle_3d = function(v329, v330, v331, v332, v333)
            -- upvalues: l_v145_2 (ref), v264 (ref)
            l_v145_2.circle_3d(v329, v264(v330), v331, v332 or 0, v333 or 1, false);
        end, 
        circle_3d_outline = function(v334, v335, v336, v337, v338, v339)
            -- upvalues: l_v145_2 (ref), v264 (ref), l_v150_1 (ref)
            l_v145_2.circle_3d_outline(v334, v264(v335), v336, v337 or 0, v338 or 1, l_v150_1(v339 or 1));
        end, 
        circle_3d_gradient = function(v340, v341, v342, v343, v344, v345, v346)
            -- upvalues: l_v145_2 (ref), v264 (ref), l_v150_1 (ref)
            l_v145_2.circle_3d_gradient(v340, v264(v341), v264(v342), v343, v344 or 0, v345 or 1, l_v150_1(v346 or 1));
        end, 
        texture = function(v347, v348, v349, v350, v351, v352)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref), v264 (ref)
            if not v347 then
                return;
            else
                if not v350 then
                    v350 = color();
                end;
                l_v145_2.texture(v347, l_v150_1(v348), l_v150_1(v349 or vector(v347.width, v347.height)), v264(v350), v351 or "", v352 or 0);
                return;
            end;
        end, 
        push_clip_rect = function(v353, v354, v355)
            -- upvalues: l_v145_2 (ref), l_v150_1 (ref)
            l_v145_2.push_clip_rect(l_v150_1(v353), l_v150_1(v354), v355 or false);
        end
    }, {
        __index = l_v145_2
    });
end;
v5("begin_drag");
v145 = nil;
v146 = {};
v147 = nil;
v148 = color(255, 255, 255, 255);
v149 = function(v356, v357, v358)
    return v356.x >= v357.x and v356.x <= v358.x and v356.y >= v357.y and v356.y <= v358.y;
end;
v150 = v47.create("##DRAG");
v150:visibility(false);
v151 = v137.screen_size();
do
    local l_v147_2, l_v148_2, l_v149_1, l_v150_2, l_v151_2 = v147, v148, v149, v150, v151;
    v145 = {
        data = v146, 
        in_bounds = l_v149_1, 
        new = function(v364, v365)
            -- upvalues: v145 (ref), l_v150_2 (ref), l_v151_2 (ref), v17 (ref)
            if type(v365) ~= "table" then
                v365 = {};
            end;
            v145[v364.id] = {
                x = l_v150_2:slider(v364.id .. "::x", 0, 10000, v364.pos.x / l_v151_2.x * 10000), 
                y = l_v150_2:slider(v364.id .. "::y", 0, 10000, v364.pos.y / l_v151_2.y * 10000)
            };
            v145[v364.id].x:set_callback(function(v366)
                -- upvalues: v364 (ref), v17 (ref), l_v151_2 (ref)
                v364.pos.x = v17(v366:get() * 1.0E-4 * l_v151_2.x);
            end, true);
            v145[v364.id].y:set_callback(function(v367)
                -- upvalues: v364 (ref), v17 (ref), l_v151_2 (ref)
                v364.pos.y = v17(v367:get() * 1.0E-4 * l_v151_2.y);
            end, true);
            v364.__drag = {
                active = false, 
                locked = false, 
                point = vector(), 
                progress = {
                    [1] = 0, 
                    [2] = 0, 
                    [3] = 0, 
                    [4] = 0
                }, 
                border = v365.border or {
                    [1] = vector(), 
                    [2] = oscreen
                }, 
                rulers = v365.rulers or {}, 
                on_release = v365.on_release, 
                on_held = v365.on_held, 
                on_active = v365.on_active, 
                config = v145[v364.id]
            };
            events.mouse_input:set(function()
                -- upvalues: v364 (ref)
                if ui.get_alpha() > 0 and (v364.__drag.hovered or v364.__drag.active) then
                    return false;
                else
                    return;
                end;
            end);
            events.dpi_change:set(function(_, _, _)
                -- upvalues: v145 (ref), v364 (ref)
                v145[v364.id].x:set(v145[v364.id].x.value);
                v145[v364.id].y:set(v145[v364.id].y.value);
            end);
        end, 
        process = function(v371)
            -- upvalues: v137 (ref), l_v149_1 (ref), l_v147_2 (ref), l_play_0 (ref), l_v148_2 (ref), l_v151_2 (ref)
            local l___drag_0 = v371.__drag;
            if l___drag_0.locked or ui.get_alpha() == 0 then
                return;
            else
                local v373 = ui.get_mouse_position() / v137.dpi;
                local v374 = ui.get_position();
                local v375 = ui.get_size();
                local v376 = ui.get_alpha() > 0 and common.is_button_down(1);
                local v377 = l_v149_1(v373, v371.pos, v371.pos + v371.size) and not l_v149_1(v373, v374 / v137.dpi, (v374 + v375) / v137.dpi);
                if v376 and l___drag_0.ready == nil then
                    local l_v377_0 = v377;
                    local v379 = v371.pos - v373;
                    l___drag_0.init = v371.pos:clone();
                    l___drag_0.point = v379;
                    l___drag_0.ready = l_v377_0;
                end;
                if v376 and l___drag_0.ready then
                    if l_v147_2 == nil and l___drag_0.on_held then
                        l___drag_0.on_held(v371, l___drag_0);
                    end;
                    l_v147_2 = l___drag_0.ready and l_v147_2 == nil and v371.id or l_v147_2;
                    l___drag_0.active = l_v147_2 == v371.id;
                elseif not v376 then
                    if l___drag_0.active and l___drag_0.on_release then
                        l___drag_0.on_release(v371, l___drag_0);
                    end;
                    l___drag_0.active = false;
                    local v380 = nil;
                    local v381 = nil;
                    local v382 = nil;
                    local v383 = nil;
                    l_v147_2 = nil;
                    l___drag_0.aligning = v383;
                    l___drag_0.init = v382;
                    l___drag_0.point = v381;
                    l___drag_0.ready = v380;
                end;
                local v384 = v371.pos * v137.dpi;
                local v385 = v371.size * v137.dpi;
                l___drag_0.hovered = v377 or l___drag_0.active;
                local v386 = {};
                local v387 = v384 + v385 * 0.5;
                local v388 = l___drag_0.point and (l___drag_0.point + v373) * v137.dpi or v384;
                l___drag_0.progress[1] = l_play_0.interp(l___drag_0.progress[1], l___drag_0.active, 0.1);
                l___drag_0.progress[2] = l_play_0.interp(l___drag_0.progress[2], l___drag_0.active or l___drag_0.hovered, 0.1);
                local v389 = l___drag_0.progress[1];
                local v390 = l___drag_0.progress[2];
                v137.push_alpha(ui.get_alpha());
                local _ = nil;
                local v392 = v371.pos - 4;
                local v393 = v371.pos + v371.size + 4;
                local v394 = l_v148_2:alpha_modulate(0.1 * (v390 * 0.65 + 0.35), true);
                v137.rect_outline(v392, v393, v394, 1, 4);
                v137.push_alpha(v389);
                if v389 > 0 and not common.is_button_down(162) then
                    v392 = (v388 + v385 * 0.5) / v137.dpi;
                    for _, v396 in ipairs(l___drag_0.rulers) do
                        v396[4] = v396[4] or {
                            [1] = 0
                        };
                        local v397 = v396[2] / v137.dpi;
                        local v398 = math.abs(v396[1] and v392.x - v397.x or v392.y - v397.y) < 10 * v137.dpi;
                        local l_v397_0 = v397;
                        local v400 = v396[1] and vector(v397.x + 1, v396[3] / v137.dpi) or vector(v396[3] / v137.dpi, v397.y + 1);
                        local v401 = v396[1] and 1 or 2;
                        if not v386[v401] then
                            v386[v401] = v398 and (v396[1] and v397.x - v371.size.x * 0.5 or v397.y - v371.size.y * 0.5) or nil;
                        end;
                        local v402 = math.abs(v396[1] and v387.x - v397.x or v387.y - v397.y);
                        l___drag_0.progress[4] = l_play_0.interp(l___drag_0.progress[4], v398 or v402 < 10 * v137.dpi, 0.1);
                        local v403 = l___drag_0.progress[4] * 0.1 + 0.05;
                        v137.rect(l_v397_0, v400, l_v148_2:alpha_modulate(v403, true));
                    end;
                    if l___drag_0.border[3] then
                        v393 = utilities.in_bounds(v371.pos, l___drag_0.border[1], l___drag_0.border[2] - v371.size * 0.5 - 1);
                        l___drag_0.progress[3] = l_play_0.interp(l___drag_0.progress[3], not v393, 0.1);
                        v394 = l___drag_0.progress[3];
                        v137.rect_outline(l___drag_0.border[1] / v137.dpi, l___drag_0.border[2] / v137.dpi, l_v148_2:alpha_modulate(v394 * 0.75 + 0.25, true), 1, 4);
                    end;
                end;
                v137.pop_alpha();
                v137.pop_alpha();
                if l___drag_0.active then
                    v392 = v388 / v137.dpi;
                    if common.is_button_down(160) then
                        v393 = l___drag_0.init:to(v392);
                        v394 = math.abs(v393.y);
                        local v404 = math.abs(v393.x);
                        if l___drag_0.aligning == nil then
                            if v394 > 0.9 then
                                l___drag_0.aligning = 0;
                            elseif v404 > 0.9 then
                                l___drag_0.aligning = 1;
                            end;
                        end;
                        if l___drag_0.aligning == 0 then
                            v392.x = l___drag_0.init.x;
                            v137.rect(vector(v392.x + v371.size.x * 0.5, 0), vector(v392.x + v371.size.x * 0.5 + 1, l_v151_2.y), color(255, 64));
                        elseif l___drag_0.aligning == 1 then
                            v392.y = l___drag_0.init.y;
                            v137.rect(vector(0, v392.y + v371.size.y * 0.5), vector(l_v151_2.x, v392.y + v371.size.y * 0.5 + 1), color(255, 64));
                        end;
                    end;
                    v393 = v386[1] or v392.x;
                    v392.y = v386[2] or v392.y;
                    v392.x = v393;
                    v393 = (l___drag_0.border[1] - v385 * 0.5) / v137.dpi;
                    v394 = (l___drag_0.border[2] - v385 * 0.5) / v137.dpi;
                    v371:set_position(math.clamp(v392.x, v393.x, math.min(v394.x, l_v151_2.x - v371.size.x)), (math.clamp(v392.y, v393.y, math.min(v394.y, l_v151_2.y - v371.size.y))));
                    if l___drag_0.on_active then
                        l___drag_0.on_active(v371, l___drag_0, v392);
                    end;
                end;
                return;
            end;
        end
    };
end;
v5("begin_widget");
v146 = nil;
v147 = v137.screen_size();
do
    local l_v147_3, l_v148_3, l_v149_2 = v147, v148, v149;
    l_v148_3 = function()
        -- upvalues: v137 (ref), l_v147_3 (ref)
        local v408 = v137.screen_size();
        if v408.x == 0 and v408.y == 0 then
            return l_v147_3;
        else
            if l_v147_3.x == 0 and l_v147_3.y == 0 then
                l_v147_3 = v408:clone();
            end;
            return v408;
        end;
    end;
    l_v149_2 = nil;
    l_v149_2 = {
        update = function(_)
            return 1;
        end, 
        paint = function(_, _, _)

        end, 
        set_position = function(v413, v414, v415)
            -- upvalues: l_v148_3 (ref)
            local v416 = nil;
            local v417 = nil;
            if type(v414) == "userdata" then
                local l_x_0 = v414.x;
                v417 = v414.y;
                v416 = l_x_0;
            else
                local l_v414_0 = v414;
                v417 = v415;
                v416 = l_v414_0;
            end;
            local v420 = l_v148_3();
            if v420.x == 0 and v420.y == 0 then
                return;
            else
                if v413.__drag then
                    if v416 then
                        v413.__drag.config.x:set(v416 / v420.x * 10000);
                    end;
                    if v417 then
                        v413.__drag.config.y:set(v417 / v420.y * 10000);
                    end;
                else
                    local l_pos_2 = v413.pos;
                    local l_pos_3 = v413.pos;
                    local v423;
                    if not v416 then
                        v423 = v413.pos.x;
                    else
                        v423 = v416;
                    end;
                    local v424;
                    if not v417 then
                        v424 = v413.pos.y;
                    else
                        v424 = v417;
                    end;
                    l_pos_3.y = v424;
                    l_pos_2.x = v423;
                end;
                return;
            end;
        end, 
        get_drag_position = function(v425)
            -- upvalues: l_v148_3 (ref)
            local v426 = v425.__drag and v425.__drag.config;
            if not v426 then
                return v425.pos;
            else
                local v427 = l_v148_3();
                if v427.x == 0 and v427.y == 0 then
                    return v425.pos;
                else
                    local v428 = v426.x:get();
                    local v429 = v426.y:get();
                    return vector(v428 * 1.0E-4 * v427.x, v429 * 1.0E-4 * v427.y);
                end;
            end;
        end, 
        get_drag_size = function(v430)
            return v430.size:clone();
        end, 
        __call = function(v431)
            -- upvalues: v137 (ref), v145 (ref), l_v149_2 (ref)
            local l___list_0 = v431.__list;
            local l___drag_1 = v431.__drag;
            if l___list_0 then
                local v434 = l___list_0.collect();
                l___list_0.active = 0;
                l___list_0.items = v434;
                for v435 = 1, #l___list_0.items do
                    if l___list_0.items[v435].active then
                        l___list_0.active = l___list_0.active + 1;
                    end;
                end;
            end;
            v431:sanitize_pos();
            v431.alpha = v431:update();
            v137.push_alpha(v431.alpha);
            if v431.alpha > 0 then
                if l___drag_1 then
                    v145.process(v431);
                end;
                if l___list_0 then
                    l_v149_2.traverse(v431);
                end;
                v431:paint(v431.pos, v431.pos + v431.size);
            end;
            v137.pop_alpha();
        end, 
        sanitize_pos = function(v436)
            -- upvalues: l_v148_3 (ref)
            local v437 = l_v148_3();
            if v437.x == 0 and v437.y == 0 then
                return;
            else
                local l___drag_2 = v436.__drag;
                local v439 = l___drag_2.border[1] - v436.size * 0.5;
                local v440 = l___drag_2.border[2] - v436.size * 0.5;
                local l_x_1 = v436.pos.x;
                local l_y_0 = v436.pos.y;
                v436.pos.x = math.clamp(v436.pos.x, v439.x, math.min(v440.x, v437.x - v436.size.x));
                v436.pos.y = math.clamp(v436.pos.y, v439.y, math.min(v440.y, v437.y - v436.size.y));
                if l_x_1 ~= v436.pos.x or l_y_0 ~= v436.pos.y then
                    v436:set_position(v436.pos.x, v436.pos.y);
                end;
                return;
            end;
        end, 
        enlist = function(v443, v444, v445, v446)
            v443.__list = {
                longest = 0, 
                active = 0, 
                items = {}, 
                progress = setmetatable({}, {
                    __mode = "k"
                }), 
                minwidth = v443.size.x, 
                collect = v444, 
                paint = v445, 
                rev = v446
            };
        end, 
        traverse = function(v447)
            -- upvalues: v137 (ref)
            local l___list_1 = v447.__list;
            local v449 = 0;
            local v450 = vector();
            local v451 = 0;
            l___list_1.longest = 0;
            l___list_1.active = v451;
            for v452 = 1, #l___list_1.items do
                local v453 = l___list_1.items[v452];
                local v454 = v453.name or v452;
                l___list_1.progress[v454] = l___list_1.progress[v454] or {
                    [1] = 0
                };
                local v455 = anima.condition(l___list_1.progress[v454], v453.active, 6, {
                    [1] = {
                        [1] = 1, 
                        [2] = 3
                    }, 
                    [2] = {
                        [1] = 2, 
                        [2] = 3
                    }
                });
                if v455 > 0 then
                    v137.push_alpha(v455);
                    v450 = l___list_1.paint(v447, v453, v449, v455);
                    v137.pop_alpha();
                    local v456 = l___list_1.active + 1;
                    v449 = v449 + v450.y * v455;
                    l___list_1.active = v456;
                    l___list_1.longest = math.max(l___list_1.longest, v450.x);
                end;
            end;
            v447.size.x = anima.lerp(v447.size.x, math.max(l___list_1.longest, l___list_1.minwidth), 10, 0.5);
        end, 
        lock = function(v457, v458)
            if not v457.__drag then
                return;
            else
                v457.__drag.locked = v458 and true or false;
                return;
            end;
        end
    };
    l_v149_2.__index = l_v149_2;
    v146 = {
        new = function(v459, v460, v461, v462)
            -- upvalues: v145 (ref), l_v149_2 (ref)
            local v463 = {
                alpha = 1, 
                id = v459, 
                pos = v460, 
                size = v461, 
                progress = {
                    [1] = 0
                }
            };
            if v462 then
                v145.new(v463, type(v462) == "table" and v462 or nil);
            end;
            return setmetatable(v463, l_v149_2);
        end
    };
end;
v5("begin_text_anims");
v147 = nil;
v147 = {};
v148 = function(v464)
    local v465 = {};
    local v466 = 0;
    for v467 in string.gmatch(v464, ".[\128-\191]*") do
        v466 = v466 + 1;
        v465[v466] = v467;
    end;
    return v465, v466;
end;
do
    local l_v148_4 = v148;
    v147.gradient = function(v469, v470, v471, v472, v473)
        -- upvalues: l_v148_4 (ref)
        local v474 = {};
        local v475, v476 = l_v148_4(v469);
        local v477 = 1 / (v476 - 1);
        local v478 = v472.r - v471.r;
        local v479 = v472.g - v471.g;
        local v480 = v472.b - v471.b;
        local v481 = v472.a - v471.a;
        for v482 = 1, v476 do
            local v483 = v475[v482];
            local v484 = v470 % 2;
            if v484 > 1 then
                v484 = 2 - v484;
            end;
            local v485 = v471.r + v484 * v478;
            local v486 = v471.g + v484 * v479;
            local v487 = v471.b + v484 * v480;
            local v488 = v471.a + v484 * v481;
            local v489 = string.format("%02x%02x%02x%02x", v485, v486, v487, v488);
            table.insert(v474, "\a");
            table.insert(v474, v489);
            table.insert(v474, v483);
            v470 = v470 + v477 * (v473 or 1);
        end;
        return table.concat(v474);
    end;
end;
v5("begin_session");
v148 = nil;
v148 = {
    force_lethal = {
        updated_division = false, 
        updated_this_tick = false
    }, 
    hitchance = {
        updated_this_tick = false
    }
};
v5("begin_const");
v149 = nil;
v149 = {
    teams = {
        [1] = "T", 
        [2] = "CT"
    }, 
    states = {
        [0] = "Default", 
        [1] = "Standing", 
        [2] = "Slowwalking", 
        [3] = "Running", 
        [4] = "Ducking", 
        [5] = "Sneaking", 
        [6] = "In Air", 
        [7] = "In Air & Duck", 
        [8] = "Freestanding", 
        [9] = "On Peek"
    }
};
v5("begin_locker_system");
v150 = nil;
v150 = {};
v152 = ({
    Live = 0, 
    Debug = -1
})[v22.build];
v153 = {};
local function v492(v490, v491)
    v490:set(unpack(v491));
    v490:disabled(true);
end;
do
    local l_v152_2, l_v153_2, l_v492_0 = v152, v153, v492;
    local function v498()
        -- upvalues: l_v153_2 (ref), l_v492_0 (ref)
        for v496 = 1, #l_v153_2 do
            local v497 = l_v153_2[v496];
            l_v492_0(v497.item, v497.value);
        end;
    end;
    v150.is_locked = function(v499)
        -- upvalues: l_v152_2 (ref)
        if l_v152_2 == -1 then
            return false;
        elseif v499 == -1 then
            return true;
        else
            return v499 <= l_v152_2;
        end;
    end;
    v150.push = function(v500, v501, ...)
        -- upvalues: v150 (ref), l_v153_2 (ref), l_v492_0 (ref)
        if not v150.is_locked(v500) then
            return v501;
        else
            local v502 = {
                ...
            };
            if select("#", ...) == 0 then
                v502 = {
                    [1] = false
                };
            end;
            table.insert(l_v153_2, {
                item = v501, 
                value = v502
            });
            v501:set_callback(function(v503)
                -- upvalues: l_v492_0 (ref), v502 (ref)
                l_v492_0(v503, v502);
            end, true);
            return v501;
        end;
    end;
    local v505 = v21("locker_system.on_config_state", function(v504)
        -- upvalues: v498 (ref)
        if v504 == "pre_save" then
            v498();
        end;
    end);
    utils.execute_after(0, v498);
    events.config_state(v505);
end;
v5("begin_resource");
v151 = nil;
v151 = {};
v152 = 1;
v153 = 2;
v492 = v15("\a", "{Link Active}", ui.get_icon("house"));
local v506 = v15("\a", "{Link Active}", ui.get_icon("shield"));
local v507 = v15("\a", "{Link Active}", ui.get_icon("grid-2"));
local function v509(v508)
    -- upvalues: v4 (ref)
    return string.rep(v4, v508);
end;
local function v513(v510, v511)
    -- upvalues: v4 (ref)
    local v512 = string.rep(v4, v511);
    return v512 .. v510 .. v512;
end;
do
    local l_v509_0 = v509;
    local function v520(v515, v516, v517, v518, v519)
        -- upvalues: l_v509_0 (ref)
        return l_v509_0(v518) .. "\a" .. v515 .. v516 .. l_v509_0(v519) .. "\aDEFAULT" .. v517;
    end;
    local function v525(v521, v522, v523, v524)
        -- upvalues: v520 (ref)
        return v520("{Link Active}", v521, v522, v523, v524);
    end;
    local function v531(v526, v527, v528, v529, v530)
        -- upvalues: v520 (ref)
        return v520(v526, ui.get_icon(v527), v528, v529, v530);
    end;
    local function v536(v532, v533, v534, v535)
        -- upvalues: v531 (ref)
        return v531("{Link Active}", v532, v533, v534, v535);
    end;
    local function v543(v537, v538, v539, v540)
        -- upvalues: l_v509_0 (ref)
        local v541 = l_v509_0(v540);
        local v542 = l_v509_0(3);
        return v541 .. "\a" .. v537 .. ui.get_icon(v538) .. v542 .. "\aDEFAULT" .. v539 .. v541;
    end;
    local function v547(v544, v545, v546)
        -- upvalues: v543 (ref)
        return v543("{Link Active}", v544, v545, v546);
    end;
    local function v553(v548, v549, v550)
        -- upvalues: l_v509_0 (ref)
        local v551 = ui.get_icon(v549);
        local v552 = l_v509_0(v550);
        return v552 .. "\a" .. v548 .. v551 .. v552;
    end;
    local function v556(v554, v555)
        -- upvalues: v553 (ref)
        return v553("{Link Active}", v554, v555);
    end;
    local function v564(v557, v558)
        local v559 = v557:get();
        if #v559 == 0 then
            if v558 == nil then
                local v560 = v557:type();
                local v561 = v557:list();
                if v560 == "selectable" then
                    v558 = v561;
                elseif v560 == "listable" then
                    v558 = {};
                    for v562 = 1, #v561 do
                        v558[v562] = v562;
                    end;
                end;
            end;
            v559 = v558;
            v557:set(v558);
        end;
        v557:set_callback(function()
            -- upvalues: v557 (ref), v559 (ref)
            local v563 = v557:get();
            if #v563 > 0 then
                v559 = v563;
            else
                v557:set(v559);
            end;
        end);
    end;
    local v565 = {
        home = {
            location = v47.create(v492, "##LOCATION", v152), 
            text_one = v47.create(v492, "##TEXT_ONE", v152), 
            text_second = v47.create(v492, "##TEXT_SECOND", v152), 
            buttons = v47.create(v492, "##BUTTONS", v152), 
            profile = v47.create(v492, "##PROFILE", v153), 
            statistics = v47.create(v492, "STATISTICS", v153), 
            player_stats = v47.create(v492, "##PLAYER_STATS", v153), 
            config = v47.create(v492, "##CONFIG", v153)
        }, 
        antiaim = {
            selector = v47.create(v506, "##AA_SELECTOR", v153), 
            settings = v47.create(v506, "##AA_SETTINGS", v153), 
            builder = v47.create(v506, "##AA_BUILDER", v153), 
            state = v47.create(v506, "##AA_STATE", v153), 
            send = v47.create(v506, "##AA_SEND", v153), 
            settings_extra = v47.create(v506, "##AA_SETTINGS_EXTRA", v152)
        }, 
        features = {
            category = v47.create(v507, "##CATEGORY", v152), 
            visuals = v47.create(v507, "##VISUALS", v152), 
            render = v47.create(v507, "##RENDER", v153), 
            extra = v47.create(v507, "##EXTRA", v152), 
            ragebot = v47.create(v507, "##RAGEBOT", v153), 
            misc = v47.create(v507, "##MISC", v153), 
            movement = v47.create(v507, "##MOVEMENT", v152)
        }
    };
    local _ = nil;
    ui.sidebar("frost", "snowflake");
    local v567 = nil;
    local function v571(v568, v569)
        -- upvalues: l_v509_0 (ref)
        local v570 = "\226\128\186";
        if v569 then
            v570 = "\a{Link Active}" .. v570 .. "\aDEFAULT";
        end;
        return v570 .. l_v509_0(5) .. v568;
    end;
    do
        local l_v571_0 = v571;
        local function v577(v573)
            -- upvalues: l_v571_0 (ref)
            local v574 = {};
            local v575 = {
                [1] = "About", 
                [2] = "Configs"
            };
            for v576 = 1, #v575 do
                table.insert(v574, l_v571_0(v575[v576], v576 == v573));
            end;
            return v574;
        end;
        v567 = v565.home.location:list("##LOCATION", {});
        v565.home.text_one:label(v525("\226\128\162", "we wish you a good experience", 0, 4));
        v565.home.text_second:label(v525("\226\128\162", "wake up the demon and kill your opponents", 0, 4));
        local _ = nil;
        v567:set_callback(function(v579)
            -- upvalues: v565 (ref), v567 (ref), v577 (ref)
            local v580 = v579:get();
            v565.home.profile:visibility(v580 == 1);
            v565.home.buttons:visibility(v580 == 1);
            v565.home.statistics:visibility(v580 == 1);
            v565.home.player_stats:visibility(v580 == 1);
            v565.home.config:visibility(v580 == 2);
            v567:update(v577(v580));
        end, true);
    end;
    v571 = {};
    local l_buttons_0 = v565.home.buttons;
    v571.discord_label = l_buttons_0:label("\a7580efff" .. ui.get_icon("discord"));
    v571.join_button = l_buttons_0:button(v543("DEFAULT", "right-to-bracket", "Join", 33), nil, true);
    v571.youtube_button = l_buttons_0:button(v553("f14040ff", "youtube", 5), nil, true);
    local function v582()
        panorama.SteamOverlayAPI.OpenExternalBrowserURL("https://rollmops.us/profile/724427916993233016");
    end;
    local function v583()
        panorama.SteamOverlayAPI.OpenExternalBrowserURL("https://rollmops.us/profile/724427916993233016");
    end;
    v571.join_button:set_callback(v582);
    v571.youtube_button:set_callback(v583);
    l_buttons_0 = {};
    v582 = v565.home.profile;
    l_buttons_0.username_label = v582:label(v536("circle-user", "Username", 1, 8));
    l_buttons_0.username_button = v582:button(common.get_username(), nil, true);
    l_buttons_0.build_label = v582:label(v536("brackets-curly", "Script", 1, 7));
    l_buttons_0.build_button = v582:button(v22.build, nil, true);
    v151.profile = l_buttons_0;
    v582 = {};
    v583 = v565.home.statistics;
    local l_player_stats_0 = v565.home.player_stats;
    if v23.time == nil then
        v582.total_played_label = v583:label(v536("hourglass-start", "Total", 2, 7));
        v582.total_played_button = v583:button("0s##TOTAL_PLAYED", nil, true);
        v582.session_time_label = v583:label(v536("clock", "Session", 1, 6));
        v582.session_time_button = v583:button("0s##SESSION_TIME", nil, true);
    else
        v582.time_left_label = v583:label(v536("clock", "Time Left", 1, 6));
        v582.time_left_button = v583:button("0s##TIME_LEFT", nil, true);
    end;
    v582.killes_label = l_player_stats_0:label(v536("skull", "Kills", 2, 6));
    v582.killes_button = l_player_stats_0:button("0##KILLS", nil, true);
    v582.misses_label = l_player_stats_0:label(v536("arrows-split-up-and-left", "Misses", 2, 6));
    v582.misses_button = l_player_stats_0:button("0##MISSES", nil, true);
    v151.statistics = v582;
    v583 = {};
    l_player_stats_0 = v565.home.config;
    v583.list = l_player_stats_0:list("##PRESET_LIST", {
        [1] = "Empty"
    });
    v583.name = l_player_stats_0:input("##PRESET_NAME", "");
    v583.load = l_player_stats_0:button(v556("download", 7), nil, true);
    v583.save = l_player_stats_0:button(v556("floppy-disk", 7), nil, true);
    v583.delete = l_player_stats_0:button(v553("CD3030FF", "trash", 6), nil, true);
    v583.export = l_player_stats_0:button(v553("DEFAULT", "copy", 6), nil, true);
    v583.import = l_player_stats_0:button(v553("DEFAULT", "paste", 6), nil, true);
    v583.load:tooltip("Loads selected preset");
    v583.save:tooltip("Creates/Saves current settings to preset");
    v583.delete:tooltip("Deletes selected preset");
    v583.import:tooltip("Imports preset from clipboard");
    v583.export:tooltip("Exports preset to clipboard");
    v151.presets = v583;
    l_player_stats_0 = {};
    local l_selector_0 = v565.antiaim.selector;
    local l_state_0 = v565.antiaim.state;
    local l_send_0 = v565.antiaim.send;
    local l_settings_0 = v565.antiaim.settings;
    local l_settings_extra_0 = v565.antiaim.settings_extra;
    local l_builder_0 = v565.antiaim.builder;
    v50.add("##ANTIAIM_STATE", l_state_0, "AA");
    v50.add("##ANTIAIM_SETTINGS", l_settings_0, "AA");
    v50.add("##ANTIAIM_SETTINGS_EXTRA", l_settings_extra_0, "AA");
    local v591 = {
        list = l_selector_0:list("##LIST", {
            v536("object-union", "Setup", 1, 8), 
            v536("slider", "Builder", 1, 8)
        })
    };
    local v592 = {};
    local v593 = {};
    local v594 = {
        unpack(v149.states, 0)
    };
    do
        local l_l_state_0_0, l_l_send_0_0, l_l_settings_0_0, l_l_settings_extra_0_0, l_v591_0, l_v592_0 = l_state_0, l_send_0, l_settings_0, l_settings_extra_0, v591, v592;
        do
            local l_v593_0, l_v594_0 = v593, v594;
            local function v603(v604)
                -- upvalues: v603 (ref)
                if v604 == nil then
                    return;
                else
                    local v605 = {};
                    for v606, v607 in pairs(v604) do
                        if type(v607) == "userdata" then
                            local v608 = v607:type();
                            if v608 ~= "label" and v608 ~= "button" then
                                local v609 = {
                                    pcall(v607.get, v607)
                                };
                                if v609[1] then
                                    v605[v606] = {
                                        unpack(v609, 2)
                                    };
                                end;
                            else
                                goto label1;
                            end;
                        end;
                        if type(v607) == "table" then
                            v605[v606] = v603(v607);
                        end;
                        ::label1::;
                    end;
                    return v605;
                end;
            end;
            local function v610(v611, v612)
                -- upvalues: v610 (ref)
                if v611 == nil or v612 == nil then
                    return;
                else
                    for v613, v614 in pairs(v612) do
                        local v615 = v611[v613];
                        if v615 ~= nil and type(v614) == "table" then
                            if type(v615) == "userdata" then
                                pcall(v615.set, v615, unpack(v614));
                            end;
                            if type(v615) == "table" then
                                v610(v615, v614);
                            end;
                        end;
                    end;
                    return;
                end;
            end;
            local _ = nil;
            local function v621(v617, v618, v619)
                -- upvalues: l_v509_0 (ref)
                local v620 = "\a" .. v617:to_hex();
                if v619 then
                    v620 = v620 .. "\226\128\186" .. l_v509_0(5);
                end;
                return v620 .. v618;
            end;
            do
                local l_v621_0 = v621;
                local function v631(v623)
                    -- upvalues: l_v621_0 (ref)
                    local v624 = {};
                    local v625 = {
                        [1] = "Terrorists", 
                        [2] = "Counter-Terrorists"
                    };
                    local v626 = ui.get_style("Link Active");
                    for v627 = 1, #v625 do
                        local v628 = v625[v627];
                        local v629 = v627 == v623;
                        local l_v626_0 = v626;
                        if not v629 then
                            l_v626_0 = l_v626_0:clone();
                            l_v626_0.a = l_v626_0.a * 0.5;
                        end;
                        table.insert(v624, l_v621_0(l_v626_0, v628, v629));
                    end;
                    return v624;
                end;
                l_v592_0.team = l_builder_0:list("##TEAM", v631(0));
                local _ = nil;
                local function v634(v633)
                    -- upvalues: v631 (ref)
                    v633:update(v631(v633:get()));
                end;
                l_v592_0.team:set_callback(v634, true);
            end;
            v621 = nil;
            local function v648(v635)
                -- upvalues: l_v592_0 (ref), v149 (ref), l_v593_0 (ref), l_v594_0 (ref)
                local v636 = l_v592_0.team:get() == 1 and "T" or "CT";
                l_v592_0.team:visibility(v635);
                for v637 = 1, #v149.teams do
                    local v638 = v149.teams[v637];
                    local l_v635_0 = v635;
                    if v636 ~= v638 then
                        l_v635_0 = false;
                    end;
                    local v640 = l_v592_0[v638];
                    local v641 = l_v593_0[v638];
                    local v642 = v640.state:get();
                    v640.state:visibility(l_v635_0);
                    for v643 = 1, #l_v594_0 do
                        local v644 = l_v594_0[v643];
                        local v645 = v640[v644];
                        local v646 = v641[v644];
                        local v647 = v642 == v644 and l_v635_0;
                        if v646 ~= nil then
                            if v646.root ~= nil then
                                v646.root:visibility(v647);
                                if v645 ~= nil and v645.enabled ~= nil then
                                    v645.enabled:visibility(v647);
                                    if v647 then
                                        v647 = v645.enabled:get();
                                    end;
                                end;
                            end;
                            if v646.angles ~= nil then
                                v646.angles:visibility(v647);
                            end;
                            if v646.defensive ~= nil then
                                v646.defensive:visibility(v647);
                            end;
                            if v646.antibrute ~= nil then
                                v646.antibrute:visibility(v647);
                            end;
                        end;
                    end;
                end;
            end;
            do
                local l_v648_0 = v648;
                v621 = function()
                    -- upvalues: l_v591_0 (ref), l_v648_0 (ref), l_l_state_0_0 (ref), l_l_send_0_0 (ref), l_l_settings_0_0 (ref), l_l_settings_extra_0_0 (ref)
                    local v650 = l_v591_0.list:get();
                    local v651 = v650 == 1;
                    local v652 = v650 == 2;
                    l_v648_0(v652);
                    l_l_state_0_0:visibility(v652);
                    l_l_send_0_0:visibility(v652);
                    l_l_settings_0_0:visibility(v651);
                    l_l_settings_extra_0_0:visibility(v651);
                end;
            end;
            v648 = function(v653, v654)
                -- upvalues: v150 (ref), v536 (ref), v525 (ref), v547 (ref)
                local v655 = {
                    [1] = "1-Way", 
                    [2] = "2-Way"
                };
                local v656 = {
                    [1] = "Off", 
                    [2] = "Offset", 
                    [3] = "Center", 
                    [4] = "Skitter", 
                    [5] = "Spin", 
                    [6] = "Random", 
                    [7] = "3-Way", 
                    [8] = "5-Way", 
                    [9] = "Frostino"
                };
                local v657 = {
                    [1] = "Default", 
                    [2] = "Random"
                };
                if not v150.is_locked(-1) then
                    table.insert(v656, "Frostbomber");
                end;
                table.insert(v657, "Custom");
                v654.yaw = v653:combo(v536("ruler-triangle", "Yaw", 1, 5), v655);
                local v658 = v654.yaw:create();
                v654.yaw_method = v658:combo(v536("bars-progress", "Method", 1, 6), {
                    [1] = "Default", 
                    [2] = "Wave", 
                    [3] = "Shake"
                });
                v654.yaw_frequency = v658:slider(v536("wave-sine", "Frequency", 0, 5), 0, 60, 0, nil);
                v654.yaw_amplitude = v658:slider(v536("wave-triangle", "Amplitude", 0, 5), 0, 30, 0, nil);
                v654.yaw_min = v658:slider(v536("chevrons-left", "Min. Yaw", 1, 7), 0, 100, 0, nil);
                v654.yaw_max = v658:slider(v536("chevrons-right", "Max. Yaw", 1, 7), 0, 100, 0, nil);
                v654.yaw_scale = v658:slider(v536("expand", "Scale", 1, 7), 0, 100, 0, nil);
                v654.yaw_offset = v653:slider(v536("angle-right", "Offset", 1, 6), -180, 180, 0, nil, "\194\176");
                v654.yaw_left = v658:slider(v536("arrow-left", "Yaw Left", 1, 7), -180, 180, 0, nil, "\194\176");
                v654.yaw_left_randomize = v658:switch(v525("\226\128\162", "Left Random", 3, 8));
                v654.yaw_left_random = v658:slider("##YAW_LEFT_RANDOM", -180, 180, 0, nil, "\194\176");
                v654.yaw_right = v658:slider(v536("arrow-right", "Yaw Right", 1, 7), -180, 180, 0, nil, "\194\176");
                v654.yaw_right_randomize = v658:switch(v525("\226\128\162", "Right Random", 3, 8));
                v654.yaw_right_random = v658:slider("##YAW_RIGHT_RANDOM", -180, 180, 0, nil, "\194\176");
                v654.delay = v658:switch(v525("\226\164\183", "Delay", 2, 6));
                v654.delay_mode = v658:combo(v536("layer-group", "Mode", 1, 6), v657);
                v654.delay_random = v658:slider(v536("shuffle", "Random", 1, 6), 0, 100, 0, nil, "%");
                v654.delay_timing = v658:slider(v536("clock", "Timing", 1, 6), 2, 22, 2, nil, "t");
                v654.delay_min_timing = v658:slider(v536("clock", "Min. Timing", 1, 6), 1, 22, 2, nil, "t");
                v654.delay_max_timing = v658:slider(v536("clock", "Max. Timing", 1, 6), 1, 22, 2, nil, "t");
                v654.delay_sliders = v658:slider(v536("shoe-prints", "Sliders", 0, 5), 2, 8, 2, nil);
                for v659 = 1, 8 do
                    v654["delay_" .. v659] = v658:slider(v536("stairs", string.format("Slider: %d", v659), 0, 6), 1, 22, 2, nil, "t");
                end;
                v654.delay_button = v658:button(v547("arrow-turn-down-right", "Delay", 46), nil, true);
                v654.back_button = v658:button(v547("arrow-turn-down-left", "Back", 47), nil, true);
                local v660 = nil;
                local function v664(v661)
                    -- upvalues: v654 (ref)
                    local v662 = tonumber(v661:get());
                    if v662 == nil then
                        return;
                    else
                        for v663 = 1, 8 do
                            v654["delay_" .. v663]:visibility(v663 <= v662);
                        end;
                        return;
                    end;
                end;
                do
                    local l_v658_0 = v658;
                    do
                        local l_v664_0 = v664;
                        local function v672(v667)
                            -- upvalues: v654 (ref), l_v664_0 (ref)
                            local v668 = v667 == "Default";
                            local v669 = v667 == "Random";
                            local v670 = v667 == "Custom";
                            v654.delay_random:visibility(not v669);
                            v654.delay_timing:visibility(v668);
                            v654.delay_min_timing:visibility(v669);
                            v654.delay_max_timing:visibility(v669);
                            v654.delay_sliders:visibility(v670);
                            if v670 then
                                v654.delay_sliders:set_callback(l_v664_0, true);
                            else
                                v654.delay_sliders:unset_callback(l_v664_0);
                            end;
                            if not v670 then
                                for v671 = 1, 8 do
                                    v654["delay_" .. v671]:visibility(false);
                                end;
                            end;
                        end;
                        local function v677(v673)
                            -- upvalues: v654 (ref)
                            local v674 = v673:get();
                            local v675 = v674 == "Wave";
                            local v676 = v674 == "Shake";
                            v654.yaw_frequency:visibility(v675);
                            v654.yaw_amplitude:visibility(v675);
                            v654.yaw_min:visibility(v676);
                            v654.yaw_max:visibility(v676);
                            v654.yaw_scale:visibility(v676);
                        end;
                        local function v679(v678)
                            -- upvalues: v654 (ref)
                            v654.yaw_left_random:visibility(v678:get());
                        end;
                        local function v681(v680)
                            -- upvalues: v654 (ref)
                            v654.yaw_right_random:visibility(v680:get());
                        end;
                        local function v683(v682)
                            -- upvalues: v672 (ref)
                            v672(v682:get());
                        end;
                        local function v687(v684)
                            -- upvalues: v654 (ref), v683 (ref)
                            local v685 = v684:get();
                            v654.delay_mode:visibility(v685);
                            if not v685 then
                                v654.delay_random:visibility(false);
                                v654.delay_timing:visibility(false);
                                v654.delay_min_timing:visibility(false);
                                v654.delay_max_timing:visibility(false);
                                v654.delay_sliders:visibility(false);
                                for v686 = 1, 8 do
                                    v654["delay_" .. v686]:visibility(false);
                                end;
                            end;
                            if v685 then
                                v654.delay_mode:set_callback(v683, true);
                            else
                                v654.delay_mode:unset_callback(v683);
                            end;
                        end;
                        local function v688()
                            -- upvalues: v654 (ref), v677 (ref), v679 (ref), v681 (ref), v687 (ref)
                            v654.yaw_method:visibility(false);
                            v654.yaw_method:unset_callback(v677);
                            v654.yaw_frequency:visibility(false);
                            v654.yaw_amplitude:visibility(false);
                            v654.yaw_min:visibility(false);
                            v654.yaw_max:visibility(false);
                            v654.yaw_scale:visibility(false);
                            v654.yaw_left:visibility(false);
                            v654.yaw_left_randomize:visibility(false);
                            v654.yaw_left_random:visibility(false);
                            v654.yaw_left_randomize:unset_callback(v679);
                            v654.yaw_right:visibility(false);
                            v654.yaw_right_randomize:visibility(false);
                            v654.yaw_right_random:visibility(false);
                            v654.yaw_right_randomize:unset_callback(v681);
                            v654.delay:visibility(true);
                            v654.delay:set_callback(v687, true);
                            v654.delay_button:visibility(false);
                            v654.back_button:visibility(true);
                        end;
                        local function v690()
                            -- upvalues: v654 (ref), v677 (ref), v679 (ref), v681 (ref), v687 (ref), v683 (ref), l_v664_0 (ref)
                            v654.yaw_method:visibility(true);
                            v654.yaw_method:set_callback(v677, true);
                            v654.yaw_left:visibility(true);
                            v654.yaw_left_randomize:visibility(true);
                            v654.yaw_left_randomize:set_callback(v679, true);
                            v654.yaw_right:visibility(true);
                            v654.yaw_right_randomize:visibility(true);
                            v654.yaw_right_randomize:set_callback(v681, true);
                            v654.delay:visibility(false);
                            v654.delay:unset_callback(v687);
                            v654.delay_mode:visibility(false);
                            v654.delay_mode:unset_callback(v683);
                            v654.delay_random:visibility(false);
                            v654.delay_timing:visibility(false);
                            v654.delay_min_timing:visibility(false);
                            v654.delay_max_timing:visibility(false);
                            v654.delay_sliders:visibility(false);
                            v654.delay_sliders:unset_callback(l_v664_0);
                            for v689 = 1, 8 do
                                v654["delay_" .. v689]:visibility(false);
                            end;
                            v654.delay_button:visibility(true);
                            v654.back_button:visibility(false);
                        end;
                        local function v692(v691)
                            -- upvalues: l_v658_0 (ref)
                            l_v658_0:visibility(v691:get() == "2-Way");
                        end;
                        v654.yaw:set_callback(v692, true);
                        v654.delay_button:set_callback(v688, true);
                        v654.back_button:set_callback(v690, true);
                    end;
                end;
                v654.yaw_modifier = v653:combo(v536("angle", "Modifier", 1, 6), v656);
                v658 = v654.yaw_modifier:create();
                v660 = nil;
                v660 = {
                    [1] = "Default", 
                    [2] = "Random", 
                    [3] = "Custom"
                };
                v654.modifier_switcher = v658:combo(v536("layer-plus", "Switcher", 1, 6), {
                    [1] = "Default", 
                    [2] = "Ticks", 
                    [3] = "Random"
                });
                v654.modifier_ticks_value = v658:slider("##SWITCHER_VALUE", 3, 16, 0, nil, "t");
                v654.modifier_random_value = v658:slider("##SWITCHER_VALUE", 4, 16, 0, nil, "t");
                v654.modifier_mode = v658:combo(v536("layer-group", "Mode", 1, 6), v660);
                v654.modifier_offset = v658:slider(v536("arrows-rotate", "Offset", 1, 6), -180, 180, 0, nil, "\194\176");
                v654.modifier_random = v658:slider(v536("shuffle", "Random", 1, 6), 0, 100, 0, nil, "%");
                v654.modifier_min_offset = v658:slider(v536("arrows-rotate", "Min. Offset", 1, 6), -180, 180, 0, nil, "\194\176");
                v654.modifier_max_offset = v658:slider(v536("arrows-rotate", "Max. Offset", 1, 6), -180, 180, 0, nil, "\194\176");
                v654.modifier_sliders = v658:slider(v536("shoe-prints", "Sliders", 0, 5), 2, 8, 2, nil);
                for v693 = 1, 8 do
                    v654["modifier_offset_" .. v693] = v658:slider(v536("stairs", string.format("Slider: %d", v693), 0, 6), -180, 180, 0, nil, "\194\176");
                end;
                v664 = nil;
                local function v697(v694)
                    -- upvalues: v654 (ref)
                    local v695 = tonumber(v694:get());
                    if v695 == nil then
                        return;
                    else
                        for v696 = 1, 8 do
                            v654["modifier_offset_" .. v696]:visibility(v696 <= v695);
                        end;
                        return;
                    end;
                end;
                local function v700(v698)
                    -- upvalues: v654 (ref)
                    local v699 = v698:get();
                    v654.modifier_ticks_value:visibility(v699 == "Ticks");
                    v654.modifier_random_value:visibility(v699 == "Random");
                end;
                do
                    local l_v697_0 = v697;
                    local function v708(v702)
                        -- upvalues: v654 (ref), l_v697_0 (ref)
                        local v703 = v702:get();
                        local v704 = v703 == "Default";
                        local v705 = v703 == "Random";
                        local v706 = v703 == "Custom";
                        v654.modifier_offset:visibility(v704);
                        v654.modifier_random:visibility(v704 or v706);
                        v654.modifier_min_offset:visibility(v705);
                        v654.modifier_max_offset:visibility(v705);
                        v654.modifier_sliders:visibility(v706);
                        if v706 then
                            v654.modifier_sliders:set_callback(l_v697_0, true);
                        else
                            v654.modifier_sliders:unset_callback(l_v697_0);
                        end;
                        if not v706 then
                            for v707 = 1, 8 do
                                v654["modifier_offset_" .. v707]:visibility(false);
                            end;
                        end;
                    end;
                    local function v714(v709)
                        -- upvalues: v654 (ref), v708 (ref), l_v697_0 (ref)
                        local v710 = v709:get() == "Frostbomber";
                        local v711 = not v710;
                        local l_v710_0 = v710;
                        v654.modifier_mode:visibility(v711);
                        if v711 then
                            v654.modifier_mode:set_callback(v708, true);
                        else
                            v654.modifier_mode:unset_callback(v708);
                        end;
                        if not v711 then
                            v654.modifier_offset:visibility(not l_v710_0);
                            v654.modifier_random:visibility(false);
                            v654.modifier_min_offset:visibility(l_v710_0);
                            v654.modifier_max_offset:visibility(l_v710_0);
                            v654.modifier_sliders:visibility(false);
                            v654.modifier_sliders:unset_callback(l_v697_0);
                            for v713 = 1, 8 do
                                v654["modifier_offset_" .. v713]:visibility(false);
                            end;
                        end;
                    end;
                    v654.modifier_switcher:set_callback(v700, true);
                    v654.yaw_modifier:set_callback(v714, true);
                end;
                v654.body_yaw = v653:switch(v536("person", "Body Yaw", 1, 6));
                v658 = v654.body_yaw:create();
                v654.body_yaw_jitter = v658:switch(v536("dice-d6", "Jitter", 1, 6));
                v654.body_yaw_type = v658:combo(v525("\226\164\183", "Type", 2, 6), {
                    [1] = "Default", 
                    [2] = "Ticks", 
                    [3] = "Random"
                });
                v654.body_yaw_ticks_value = v658:slider("##SWITCHER_VALUE", 3, 16, 0, nil, "t");
                v654.body_yaw_random_value = v658:slider("##SWITCHER_VALUE", 4, 16, 0, nil, "t");
                v654.body_yaw_invert_chance = v658:slider(v536("dice-d6", "Invert Chance", 1, 6), 1, 100, 100, nil, "%");
                v654.body_yaw_freestanding = v658:combo(v536("arrows-retweet", "Freestanding", 0, 4), {
                    [1] = "Off", 
                    [2] = "Default", 
                    [3] = "Reversed"
                });
                v654.body_yaw_limit_type = v658:combo(v525("\226\164\183", "Limit Type", 2, 6), {
                    [1] = "Default", 
                    [2] = "Random", 
                    [3] = "Ticks"
                });
                v654.body_yaw_timing = v658:slider(v536("clock", "Timing", 1, 6), 1, 22, 2, nil, "t");
                v654.body_yaw_limit_left_value = v658:slider(v525("\226\128\162", "Left Limit", 3, 8), 0, 60, 60, nil, "\194\176");
                v654.body_yaw_limit_right_value = v658:slider(v525("\226\128\162", "Right Limit", 3, 8), 0, 60, 60, nil, "\194\176");
                v654.body_yaw_limit_min_value = v658:slider(v525("\226\128\162", "Min. Limit", 3, 8), 0, 60, 60, nil, "\194\176");
                v654.body_yaw_limit_max_value = v658:slider(v525("\226\128\162", "Max. Limit", 3, 8), 0, 60, 60, nil, "\194\176");
                v654.body_yaw_other_button = v658:button(v547("arrow-turn-down-right", "Other", 45), nil, true);
                v654.body_yaw_back_button = v658:button(v547("arrow-turn-down-left", "Back", 47), nil, true);
                v660 = nil;
                v664 = function(v715)
                    -- upvalues: v654 (ref)
                    v654.body_yaw_ticks_value:visibility(v715:get() == "Ticks");
                    v654.body_yaw_random_value:visibility(v715:get() == "Random");
                end;
                v697 = function(v716)
                    -- upvalues: v654 (ref)
                    local v717 = v716:get();
                    local v718 = v717 == "Default";
                    local v719 = v717 == "Random";
                    local v720 = v717 == "Ticks";
                    v654.body_yaw_timing:visibility(v720);
                    v654.body_yaw_limit_left_value:visibility(v718);
                    v654.body_yaw_limit_right_value:visibility(v718);
                    v654.body_yaw_limit_min_value:visibility(v719 or v720);
                    v654.body_yaw_limit_max_value:visibility(v719 or v720);
                end;
                do
                    local l_v664_1, l_v697_1 = v664, v697;
                    v700 = function()
                        -- upvalues: v654 (ref), l_v664_1 (ref), l_v697_1 (ref)
                        v654.body_yaw_jitter:visibility(false);
                        v654.body_yaw_type:visibility(false);
                        v654.body_yaw_type:unset_callback(l_v664_1);
                        v654.body_yaw_ticks_value:visibility(false);
                        v654.body_yaw_random_value:visibility(false);
                        v654.body_yaw_invert_chance:visibility(true);
                        v654.body_yaw_freestanding:visibility(true);
                        v654.body_yaw_limit_type:visibility(true);
                        v654.body_yaw_limit_type:set_callback(l_v697_1, true);
                        v654.body_yaw_other_button:visibility(false);
                        v654.body_yaw_back_button:visibility(true);
                    end;
                    local function v723()
                        -- upvalues: v654 (ref), l_v664_1 (ref), l_v697_1 (ref)
                        v654.body_yaw_jitter:visibility(true);
                        v654.body_yaw_type:visibility(true);
                        v654.body_yaw_type:set_callback(l_v664_1, true);
                        v654.body_yaw_invert_chance:visibility(false);
                        v654.body_yaw_freestanding:visibility(false);
                        v654.body_yaw_limit_type:visibility(false);
                        v654.body_yaw_limit_type:unset_callback(l_v697_1);
                        v654.body_yaw_timing:visibility(false);
                        v654.body_yaw_limit_left_value:visibility(false);
                        v654.body_yaw_limit_right_value:visibility(false);
                        v654.body_yaw_limit_min_value:visibility(false);
                        v654.body_yaw_limit_max_value:visibility(false);
                        v654.body_yaw_other_button:visibility(true);
                        v654.body_yaw_back_button:visibility(false);
                    end;
                    v654.body_yaw_type:set_callback(l_v664_1, true);
                    v654.body_yaw_other_button:set_callback(v700, true);
                    v654.body_yaw_back_button:set_callback(v723, true);
                end;
                return v654;
            end;
            local function v785(v724, v725)
                -- upvalues: v536 (ref), v525 (ref), v150 (ref), v564 (ref)
                local v726 = {
                    [1] = "Off", 
                    [2] = "Static", 
                    [3] = "Jitter", 
                    [4] = "Spin", 
                    [5] = "Random", 
                    [6] = "Static Random"
                };
                local v727 = {
                    [1] = "Off", 
                    [2] = "Static", 
                    [3] = "Spin", 
                    [4] = "Random", 
                    [5] = "Left/Right", 
                    [6] = "Static Random"
                };
                local v728 = {
                    [1] = "Off", 
                    [2] = "Offset", 
                    [3] = "Center", 
                    [4] = "Skitter"
                };
                v725.force_defensive = v724:switch(v536("timer", "Tickbase", 1, 7));
                local v729 = v725.force_defensive:create();
                local v730 = nil;
                v730 = {
                    [1] = "Default", 
                    [2] = "Random", 
                    [3] = "Custom"
                };
                v725.custom_defensive_ticks = v729:switch(v536("timer", "Custom Defensive Ticks", 0, 7));
                v725.defensive_ticks_mode = v729:combo(v525("\226\128\162", "Mode", 1, 6), v730);
                v725.defensive_ticks = v729:slider(v536("arrow-turn-down-right", "Ticks", 10, 7), 2, 22, 15, nil, "t");
                v725.min_defensive_ticks = v729:slider(v536("arrow-turn-down-right", "Min. Ticks", 10, 7), 2, 22, 15, nil, "t");
                v725.max_defensive_ticks = v729:slider(v536("arrow-turn-down-right", "Max. Ticks", 10, 7), 2, 22, 15, nil, "t");
                v725.defensive_ticks_sliders = v729:slider(v536("shoe-prints", "Sliders", 0, 5), 2, 8, 2, nil);
                for v731 = 1, 8 do
                    v725["defensive_ticks_" .. v731] = v729:slider(v536("stairs", string.format("Slider: %d", v731), 0, 6), 2, 22, 15, nil, "t");
                end;
                v150.push(-1, v725.custom_defensive_ticks);
                local v732 = nil;
                local function v736(v733)
                    -- upvalues: v725 (ref)
                    local v734 = tonumber(v733:get());
                    if v734 == nil then
                        return;
                    else
                        for v735 = 1, 8 do
                            v725["defensive_ticks_" .. v735]:visibility(v735 <= v734);
                        end;
                        return;
                    end;
                end;
                do
                    local l_v736_0 = v736;
                    local function v744(v738)
                        -- upvalues: v725 (ref), l_v736_0 (ref)
                        local v739 = v738:get();
                        local v740 = v739 == "Default";
                        local v741 = v739 == "Random";
                        local v742 = v739 == "Custom";
                        v725.defensive_ticks:visibility(v740);
                        v725.min_defensive_ticks:visibility(v741);
                        v725.max_defensive_ticks:visibility(v741);
                        v725.defensive_ticks_sliders:visibility(v742);
                        if v742 then
                            v725.defensive_ticks_sliders:set_callback(l_v736_0, true);
                        else
                            v725.defensive_ticks_sliders:unset_callback(l_v736_0);
                        end;
                        if not v742 then
                            for v743 = 1, 8 do
                                v725["defensive_ticks_" .. v743]:visibility(false);
                            end;
                        end;
                    end;
                    local function v748(v745)
                        -- upvalues: v725 (ref), v744 (ref), l_v736_0 (ref)
                        local v746 = v745:get();
                        if not v746 then
                            v725.defensive_ticks:visibility(false);
                            v725.min_defensive_ticks:visibility(false);
                            v725.max_defensive_ticks:visibility(false);
                            v725.defensive_ticks_sliders:visibility(false);
                            for v747 = 1, 8 do
                                v725["defensive_ticks_" .. v747]:visibility(false);
                            end;
                            v725.defensive_ticks_mode:unset_callback(v744);
                            v725.defensive_ticks_sliders:unset_callback(l_v736_0);
                        end;
                        if v746 then
                            v725.defensive_ticks_mode:set_callback(v744, true);
                        end;
                        v725.defensive_ticks_mode:visibility(v746);
                    end;
                    v725.custom_defensive_ticks:set_callback(v748, true);
                end;
                v725.enabled = v724:switch(v536("circle-bolt", "Defensive AA", 1, 7));
                v725.exploits = v725.enabled:create():selectable(v536("bolt", "Exploits", 1, 7), {
                    [1] = "Double Tap", 
                    [2] = "Hide Shots"
                });
                v725.pitch = v724:combo(v536("compass-drafting", "Pitch", 1, 7), v726);
                v730 = v725.pitch:create();
                v725.pitch_offset = v730:slider(v536("arrows-rotate", "Offset", 1, 5), -89, 89, 0, nil, "\194\176");
                v725.pitch_offset_1 = v730:slider(v536("arrow-left", "Angle from", 1, 7), -89, 89, 0, nil, "\194\176");
                v725.pitch_offset_2 = v730:slider(v536("arrow-right", "Angle to", 1, 7), -89, 89, 0, nil, "\194\176");
                v725.pitch_speed = v730:slider(v536("gauge-simple-high", "Speed", 1, 6), -50, 50, 20, 0.1);
                v725.yaw = v724:combo(v536("ruler-triangle", "Yaw", 1, 6), v727);
                v730 = v725.yaw:create();
                v725.yaw_offset = v730:slider(v536("arrows-rotate", "Offset", 1, 5), -180, 180, 0, nil, "\194\176");
                v725.yaw_offset_360 = v730:slider(v536("arrows-rotate", "Offset", 1, 5), 0, 360, 0, nil, "\194\176");
                v725.yaw_left = v730:slider(v536("arrow-left", "Yaw Left", 1, 7), -180, 180, 0, nil, "\194\176");
                v725.yaw_right = v730:slider(v536("arrow-right", "Yaw Right", 1, 7), -180, 180, 0, nil, "\194\176");
                v725.yaw_speed = v730:slider(v536("gauge-simple-high", "Speed", 1, 6), -50, 50, 20, 0.1);
                v725.yaw_modifier = v724:combo(v536("angle", "Modifier", 1, 7), v728);
                v725.modifier_offset = v725.yaw_modifier:create():slider(v536("arrows-rotate", "Offset", 1, 5), -180, 180, 0, nil, "\194\176");
                v725.delay = v724:switch(v536("angle-right", "Delay", 2, 5));
                v730 = v725.delay:create();
                v732 = nil;
                v732 = {
                    [1] = "Default", 
                    [2] = "Random", 
                    [3] = "Custom"
                };
                v725.delay_mode = v730:combo(v536("layer-group", "Mode", 1, 7), v732);
                v725.delay_timing = v730:slider(v536("clock", "Timing", 1, 7), 2, 22, 2, nil, "t");
                v725.delay_min_timing = v730:slider(v536("clock", "Min. Timing", 1, 7), 1, 22, 2, nil, "t");
                v725.delay_max_timing = v730:slider(v536("clock", "Max. Timing", 1, 7), 1, 22, 2, nil, "t");
                v725.delay_sliders = v730:slider(v536("shoe-prints", "Sliders", 0, 5), 2, 8, 2, nil);
                for v749 = 1, 8 do
                    v725["delay_" .. v749] = v730:slider(v536("stairs", string.format("Slider: %d", v749), 0, 6), 1, 22, 2, nil, "t");
                end;
                v736 = nil;
                local function v753(v750)
                    -- upvalues: v725 (ref)
                    local v751 = tonumber(v750:get());
                    if v751 == nil then
                        return;
                    else
                        for v752 = 1, 8 do
                            v725["delay_" .. v752]:visibility(v752 <= v751);
                        end;
                        return;
                    end;
                end;
                do
                    local l_v753_0 = v753;
                    local function v761(v755)
                        -- upvalues: v725 (ref), l_v753_0 (ref)
                        local v756 = v755:get();
                        local v757 = v756 == "Default";
                        local v758 = v756 == "Random";
                        local v759 = v756 == "Custom";
                        v725.delay_timing:visibility(v757);
                        v725.delay_min_timing:visibility(v758);
                        v725.delay_max_timing:visibility(v758);
                        v725.delay_sliders:visibility(v759);
                        if v759 then
                            v725.delay_sliders:set_callback(l_v753_0, true);
                        else
                            v725.delay_sliders:unset_callback(l_v753_0);
                        end;
                        if not v759 then
                            for v760 = 1, 8 do
                                v725["delay_" .. v760]:visibility(false);
                            end;
                        end;
                    end;
                    v725.delay_mode:set_callback(v761, true);
                end;
                v564(v725.exploits);
                v730 = nil;
                v732 = function(v762)
                    -- upvalues: v725 (ref)
                    local v763 = v762:get();
                    local v764 = v763 == "Static";
                    local v765 = v763 == "Jitter";
                    local v766 = v763 == "Random";
                    local v767 = v763 == "Spin";
                    local v768 = v763 == "Static Random";
                    v725.pitch_offset:visibility(v764);
                    v725.pitch_offset_1:visibility(v765 or v766 or v767 or v768);
                    v725.pitch_offset_2:visibility(v765 or v766 or v767 or v768);
                    v725.pitch_speed:visibility(v767);
                end;
                v736 = function(v769)
                    -- upvalues: v725 (ref)
                    local v770 = v769:get() ~= "Off";
                    v725.modifier_offset:visibility(v770);
                    v725.delay:visibility(v770);
                end;
                do
                    local l_v732_0, l_v736_1, l_v753_1 = v732, v736, v753;
                    l_v753_1 = function(v774)
                        -- upvalues: v725 (ref), l_v736_1 (ref)
                        local v775 = v774:get();
                        local v776 = v775 == "Off";
                        local v777 = v775 == "Static";
                        local v778 = v775 == "Random";
                        local v779 = v775 == "Spin";
                        local v780 = v775 == "Left/Right";
                        local v781 = v775 == "Static Random";
                        v725.yaw_left:visibility(v780 or v781);
                        v725.yaw_right:visibility(v780 or v781);
                        v725.yaw_offset:visibility(v777);
                        v725.yaw_offset_360:visibility(v779 or v778);
                        v725.yaw_speed:visibility(v779);
                        v725.yaw_modifier:visibility(not v776);
                        if not v776 then
                            v725.yaw_modifier:set_callback(l_v736_1, true);
                        else
                            v725.yaw_modifier:unset_callback(l_v736_1);
                        end;
                        if v776 then
                            v725.modifier_offset:visibility(false);
                            v725.delay:visibility(false);
                        end;
                    end;
                    local function v784(v782)
                        -- upvalues: v725 (ref), l_v732_0 (ref), l_v753_1 (ref), l_v736_1 (ref)
                        local v783 = v782:get();
                        if not v783 then
                            v725.pitch_offset_1:visibility(false);
                            v725.pitch_offset_2:visibility(false);
                            v725.pitch_speed:visibility(false);
                            v725.yaw_left:visibility(false);
                            v725.yaw_right:visibility(false);
                            v725.yaw_offset:visibility(false);
                            v725.yaw_speed:visibility(false);
                            v725.yaw_modifier:visibility(false);
                            v725.modifier_offset:visibility(false);
                            v725.delay:visibility(false);
                        end;
                        if v783 then
                            v725.pitch:set_callback(l_v732_0, true);
                            v725.yaw:set_callback(l_v753_1, true);
                        else
                            v725.pitch:unset_callback(l_v732_0);
                            v725.yaw:unset_callback(l_v753_1);
                            v725.yaw_modifier:unset_callback(l_v736_1);
                        end;
                        v725.pitch:visibility(v783);
                        v725.yaw:visibility(v783);
                    end;
                    v725.enabled:set_callback(v784, true);
                end;
                return v725;
            end;
            local function v795(v786, v787)
                -- upvalues: v536 (ref)
                v787.enabled = v786:switch(v536("share-all", "Defensive Flick", 1, 6));
                local v788 = v787.enabled:create();
                v787.speed_mode = v788:combo(v536("gauge-simple-high", "Speed", 1, 5), {
                    [1] = "Default", 
                    [2] = "Random"
                });
                v787.speed_default = v788:slider("##DEFAULT", 2, 10, 7);
                v787.speed_min = v788:slider(v536("clock", "Min. Speed", 1, 5), 2, 10, 7);
                v787.speed_max = v788:slider(v536("clock", "Max. Speed", 1, 5), 2, 10, 7);
                v787.pitch = v788:slider(v536("ruler-triangle", "Pitch", 1, 5), -89, 89, 0, nil, "\194\176");
                v787.yaw = v788:slider(v536("angle", "Yaw", 1, 5), -180, 180, 90, nil, "\194\176");
                v787.limit = v788:slider(v536("angle-right", "Limit", 1, 6), 0, 60, 60, nil, "\194\176");
                v787.inverter = v788:switch(v536("toggle-on", "Inverter", 1, 5));
                v787.jitter = v788:switch(v536("sliders-simple", "Jitter", 1, 6));
                local _ = nil;
                local function v794(v790)
                    -- upvalues: v787 (ref)
                    local v791 = v790:get();
                    local v792 = v791 == "Default";
                    local v793 = v791 == "Random";
                    v787.speed_default:visibility(v792);
                    v787.speed_min:visibility(v793);
                    v787.speed_max:visibility(v793);
                end;
                v787.speed_mode:set_callback(v794, true);
                return v787;
            end;
            local function v800(v796, v797)
                -- upvalues: v536 (ref)
                v797.enabled = v796:switch(v536("dice-d6", "Anti Bruteforce", 2, 7));
                local v798 = v797.enabled:create();
                v797.refresh_modifier = v798:combo(v536("arrows-spin", "Modifier", 2, 7), {
                    [1] = "Off", 
                    [2] = "Meta", 
                    [3] = "Increase", 
                    [4] = "Decrease"
                });
                v797.refresh_offset = v798:switch(v536("arrows-repeat", "Offset", 2, 7));
                v797.enforce_delay = v798:switch(v536("right-left", "Change Delay", 2, 7));
                v797.duration = v798:slider(v536("clock", "Duration", 2, 7), 9, 200, 9, 0.1, function(v799)
                    return v799 == 9 and "Inf." or v799 * 0.1 .. "s";
                end);
                return v797;
            end;
            for v801 = 1, #v149.teams do
                local v802 = v149.teams[v801];
                local v803 = {};
                l_v592_0[v802] = v803;
                l_v593_0[v802] = {};
                v803.state = l_l_state_0_0:combo(v536("person-walking-arrow-loop-left", "State", 0, 5), l_v594_0);
                do
                    local l_v802_0 = v802;
                    for v805 = 1, #l_v594_0 do
                        local v806 = l_v594_0[v805];
                        local v807 = string.format("##ROOT_%s_%s", l_v802_0, v806);
                        local v808 = string.format("##ANGLES_%s_%s", l_v802_0, v806);
                        local v809 = string.format("##DEFENSIVE_%s_%s", l_v802_0, v806);
                        local v810 = string.format("##ANTIBRUTE_%s_%s", l_v802_0, v806);
                        local v811 = v47.create(v506, v807, v152);
                        local v812 = v47.create(v506, v808, v152);
                        local v813 = v47.create(v506, v809, v152);
                        local v814 = v47.create(v506, v810, v152);
                        do
                            local l_v806_0 = v806;
                            local function v820(v816)
                                -- upvalues: l_v802_0 (ref), l_v806_0 (ref)
                                local v817 = string.format("##%s_%s", l_v802_0, l_v806_0);
                                local _, v819 = string.find(v816[2], "##");
                                if v819 ~= nil then
                                    v817 = v817 .. string.sub(v816[2], v819 + 1);
                                end;
                                v816[2] = v816[2] .. v817;
                            end;
                            local v821 = {};
                            l_l_state_0_0:set_callback(v820);
                            v811:set_callback(v820);
                            v812:set_callback(v820);
                            v813:set_callback(v820);
                            v814:set_callback(v820);
                            if l_v806_0 ~= "Default" then
                                l_l_state_0_0:set_flag(v47.group_flags.callbacks, false);
                                v821.enabled = l_l_state_0_0:switch(string.format(v536("arrow-turn-down-right", "Override %s", 0, 6), l_v806_0:lower()));
                                l_l_state_0_0:set_flag(v47.group_flags.callbacks, true);
                                v821.enabled:set_callback(v621);
                            end;
                            if l_v806_0 ~= "On Peek" then
                                v821.angles = v648(v812, {});
                            end;
                            v821.defensive = v785(v813, {});
                            if l_v806_0 ~= "On Peek" and l_v806_0 ~= "Freestanding" then
                                v821.flick = v795(v813, {});
                                v821.antibrute = v800(v814, {});
                            end;
                            l_l_state_0_0:unset_callback(v820);
                            v811:unset_callback(v820);
                            v812:unset_callback(v820);
                            v813:unset_callback(v820);
                            v814:unset_callback(v820);
                            l_v592_0[l_v802_0][l_v806_0] = v821;
                            l_v593_0[l_v802_0][l_v806_0] = {
                                root = v811, 
                                angles = v812, 
                                defensive = v813, 
                                antibrute = v814
                            };
                            v50.add(v807, v811, "AA");
                            v50.add(v808, v812, "AA");
                            v50.add(v809, v813, "AA");
                            v50.add(v810, v814, "AA");
                        end;
                    end;
                    local _ = nil;
                    local function v825(v823)
                        -- upvalues: l_v592_0 (ref), l_v802_0 (ref), v621 (ref)
                        if (l_v592_0.team:get() == 1 and "T" or "CT") ~= l_v802_0 then
                            return;
                        else
                            local v824 = l_v592_0[l_v802_0 == "CT" and "T" or "CT"];
                            if v824 ~= nil then
                                v824.state:set(v823:get());
                            end;
                            v621();
                            return;
                        end;
                    end;
                    v803.state:set_callback(v825);
                end;
            end;
            local _ = nil;
            local function v834()
                -- upvalues: l_v592_0 (ref), v610 (ref), v603 (ref), v48 (ref)
                local v827 = l_v592_0.team:get() == 1 and "T" or "CT";
                local v828 = v827 == "CT" and "T" or "CT";
                local v829 = l_v592_0[v827];
                local v830 = l_v592_0[v828];
                if v829 == nil or v830 == nil then
                    return;
                else
                    local v831 = v829.state:get();
                    local v832 = v829[v831];
                    local v833 = v830[v831];
                    if v832 == nil or v833 == nil then
                        return;
                    else
                        if v832.enabled ~= nil and v833.enabled ~= nil then
                            v833.enabled:set(v832.enabled:get());
                        end;
                        v610(v833.angles, v603(v832.angles));
                        v610(v833.defensive, v603(v832.defensive));
                        if v832.flick ~= nil and v833.flick ~= nil then
                            v610(v833.flick, v603(v832.flick));
                        end;
                        if v832.antibrute ~= nil and v833.antibrute ~= nil then
                            v610(v833.antibrute, v603(v832.antibrute));
                        end;
                        v48.success(string.format("Settings sent to %s team", v828));
                        return;
                    end;
                end;
            end;
            l_l_send_0_0:button(v547("arrow-up-right-from-square", "Send To Another Team", 25), v834, true);
            v834 = nil;
            l_v592_0.team:set_callback(v621);
            l_v591_0.list:set_callback(v621);
            v621();
            l_player_stats_0.builder = l_v592_0;
        end;
        v593 = {
            avoid_backstab = {
                enabled = l_l_settings_extra_0_0:switch(v536("sword", "Avoid Backstab", 1, 6), true)
            }
        };
        local v835 = {
            select = l_l_settings_extra_0_0:combo(v536("arrows-repeat", "Manual Yaw", 1, 6), {
                [1] = "Off", 
                [2] = "Left", 
                [3] = "Right", 
                [4] = "Backward", 
                [5] = "Forward"
            })
        };
        local v836 = v835.select:create();
        v835.disable_yaw_modifiers = v836:switch(v536("xmark", "Disable Yaw Modifiers", 1, 4));
        v835.body_freestanding = v836:switch(v536("lock", "Body Freestanding", 1, 4));
        v593.manual_yaw = v835;
        v836 = {
            enabled = l_l_settings_extra_0_0:switch(v536("arrows-turn-to-dots", "Freestanding", 1, 7))
        };
        local v837 = v836.enabled:create();
        v836.disablers = v837:selectable(v536("power-off", "Disablers", 1, 5), {
            [1] = "Standing", 
            [2] = "Running", 
            [3] = "Slowwalking", 
            [4] = "Ducking", 
            [5] = "In Air", 
            [6] = "In Air & Duck"
        });
        v836.disable_yaw_modifiers = v837:switch(v536("xmark", "Disable Yaw Modifiers", 2, 4));
        v836.body_freestanding = v837:switch(v536("lock", "Body Freestanding", 2, 4));
        v593.freestanding = v836;
        v837 = {
            enabled = l_l_settings_extra_0_0:switch(v536("ruler", "Edge Stop", 1, 6))
        };
        v837.only_on_fake_duck = v837.enabled:create():switch(v536("person-seat", "Only on Fake Duck", 1, 6));
        v593.edge_yaw = v837;
        local v838 = {
            enabled = l_l_settings_extra_0_0:switch(v536("power-off", "Disablers", 1, 6))
        };
        v838.select = v838.enabled:create():listable("##SELECT", {
            [1] = "Warmup", 
            [2] = "No Enemies"
        });
        v564(v838.select);
        v593.disablers = v838;
        local v839 = {
            enabled = l_l_settings_extra_0_0:switch(v536("wind", "Air Lag", 1, 6))
        };
        v839.ticks = v839.enabled:create():slider(v536("clock", "Ticks", 1, 7), 1, 8, 4, nil, "t");
        v593.air_lag = v839;
        local v840 = {
            enabled = l_l_settings_0_0:switch(v536("wand-magic-sparkles", "Animations", 1, 6))
        };
        local v841 = v840.enabled:create();
        v840.air_legs = v841:combo(v536("person-ski-lift", "Air Legs", 1, 6), {
            [1] = "Off", 
            [2] = "Static", 
            [3] = "Walking"
        });
        v840.ground_legs = v841:combo(v536("person-walking", "Ground Legs", 2, 8), {
            [1] = "Off", 
            [2] = "Static", 
            [3] = "Jitter", 
            [4] = "Walking", 
            [5] = "Earthquake"
        });
        v840.legs_offset_1 = v841:slider(v536("arrows-up-down-left-right", "Offset 1", 1, 7), 0, 100, 100, nil, function(v842)
            return v842 == 0 and "Off" or v842 * 0.01 .. "x";
        end);
        v840.legs_offset_2 = v841:slider(v536("arrows-up-down-left-right", "Offset 2", 1, 7), 0, 100, 100, nil, function(v843)
            return v843 == 0 and "Off" or v843 * 0.01 .. "x";
        end);
        v840.body_lean = v841:slider(v536("lines-leaning", "Body Lean", 1, 9), -1, 100, -1, nil, function(v844)
            return v844 == -1 and "Off" or v844 * 0.01 .. "x";
        end);
        v840.pitch_on_land = v841:switch(v536("person-arrow-down-to-line", "Pitch on Land", 0, 7), true);
        local v845 = nil;
        do
            local l_v840_0, l_v841_0 = v840, v841;
            local function v850(v848)
                -- upvalues: l_v840_0 (ref)
                local v849 = v848:get();
                l_v840_0.legs_offset_1:visibility(v849 == "Jitter");
                l_v840_0.legs_offset_2:visibility(v849 == "Jitter");
            end;
            l_v840_0.ground_legs:set_callback(v850, true);
            v593.animations = l_v840_0;
            l_v841_0 = {
                enabled = l_l_settings_0_0:switch(v536("stethoscope", "Safe Head", 1, 6))
            };
            v845 = l_v841_0.enabled:create();
            l_v841_0.select = v845:selectable(v536("head-side", "Conditions", 1, 6), {
                [1] = "Air Crouch Knife", 
                [2] = "Air Crouch Taser", 
                [3] = "Height Advantage", 
                [4] = "Crouch"
            });
            l_v841_0.target_height = v845:slider(v536("line-height", "Height", 1, 6), 0, 200, 0, nil, "u");
            l_v841_0.e_spam_while_safe_head = v845:switch(v536("hand", "E Spam While Safe Head", 1, 7));
            v850 = nil;
            local function v853(v851)
                -- upvalues: l_v841_0 (ref)
                local v852 = v851:get("Air Crouch Knife") or v851:get("Air Crouch Taser");
                l_v841_0.target_height:visibility(v852);
            end;
            l_v841_0.select:set_callback(v853, true);
            v564(l_v841_0.select);
            v593.safe_head = l_v841_0;
            v845 = {
                enabled = l_l_settings_0_0:switch(v536("share", "Auto Teleport", 1, 6))
            };
            v850 = v845.enabled:create();
            v845.allow_on_cross = v850:switch(v536("person-running", "Allow on Cross", 2, 7));
            v845.weapons = v850:listable(v536("gun", "Weapons", 1, 6), {
                [1] = "Awp", 
                [2] = "Scout", 
                [3] = "Taser", 
                [4] = "Knife"
            });
            v593.auto_teleport = v845;
            l_player_stats_0.settings = v593;
        end;
        v151.antiaim = l_player_stats_0;
    end;
    l_selector_0 = nil;
    l_selector_0 = v565.features.category:list("##CATEGORY", {
        v536("crosshairs", "Ragebot", 2, 7), 
        v536("paintbrush", "Visuals", 1, 7), 
        v536("bars-sort", "Misc", 1, 9)
    });
    l_state_0 = nil;
    l_selector_0:set_callback(function(v854)
        -- upvalues: v565 (ref)
        local v855 = v854:get();
        local v856 = v855 == 1;
        local v857 = v855 == 2;
        local v858 = v855 == 3;
        v565.features.extra:visibility(v856);
        v565.features.ragebot:visibility(v856);
        v565.features.visuals:visibility(v857);
        v565.features.render:visibility(v857);
        v565.features.misc:visibility(v858);
        v565.features.movement:visibility(v858);
    end, true);
    v151.category = l_selector_0;
    l_state_0 = {};
    l_send_0 = v565.features.ragebot;
    l_settings_0 = v565.features.extra;
    v50.add("##RAGEBOT", l_send_0, "AA");
    v50.add("##EXTRA", l_settings_0, "AA");
    l_settings_extra_0 = {
        enabled = l_send_0:switch(v536("star", "Ai Peek", 0, 5))
    };
    l_builder_0 = l_settings_extra_0.enabled:create();
    l_settings_extra_0.simulation = l_builder_0:slider(v536("clock", "Simulation", 1, 7), 25, 35, 28, 0.01, "s");
    l_settings_extra_0.rate_limit = l_builder_0:slider(v536("wave-pulse", "Rate Limit", 0, 6), 0, 30, 2, 0.01, "s");
    l_settings_extra_0.hit_chance = l_builder_0:slider(v536("dice", "Hit Chance", 0, 6), 0, 100, 35, nil, function(v859)
        return v859 == 0 and "Def." or v859 .. "%";
    end);
    l_settings_extra_0.unsafety = l_builder_0:switch(v536("shield-slash", "Unsafety", 0, 6));
    l_settings_extra_0.dev_mode = l_builder_0:switch(v536("code", "Dev Mode", 0, 6));
    l_settings_extra_0.range = l_builder_0:slider(v536("forward", "Range", 1, 7), 15, 25, 20, nil, "t");
    l_settings_extra_0.retreat = l_builder_0:slider(v536("backward", "Retreat", 1, 7), 15, 30, 25, nil, "u");
    l_settings_extra_0.weapons = l_builder_0:selectable(v536("gun", "Weapons", 1, 6), {
        [1] = "SSG-08", 
        [2] = "Pistols", 
        [3] = "Deagle"
    });
    l_settings_extra_0.hitboxes = l_builder_0:selectable(v536("bullseye", "Hitboxes", 1, 7), {
        [1] = "Head", 
        [2] = "Chest", 
        [3] = "Stomach", 
        [4] = "Arms", 
        [5] = "Legs"
    });
    l_settings_extra_0.color = l_builder_0:color_picker(v536("palette", "Color", 1, 7), color(200, 0, 0, 255));
    v564(l_settings_extra_0.weapons);
    v564(l_settings_extra_0.hitboxes);
    l_settings_extra_0.enabled:tooltip("\a{Link Active}\226\128\162\aDEFAULT  Automatically peek at the opponent to hit him when possible");
    l_settings_extra_0.simulation:tooltip("\194\183 Duration of the Peek, adjust it, if \a{Link Active}\"Smart Peek\"\aDEFAULT fails with timings.");
    l_settings_extra_0.rate_limit:tooltip("\194\183 Delay between hitscan, can be increased if you have poor performance.");
    l_settings_extra_0.hit_chance:tooltip("\194\183 Overrides ragebot hitchance, while peeking.");
    l_settings_extra_0.unsafety:tooltip("\194\183 Disables \a{Link Active}\"Force Body\"\aDEFAULT, " .. "\a{Link Active}\"Safe Points'\aDEFAULT, " .. "\a{Link Active}\"Ensure Hitbox Safety\"\aDEFAULT " .. "and Sets \a{Link Active}\"Point Scale\"\aDEFAULT to 100");
    v591 = nil;
    do
        local l_l_settings_extra_0_1, l_v591_1, l_v592_1, l_v593_1, l_v594_1 = l_settings_extra_0, v591, v592, v593, v594;
        l_v592_1 = function(v865)
            -- upvalues: l_l_settings_extra_0_1 (ref)
            local v866 = v865:get();
            l_l_settings_extra_0_1.range:visibility(v866);
            l_l_settings_extra_0_1.retreat:visibility(v866);
        end;
        l_l_settings_extra_0_1.dev_mode:set_callback(l_v592_1, true);
        l_state_0.smart_peek = l_l_settings_extra_0_1;
        l_builder_0 = {
            enabled = l_send_0:switch(v536("transporter-1", "Dormant Aimbot", 1, 6))
        };
        l_v591_1 = l_builder_0.enabled:create();
        l_builder_0.hitboxes = l_v591_1:listable(v536("bullseye", "Hitboxes", 1, 7), {
            [1] = "Head", 
            [2] = "Chest", 
            [3] = "Stomach", 
            [4] = "Legs"
        });
        l_builder_0.alpha_modifier = l_v591_1:slider(v536("eye", "Alpha Modifier", 1, 6), 1, 100, 70, nil, "%");
        l_builder_0.minimum_damage = l_v591_1:slider(v536("arrow-down-9-1", "Min. Damage", 1, 6), 0, 130, 0, nil, function(v867)
            if v867 == 0 then
                return "Def.";
            elseif v867 > 100 then
                return "+" .. v867 - 100;
            else
                return;
            end;
        end);
        v564(l_builder_0.hitboxes);
        v150.push(-1, l_builder_0.enabled);
        l_state_0.dormant_aimbot = l_builder_0;
        l_v591_1 = {
            enabled = l_send_0:switch(v536("calendar-lines-pen", "Aimbot Logs", 1, 6))
        };
        l_v592_1 = l_v591_1.enabled:create();
        l_v591_1.default_colors = l_v592_1:color_picker(v536("palette", "Colors##DEFAULT", 1, 7), {
            Hit = {
                color(127, 180, 95, 255)
            }, 
            Miss = {
                color(132, 163, 209, 255)
            }
        });
        l_v591_1.output = l_v592_1:selectable(v536("screencast", "Output", 1, 7), {
            [1] = "Console", 
            [2] = "Events", 
            [3] = "Render"
        });
        l_v591_1.custom_prefix = l_v592_1:input(v536("fingerprint", "Prefix", 1, 8), "");
        l_v591_1.print_commands = l_v592_1:button(v547("code", "Print Commands", 27), function()
            -- upvalues: v48 (ref)
            v48.log("Ragebot logs commands:\n");
            v48.log("pr= \226\128\148 Replace prefix with custom 'word'");
            v48.log("hit= \226\128\148 Replace hit with custom 'word'");
            v48.log("prbr=() \226\128\148 Set round brackets for prefix");
            v48.log("backtrack= \226\128\148 Replace backtrack with custom 'word'");
            v48.log("hitchance= \226\128\148 Replace hitchance with custom 'word'");
            v48.log("limiter= \226\128\148 Replace limiter with custom character");
            v48.log("rc \226\128\148 Remove color");
            v48.log("rprc \226\128\148 Remove prefix color");
            v48.log("rp \226\128\148 Remove prefix");
            v48.log("rb \226\128\148 Remove brackets");
            v48.log("rpb \226\128\148 Remove prefix brackets");
            v48.log("rm \226\128\148 Remove mismatch");
            v48.log("rch \226\128\148 Remove hitchance color");
            v48.log("rhc \226\128\148 Remove hitchance");
            v48.log("rbt \226\128\148 Remove backtrack");
            v48.log("btms \226\128\148 Show backtrack in milliseconds");
            v48.log("sps \226\128\148 Separate spread in individual brackets");
            v48.log("spr \226\128\148 Always show spread (events)\n");
            v48.log("Example: pr=\"Frost\" rc");
        end, true);
        l_v591_1.offset_y = l_v592_1:slider(v536("arrows-up-down-left-right", "Offset", 1, 7), 0, 100, 80, nil, "%");
        l_v591_1.customize = l_v592_1:switch(v536("gear", "Customize", 1, 7));
        l_v591_1.radius = l_v592_1:combo(v536("circle", "Radius", 1, 7), {
            [1] = "Smooth", 
            [2] = "Semi-circle"
        });
        l_v591_1.padding = l_v592_1:slider(v536("ruler", "Padding", 1, 7), 4, 10, 6, nil, "px");
        l_v591_1.render_colors = l_v592_1:color_picker(v536("palette", "Colors##RENDER", 1, 7), {
            Hit = {
                color(168, 201, 228, 255)
            }, 
            Miss = {
                color(227, 168, 168, 255)
            }
        });
        l_v593_1 = nil;
        l_v594_1 = function(v868)
            -- upvalues: l_v591_1 (ref)
            local v869 = v868:get();
            l_v591_1.radius:visibility(v869);
            l_v591_1.padding:visibility(v869);
            l_v591_1.render_colors:visibility(v869);
        end;
        do
            local l_l_v594_1_0 = l_v594_1;
            local function v875(v871)
                -- upvalues: l_v591_1 (ref), l_l_v594_1_0 (ref)
                local v872 = v871:get("Console");
                local v873 = v871:get("Events");
                local v874 = v871:get("Render");
                l_v591_1.offset_y:visibility(v874);
                l_v591_1.customize:visibility(v874);
                l_v591_1.custom_prefix:visibility(v872 or v873);
                if v874 then
                    l_v591_1.customize:set_callback(l_l_v594_1_0, true);
                else
                    l_v591_1.customize:unset_callback(l_l_v594_1_0);
                end;
                if not v874 or not l_v591_1.customize:get() then
                    l_v591_1.radius:visibility(false);
                    l_v591_1.padding:visibility(false);
                    l_v591_1.render_colors:visibility(false);
                end;
            end;
            utils.execute_after(0, function()
                -- upvalues: l_v591_1 (ref), v875 (ref)
                l_v591_1.output:set_callback(v875, true);
            end);
        end;
        v564(l_v591_1.output);
        l_state_0.aimbot_logs = l_v591_1;
        l_v592_1 = {};
        l_v593_1 = {
            [1] = "Auto Snipers", 
            [2] = "AWP", 
            [3] = "Scout", 
            [4] = "Desert Eagle", 
            [5] = "Pistols", 
            [6] = "SMG", 
            [7] = "Rifles"
        };
        l_v594_1 = {
            [1] = "Standing", 
            [2] = "Slowwalking", 
            [3] = "Running", 
            [4] = "Ducking", 
            [5] = "Sneaking", 
            [6] = "In Air", 
            [7] = "In Air & Duck"
        };
        l_v592_1.enabled = l_send_0:switch(v536("eye-slash", "Auto Hide Shots", 0, 5), true);
        local v876 = l_v592_1.enabled:create();
        l_v592_1.weapons = v876:combo(v536("gun", "Weapons", 0, 6), l_v593_1);
        for v877 = 1, #l_v593_1 do
            local v878 = l_v593_1[v877];
            l_v592_1[v878] = {
                states = v876:selectable(v536("person-walking-arrow-loop-left", "States##" .. v878, 0, 5), l_v594_1)
            };
        end;
        local v879 = nil;
        do
            local l_l_v593_1_0 = l_v593_1;
            local function v886(v881)
                -- upvalues: l_l_v593_1_0 (ref), l_v592_1 (ref)
                local v882 = v881:get();
                for v883 = 1, #l_l_v593_1_0 do
                    local v884 = l_l_v593_1_0[v883];
                    local v885 = l_v592_1[v884];
                    if v885 ~= nil and v885.states ~= nil then
                        v885.states:visibility(v882 == v884);
                    end;
                end;
            end;
            l_v592_1.weapons:set_callback(v886, true);
            l_state_0.auto_hide_shots = l_v592_1;
        end;
        l_v593_1 = {};
        l_v594_1 = {
            [1] = "Auto", 
            [2] = "Deagle"
        };
        l_v593_1.enabled = l_send_0:switch(v536("head-side", "Force Lethal", 1, 7));
        v876 = l_v593_1.enabled:create();
        l_v593_1.weapons = v876:selectable("Weapons", l_v594_1);
        l_v593_1.mode = v876:combo("Mode", {
            [1] = "Default", 
            [2] = "Damage = HP/2"
        });
        for v887 = 1, #l_v594_1 do
            local v888 = l_v594_1[v887];
            l_v593_1[v888] = {
                hitchance = v876:slider(v888 .. " Hitchance", -1, 100, -1, nil, function(v889)
                    return v889 == -1 and "Off" or v889 .. "%";
                end)
            };
        end;
        v564(l_v593_1.weapons);
        v150.push(-1, l_v593_1.enabled);
        v879 = nil;
        do
            local l_l_v594_1_1 = l_v594_1;
            local function v894(_)
                -- upvalues: l_l_v594_1_1 (ref), l_v593_1 (ref)
                for v892 = 1, #l_l_v594_1_1 do
                    local v893 = l_l_v594_1_1[v892];
                    l_v593_1[v893].hitchance:visibility(l_v593_1.weapons:get(v893));
                end;
            end;
            l_v593_1.weapons:set_callback(v894, true);
            l_state_0.force_lethal = l_v593_1;
        end;
        l_v594_1 = {};
        v876 = {
            [1] = "AWP", 
            [2] = "SSG-08", 
            [3] = "AutoSnipers", 
            [4] = "Desert Eagle", 
            [5] = "R8 Revolver"
        };
        v879 = nil;
        local function v897(v895, v896)
            v895.enabled:visibility(v896);
            if not v895.enabled:get() then
                v896 = false;
            end;
            v895.value:visibility(v896);
        end;
        local function v900(v898, v899)
            v898.enabled:visibility(v899);
            if not v898.enabled:get() then
                v899 = false;
            end;
            v898.value:visibility(v899);
            v898.distance:visibility(v899);
        end;
        do
            local l_v876_0, l_v879_0, l_v897_0, l_v900_0 = v876, v879, v897, v900;
            do
                local l_l_v897_0_0, l_l_v900_0_0 = l_v897_0, l_v900_0;
                l_v879_0 = function()
                    -- upvalues: l_v594_1 (ref), l_v876_0 (ref), l_l_v897_0_0 (ref), l_l_v900_0_0 (ref)
                    local v907 = l_v594_1.weapon:get();
                    for v908 = 1, #l_v876_0 do
                        local v909 = l_v876_0[v908];
                        local v910 = v907 == v909;
                        local v911 = l_v594_1[v909];
                        if v911 ~= nil then
                            if v911["In Air"] ~= nil then
                                l_l_v897_0_0(v911["In Air"], v910);
                            end;
                            if v911["No Scope"] ~= nil then
                                l_l_v900_0_0(v911["No Scope"], v910);
                            end;
                        end;
                    end;
                end;
            end;
            l_v897_0 = function(v912)
                -- upvalues: v536 (ref), l_v879_0 (ref)
                local v913 = {};
                local function v915(v914)
                    v914[2] = v914[2] .. "##IN_AIR";
                end;
                v912:set_callback(v915);
                v913.enabled = v912:switch(v536("plane", "In Air", 1, 6));
                v913.value = v912:slider(v536("bullseye-arrow", "Value", 1, 7), 0, 100, 50, nil, "%");
                v913.enabled:set_callback(l_v879_0);
                v912:unset_callback(v915);
                return v913;
            end;
            l_v900_0 = function(v916)
                -- upvalues: v536 (ref), l_v879_0 (ref)
                local v917 = {};
                local function v919(v918)
                    v918[2] = v918[2] .. "##NO_SCOPE";
                end;
                v916:set_callback(v919);
                v917.enabled = v916:switch(v536("crosshairs", "No Scope", 1, 7));
                v917.value = v916:slider(v536("bullseye-arrow", "Value", 1, 7), 0, 100, 50, nil, "%");
                v917.distance = v916:slider(v536("ruler", "Distance", 1, 6), 30, 1001, 325, 0.1, function(v920)
                    if v920 == 1001 then
                        return "Inf.";
                    else
                        return string.format("%.1fft", v920 * 0.1);
                    end;
                end);
                v917.enabled:set_callback(l_v879_0);
                v916:unset_callback(v919);
                return v917;
            end;
            local function v930(v921, v922)
                -- upvalues: l_v897_0 (ref), l_v900_0 (ref)
                local v923 = {};
                local function v928(v924)
                    -- upvalues: v922 (ref)
                    local v925 = string.format("##%s", v922);
                    local _, v927 = string.find(v924[2], "##");
                    if v927 ~= nil then
                        v925 = v925 .. string.sub(v924[2], v927 + 1);
                    end;
                    v924[2] = v924[2] .. v925;
                end;
                v921:set_callback(v928);
                local v929 = v922 == "AWP" or not (v922 ~= "SSG-08") or v922 == "AutoSnipers";
                v923["In Air"] = l_v897_0(v921);
                if v929 then
                    v923["No Scope"] = l_v900_0(v921);
                end;
                v921:unset_callback(v928);
                return v923;
            end;
            l_v594_1.enabled = l_settings_0:switch(v536("badge-percent", "Hitchance Modifier", 1, 5));
            local v931 = v47.cast(l_v594_1.enabled:create());
            l_v594_1.weapon = v931:combo(v536("gun", "Weapon", 1, 5), l_v876_0);
            for v932 = 1, #l_v876_0 do
                local v933 = l_v876_0[v932];
                l_v594_1[v933] = v930(v931, v933);
            end;
            local _ = nil;
            l_v594_1.weapon:set_callback(l_v879_0, true);
            l_v594_1.list = l_v876_0;
            l_state_0.hitchance_modifier = l_v594_1;
        end;
        v151.ragebot = l_state_0;
    end;
    l_send_0 = {};
    l_settings_0 = v565.features.visuals;
    l_settings_extra_0 = v565.features.render;
    v50.add("##VISUALS", l_settings_0, "VISUALS");
    v50.add("##RENDER", l_settings_extra_0, "RENDER");
    l_builder_0 = {
        label = l_settings_extra_0:label(v536("bookmark", "Watermark", 1, 7))
    };
    v591 = l_builder_0.label:create();
    l_builder_0.style = v591:combo(v536("pencil", "Style", 1, 7), {
        [1] = "Default", 
        [2] = "New", 
        [3] = "Custom"
    });
    l_builder_0.radius = v591:combo(v536("circle", "Radius", 1, 7), {
        [1] = "Smooth", 
        [2] = "Semi-circle"
    });
    l_builder_0.display = v591:selectable(v536("display", "Display", 1, 7), {
        [1] = "User", 
        [2] = "FPS", 
        [3] = "Time"
    });
    l_builder_0.padding = v591:slider(v536("ruler", "Padding", 1, 7), 5, 10, 5, nil, "px");
    l_builder_0.color = v591:color_picker(v536("palette", "Color", 1, 7), {
        Single = {
            color(120, 200, 255, 255)
        }, 
        Gradient = {
            color(120, 200, 255, 255), 
            color(255, 255, 255, 255)
        }
    });
    l_builder_0.speed = v591:slider(v536("gauge-simple-high", "Speed", 1, 7), 1, 100, 16);
    l_builder_0.position = v591:combo(v536("arrows-up-down-left-right", "Position", 1, 7), {
        [1] = "Left", 
        [2] = "Right", 
        [3] = "Bottom", 
        [4] = "Custom"
    });
    l_builder_0.font = v591:combo(v536("font", "Font", 1, 7), {
        [1] = "Default", 
        [2] = "Pixel", 
        [3] = "Console", 
        [4] = "Bold"
    });
    l_builder_0.animation = v591:selectable(v536("diagram-venn", "Animation", 0, 6), {
        [1] = "Encoded", 
        [2] = "Pulse"
    });
    l_builder_0.text = v591:input(v536("fingerprint", "Text", 1, 7), "");
    l_builder_0.pulse = v591:switch(v536("wave-sine", "Pulse", 1, 6));
    l_builder_0.print_commands = v591:button(v547("code", "Print Commands", 4), function()
        -- upvalues: v48 (ref)
        v48.log("Commands:\n");
        v48.log("pre_icon=\"tree\" \226\128\148 Icon before prefix");
        v48.log("post_icon=\"tree\" \226\128\148 Icon after postfix");
        v48.log("pre=\"Frost.\" \226\128\148 Prefix text");
        v48.log("main=\"lua\" \226\128\148 Main text");
        v48.log("post=\"Text\" \226\128\148 Postfix text");
        v48.log("nobr \226\128\148 Remove brackets");
        v48.log("nomn \226\128\148 Remove main");
        v48.log("nopr \226\128\148 Remove postfix\n");
        v48.log("Example: pre_icon=\"snowflake\" pre=\"Frost.\" main=\"lua\" nopr");
    end, true);
    l_builder_0.custom_colors = {
        Pre = v591:color_picker(v536("palette", "Pre Color", 1, 7), {
            Single = {
                color(150, 200, 60, 255)
            }, 
            Gradient = {
                color(150, 200, 60, 255), 
                color(37, 100, 30, 255)
            }
        }), 
        Main = v591:color_picker(v536("palette", "Main Color", 1, 7), {
            Single = {
                color(255, 255, 255, 255)
            }, 
            Gradient = {
                color(255, 255, 255, 255), 
                color(128, 128, 128, 255)
            }
        }), 
        Post = v591:color_picker(v536("palette", "Post Color", 1, 7), {
            Single = {
                color(235, 97, 97, 255)
            }, 
            Gradient = {
                color(235, 97, 97, 255), 
                color(117, 48, 48, 255)
            }
        })
    };
    l_builder_0.colors_button = v591:button(v547("palette", "Colors", 4), nil, true);
    l_builder_0.back_button = v591:button(v547("arrow-turn-down-right", "Back", 47), nil, true);
    l_builder_0.custom_colors.Pre:visibility(false);
    l_builder_0.custom_colors.Main:visibility(false);
    l_builder_0.custom_colors.Post:visibility(false);
    l_builder_0.custom_colors.Main:set("Gradient");
    v591 = nil;
    do
        local l_l_builder_0_0, l_v591_2, l_v592_2 = l_builder_0, v591, v592;
        l_v592_2 = function(v938)
            -- upvalues: l_l_builder_0_0 (ref)
            l_l_builder_0_0.speed:visibility(v938:get() == "Gradient");
        end;
        do
            local l_l_v592_2_0, l_v593_2 = l_v592_2, v593;
            l_v593_2 = function(v941)
                -- upvalues: l_l_builder_0_0 (ref), l_l_v592_2_0 (ref)
                local v942 = v941 == "Default";
                local v943 = v941 == "New";
                local v944 = v941 == "Custom";
                local l_v942_0 = v942;
                local l_v943_0 = v943;
                local l_v943_1 = v943;
                local l_v943_2 = v943;
                local v949 = not v944;
                if v949 and v942 then
                    l_l_builder_0_0.color:set_callback(l_l_v592_2_0, true);
                else
                    l_l_builder_0_0.color:unset_callback(l_l_v592_2_0);
                end;
                l_l_builder_0_0.pulse:visibility(l_v942_0);
                l_l_builder_0_0.radius:visibility(l_v943_0);
                l_l_builder_0_0.display:visibility(l_v943_1);
                l_l_builder_0_0.padding:visibility(l_v943_2);
                l_l_builder_0_0.color:visibility(v949);
                l_l_builder_0_0.position:visibility(v944);
                l_l_builder_0_0.font:visibility(v944);
                l_l_builder_0_0.animation:visibility(v944);
                l_l_builder_0_0.text:visibility(v944);
                l_l_builder_0_0.print_commands:visibility(v944);
                l_l_builder_0_0.colors_button:visibility(v944);
            end;
            v594 = function()
                -- upvalues: l_l_builder_0_0 (ref)
                l_l_builder_0_0.style:visibility(false);
                l_l_builder_0_0.speed:visibility(false);
                l_l_builder_0_0.color:visibility(false);
                l_l_builder_0_0.position:visibility(false);
                l_l_builder_0_0.font:visibility(false);
                l_l_builder_0_0.animation:visibility(false);
                l_l_builder_0_0.text:visibility(false);
                l_l_builder_0_0.pulse:visibility(false);
                l_l_builder_0_0.print_commands:visibility(false);
                l_l_builder_0_0.custom_colors.Pre:visibility(true);
                l_l_builder_0_0.custom_colors.Main:visibility(true);
                l_l_builder_0_0.custom_colors.Post:visibility(true);
                l_l_builder_0_0.colors_button:visibility(false);
                l_l_builder_0_0.back_button:visibility(true);
            end;
            local function v950()
                -- upvalues: l_l_builder_0_0 (ref), l_v593_2 (ref)
                l_l_builder_0_0.style:visibility(true);
                l_v593_2(l_l_builder_0_0.style:get());
                l_l_builder_0_0.custom_colors.Pre:visibility(false);
                l_l_builder_0_0.custom_colors.Main:visibility(false);
                l_l_builder_0_0.custom_colors.Post:visibility(false);
                l_l_builder_0_0.colors_button:visibility(true);
                l_l_builder_0_0.back_button:visibility(false);
            end;
            local function v952(v951)
                -- upvalues: l_v593_2 (ref)
                l_v593_2(v951:get());
            end;
            l_l_builder_0_0.colors_button:set_callback(v594, true);
            l_l_builder_0_0.back_button:set_callback(v950, true);
            l_l_builder_0_0.style:set_callback(v952, true);
        end;
        l_send_0.watermark = l_l_builder_0_0;
        l_v591_2 = {
            enabled = l_settings_extra_0:switch(v536("tag", "Clantag", 1, 7))
        };
        l_v592_2 = l_v591_2.enabled:create();
        l_v591_2.mode = l_v592_2:combo("Mode", {
            [1] = "Frost", 
            [2] = "Custom"
        });
        l_v591_2.style = l_v592_2:combo("##STYLE", {
            [1] = "Animated", 
            [2] = "Static"
        });
        l_v591_2.input = l_v592_2:input("##INPUT", "");
        v593 = nil;
        v594 = function(v953)
            -- upvalues: l_v591_2 (ref)
            local v954 = v953:get() == "Custom";
            l_v591_2.style:visibility(v954);
            l_v591_2.input:visibility(v954);
        end;
        do
            local l_v594_2 = v594;
            utils.execute_after(0, function()
                -- upvalues: l_v591_2 (ref), l_v594_2 (ref)
                l_v591_2.mode:set_callback(l_v594_2, true);
            end);
        end;
        l_send_0.clantag = l_v591_2;
        l_v592_2 = {
            enabled = l_settings_extra_0:switch(v536("sparkles", "Screen Indicator", 0, 8))
        };
        v593 = l_v592_2.enabled:create();
        l_v592_2.color = v593:color_picker(v536("palette", "Color", 1, 7), {
            Accent = {
                color(120, 200, 255, 255)
            }, 
            Secondary = {
                color(255, 255, 255, 255)
            }
        });
        l_v592_2.style = v593:combo(v536("pencil", "Style", 1, 7), {
            [1] = "Alternative", 
            [2] = "New", 
            [3] = "Modern"
        });
        l_v592_2.padding = v593:slider(v536("ruler", "Padding", 1, 7), 0, 10, 4, nil, "px");
        l_v592_2.offset = v593:slider(v536("arrows-up-down-left-right", "Offset", 1, 7), 5, 55, 24, nil, "px");
        l_v592_2.animation = v593:switch(v536("diagram-venn", "Animation", 0, 6));
        v594 = nil;
        local function v958(v956)
            -- upvalues: l_v592_2 (ref)
            local v957 = v956:get();
            l_v592_2.padding:visibility(v957 == "New");
        end;
        do
            local l_v958_0 = v958;
            utils.execute_after(0, function()
                -- upvalues: l_v592_2 (ref), l_v958_0 (ref)
                l_v592_2.style:set_callback(l_v958_0, true);
            end);
        end;
        l_send_0.screen_indicators = l_v592_2;
        v593 = {
            enabled = l_settings_extra_0:switch(v536("left-right", "Manual Arrows", 0, 8))
        };
        v594 = v593.enabled:create();
        v593.color = v594:color_picker(v536("palette", "Color", 1, 7), {
            Active = {
                color(170, 160, 180, 255)
            }, 
            Inactive = {
                color(0, 0, 0, 0)
            }
        });
        v593.style = v594:combo(v536("pencil", "Style", 1, 7), {
            [1] = "Classic", 
            [2] = "Modern", 
            [3] = "Triangle"
        });
        v593.animation = v594:switch(v536("diagram-venn", "Animation", 0, 6));
        l_send_0.manual_arrows = v593;
        v594 = {
            enabled = l_settings_extra_0:switch(v536("list-ol", "Damage Indicator", 0, 7))
        };
        v958 = v594.enabled:create();
        v594.color = v958:color_picker(v536("palette", "Color", 1, 7), color(255, 255, 255, 255));
        v594.font = v958:combo(v536("font", "Font", 2, 7), {
            [1] = "Default", 
            [2] = "Pixel", 
            [3] = "Bold"
        });
        v594.when_active = v958:switch(v536("heat", "When Active", 2, 7));
        v594.animation = v958:switch(v536("diagram-venn", "Animation", 0, 6));
        l_send_0.damage_indicator = v594;
        v958 = {
            enabled = l_settings_extra_0:switch(v536("percent", "Hitchance Indicator", 2, 8))
        };
        local v960 = v958.enabled:create();
        v958.color = v960:color_picker(v536("palette", "Color", 1, 7), color(255, 255, 255, 255));
        v958.font = v960:combo(v536("font", "Font", 2, 7), {
            [1] = "Default", 
            [2] = "Pixel", 
            [3] = "Bold"
        });
        v958.animation = v960:switch(v536("diagram-venn", "Animation", 0, 6));
        l_send_0.hitchance_indicator = v958;
        v960 = {
            enabled = l_settings_extra_0:switch(v536("triangle-exclamation", "Velocity Warning", 1, 6))
        };
        v960.color = v960.enabled:create():color_picker(v536("palette", "Color", 1, 7), color(120, 200, 255, 255));
        l_send_0.velocity_warning = v960;
        local v961 = {
            enabled = l_settings_0:switch(v536("crosshairs", "Custom Scope", 1, 7))
        };
        local v962 = v961.enabled:create();
        v961.color = v962:color_picker(v536("palette", "Color", 1, 7), {
            Main = {
                color(255, 255, 255, 255)
            }, 
            Edge = {
                color(255, 255, 255, 0)
            }
        });
        v961.offset = v962:slider(v536("arrows-up-down-left-right", "Offset", 1, 7), 0, 500, 10, nil, "px");
        v961.position = v962:slider(v536("arrows-minimize", "Position", 1, 7), 0, 500, 105, nil, "px");
        v961.thickness = v962:slider(v536("ruler", "Thickness", 1, 7), 1, 10, 1, nil, "px");
        v961.style = v962:combo(v536("pencil", "Style", 1, 7), {
            [1] = "Default", 
            [2] = "Rotated"
        });
        l_send_0.custom_scope = v961;
        v962 = {};
        local v963 = {
            [1] = "5:4", 
            [2] = "4:3", 
            [3] = "16:9", 
            [4] = "16:10"
        };
        local v964 = {
            ["16:10"] = 160, 
            ["16:9"] = 177, 
            ["4:3"] = 133, 
            ["5:4"] = 125
        };
        local v965 = {};
        for v966 = 1, #v963 do
            local v967 = v963[v966];
            v965[v964[v967]] = v967;
        end;
        v962.enabled = l_settings_0:switch(v536("expand-wide", "Aspect Ratio", 1, 7));
        local v968 = v962.enabled:create();
        do
            local l_v965_0 = v965;
            v962.value = v968:slider("##VALUE", 1, 200, 177, 0.01, function(v970)
                -- upvalues: l_v965_0 (ref)
                return l_v965_0[v970] or nil;
            end);
            for v971 = 1, #v963 do
                local v972 = v963[v971];
                local v973 = v964[v972];
                do
                    local l_v973_0 = v973;
                    local function v975()
                        -- upvalues: v962 (ref), l_v973_0 (ref)
                        v962.value:set(l_v973_0);
                    end;
                    v968:button(v513(v972, (math.ceil(#v972 * 1.34))), v975, true);
                end;
            end;
            l_send_0.aspect_ratio = v962;
        end;
        v963 = {
            enabled = l_settings_0:switch(v536("hand", "Viewmodel", 1, 7))
        };
        v964 = v963.enabled:create();
        v963.fov = v964:slider("FOV", 2000, 17000, 6800, 0.01);
        v963.offset_x = v964:slider("X", -2000, 2000, 0, 0.01);
        v963.offset_y = v964:slider("Y", -2000, 2000, 0, 0.01);
        v963.offset_z = v964:slider("Z", -2000, 2000, 0, 0.01);
        v963.opposite_knife_hand = v964:switch("Opposite Knife Hand");
        l_send_0.viewmodel = v963;
        v964 = {
            enabled = l_settings_0:switch(v536("circle", "Grenade Radius", 1, 7))
        };
        v965 = v964.enabled:create();
        v964.molotov = v965:switch(v536("fire", "Molotov", 1, 7), true);
        v964.molotov_color = v964.molotov:color_picker(color(245, 90, 90, 255));
        v964.smoke = v965:switch(v536("smoke", "Smoke", 0, 5), true);
        v964.smoke_color = v964.smoke:color_picker(color(130, 130, 255, 255));
        v968 = nil;
        local function v977(v976)
            -- upvalues: v964 (ref)
            if not v976:get() and not v964.smoke:get() then
                v964.smoke:set(true);
            end;
        end;
        local function v979(v978)
            -- upvalues: v964 (ref)
            if not v978:get() and not v964.molotov:get() then
                v964.molotov:set(true);
            end;
        end;
        v964.molotov:set_callback(v977);
        v964.smoke:set_callback(v979);
        l_send_0.grenade_radius = v964;
        v965 = {
            enabled = l_settings_0:switch(v536("dollar-sign", "500$ Indicators", 2, 9))
        };
        v968 = v965.enabled:create();
        v977 = {
            [1] = "Old"
        };
        if not v150.is_locked(-1) then
            table.insert(v977, "New");
        end;
        v965.style = v968:combo(v536("pencil", "Style", 1, 7), v977);
        v965.list = v968:listable("##LIST", {
            [1] = "Fake Duck", 
            [2] = "Double Tap", 
            [3] = "Hide Shots", 
            [4] = "Min. Damage", 
            [5] = "Force Body Aim", 
            [6] = "Force Safe Point", 
            [7] = "Fake Latency", 
            [8] = "Freestanding", 
            [9] = "Dormant Aimbot", 
            [10] = "Bomb Information", 
            [11] = "Hit/Miss Ratio"
        });
        v564(v965.list);
        l_send_0.skeet_indicators = v965;
        v968 = {
            enabled = l_settings_extra_0:switch(v536("sparkles", "Hitmarker", 1, 6))
        };
        v977 = v47.cast(v968.enabled:create());
        do
            local l_v977_0 = v977;
            v979 = function()
                -- upvalues: l_v977_0 (ref), v536 (ref)
                local v981 = {};
                local function v983(v982)
                    v982[2] = v982[2] .. "##KIBIT";
                end;
                l_v977_0:set_callback(v983);
                v981.enabled = l_v977_0:switch(v536("toggle-on", "Enabled", 1, 6));
                v981.color = l_v977_0:color_picker(v536("palette", "Color", 1, 7), {
                    Vertical = {
                        color(0, 255, 0, 255)
                    }, 
                    Horizontal = {
                        color(0, 255, 255, 255)
                    }
                });
                v981.size = l_v977_0:slider(v536("arrows-up-down", "Size", 3, 9), 2, 6, 4, nil, "px");
                v981.thickness = l_v977_0:slider(v536("arrows-left-right", "Thickness", 1, 7), 1, 3, 2, nil, "px");
                l_v977_0:unset_callback(v983);
                return v981;
            end;
            local function v987()
                -- upvalues: l_v977_0 (ref), v536 (ref)
                local v984 = {};
                local function v986(v985)
                    v985[2] = v985[2] .. "##SCREEN";
                end;
                l_v977_0:set_callback(v986);
                v984.enabled = l_v977_0:switch(v536("toggle-on", "Enabled", 1, 6));
                v984.color = l_v977_0:color_picker(v536("palette", "Color", 1, 7), color(255, 255, 255, 255));
                l_v977_0:unset_callback(v986);
                return v984;
            end;
            local function v991()
                -- upvalues: l_v977_0 (ref), v536 (ref)
                local v988 = {};
                local function v990(v989)
                    v989[2] = v989[2] .. "##WORLD";
                end;
                l_v977_0:set_callback(v990);
                v988.enabled = l_v977_0:switch(v536("toggle-on", "Enabled", 1, 6));
                v988.color = l_v977_0:color_picker(v536("palette", "Color", 1, 7), color(120, 200, 255, 255));
                v988.add_glow = l_v977_0:switch(v536("keyboard-brightness", "Add Glow", 0, 6), true);
                l_v977_0:unset_callback(v990);
                return v988;
            end;
            v968.type = l_v977_0:list("##TYPE", {
                v536("plus-large", "Kibit", 1, 7), 
                v536("display", "Screen", 1, 6), 
                v536("earth-americas", "World", 1, 7)
            });
            v968.kibit = v979();
            v968.screen = v987();
            v968.world = v991();
            local _ = nil;
            local function v1004(v993)
                -- upvalues: v968 (ref)
                local v994 = v993:get();
                local v995 = v994 == 1;
                local v996 = v994 == 2;
                local v997 = v994 == 3;
                for _, v999 in pairs(v968.kibit) do
                    v999:visibility(v995);
                end;
                for _, v1001 in pairs(v968.screen) do
                    v1001:visibility(v996);
                end;
                for _, v1003 in pairs(v968.world) do
                    v1003:visibility(v997);
                end;
            end;
            v968.type:set_callback(v1004, true);
            l_send_0.hit_markers = v968;
        end;
        v151.visuals = l_send_0;
    end;
    l_settings_0 = {};
    l_settings_extra_0 = v565.features.misc;
    l_builder_0 = v565.features.movement;
    v50.add("##MISC", l_settings_extra_0, "MISC");
    v50.add("##MOVEMENT", l_builder_0, "MISC");
    v591 = {
        label = l_settings_extra_0:label(v536("user", "Nickname Generator", 1, 5))
    };
    v592 = v591.label:create();
    v591.input = v592:input("##INPUT");
    v591.set_button = v592:button(v513("Set", 11), nil, false);
    v591.generate_button = v592:button(v513("Generate", 5), nil, true);
    v591.reset_button = v592:button(v513("Reset", 8), nil, true);
    l_settings_0.nickname_generator = v591;
    v592 = {
        enabled = l_settings_extra_0:switch(v536("microphone", "Voice State", 2, 5))
    };
    v592.mode = v592.enabled:create():list("##MODE", {
        [1] = "Enemies", 
        [2] = "Teammates", 
        [3] = "Everyone"
    });
    v150.push(-1, v592.enabled, 1);
    l_settings_0.unmute_mute_silenced = v592;
    v593 = {
        enabled = l_settings_extra_0:switch(v536("person-seat", "Fakeduck features", 2, 6))
    };
    v593.select = v593.enabled:create():listable("\a{Link Active}Options", {
        v536("person-seat", "Unlock Fake Duck Speed", 2, 6), 
        v536("wind-warning", "Freezetime Fake Duck", 1, 5)
    });
    l_settings_0.fake_duck = v593;
    l_settings_0.air_duck_collision = {
        enabled = l_settings_extra_0:switch(v536("person-walking-arrow-loop-left", "Air Collision", 2, 5))
    };
    local v1005 = {
        enabled = l_settings_extra_0:switch(v536("link", "Unlock latency", 1, 6))
    };
    v1005.value = v1005.enabled:create():slider(v536("signal", "Latency", 0, 6), 0, 200, 0, nil, "ms");
    v1005.enabled:tooltip("\a{Link Active}\226\128\162\aDEFAULT  Unlock the 'Fake latency' value and allows you to set the value at 200");
    l_settings_0.ping_spike = v1005;
    local v1006 = {
        enabled = l_settings_extra_0:switch(v536("frame", "FPS Optimize", 2, 7))
    };
    local v1007 = v1006.enabled:create();
    v1006.always_on = v1007:switch(v536("check", "Always On", 1, 7), false);
    v1006.detections = v1007:selectable(v536("eye", "Detections", 0, 6), {
        [1] = "Peeking", 
        [2] = "Hit Flag"
    });
    v1006.select = v1007:selectable(v536("filter", "Optimizations", 1, 6), {
        [1] = "Fog", 
        [2] = "Blood", 
        [3] = "Bloom", 
        [4] = "Decals", 
        [5] = "Shadows", 
        [6] = "Sprites", 
        [7] = "Particles", 
        [8] = "Ropes", 
        [9] = "Dynamic lights", 
        [10] = "Map details", 
        [11] = "Weapon effects"
    });
    local v1008 = nil;
    do
        local l_v1006_0, l_v1007_0 = v1006, v1007;
        local function v1012(v1011)
            -- upvalues: l_v1006_0 (ref)
            l_v1006_0.detections:visibility(not v1011:get());
        end;
        l_v1006_0.always_on:set_callback(v1012, true);
        v564(l_v1006_0.detections);
        v564(l_v1006_0.select, {
            [1] = "Blood", 
            [2] = "Decals", 
            [3] = "Sprites", 
            [4] = "Ropes", 
            [5] = "Dynamic lights", 
            [6] = "Weapon effects"
        });
        l_settings_0.fps_optimize = l_v1006_0;
        l_v1007_0 = {
            label = l_builder_0:label(v536("bomb", "Grenade features", 1, 5))
        };
        v1008 = l_v1007_0.label:create();
        l_v1007_0.select = v1008:listable("\a{Link Active}Options", {
            v536("hands-holding-circle", "Super Toss", 1, 5), 
            v536("bomb", "Grenade Release", 2, 6), 
            v536("hand-holding", "Drop Nades", 1, 6)
        });
        l_v1007_0.drop_nades_select = v1008:listable("\a{Link Active}Select Drop Nades", {
            v536("fire", "Molotov", 2, 7), 
            v536("smoke", "Smoke", 1, 5), 
            v536("explosion", "Nade", 1, 7)
        });
        l_v1007_0.drop_nades_bind = v1008:hotkey("Hotkey");
        l_v1007_0.release_damage = v1008:slider("Amount", 1, 50, 50, nil, "hp");
        v564(l_v1007_0.drop_nades_select);
        v1012 = nil;
        local function v1014(v1013)
            -- upvalues: l_v1007_0 (ref)
            l_v1007_0.release_damage:visibility(v1013:get(2));
            l_v1007_0.drop_nades_bind:visibility(v1013:get(3));
            l_v1007_0.drop_nades_select:visibility(v1013:get(3));
        end;
        l_v1007_0.select:set_callback(v1014, true);
        l_settings_0.grenades = l_v1007_0;
        l_settings_0.no_fall_damage = {
            enabled = l_builder_0:switch(v536("person-falling", "No Fall Damage", 1, 7))
        };
        l_settings_0.fast_ladder = {
            enabled = l_builder_0:switch(v536("water-ladder", "Fast Ladder", 1, 6))
        };
        v151.misc = l_settings_0;
    end;
end;
v5("begin_localplayer");
v152 = nil;
v152 = {};
v153 = 0;
v492 = 0;
v152.is_onground = false;
v152.is_moving = false;
v152.is_crouched = false;
v152.is_peeking = false;
v152.is_vulnerable = false;
v152.velocity2d = 0;
v152.duck_amount = 0;
v152.team_num = 0;
v152.sent_packets = 0;
v506 = function(v1015, v1016, v1017)
    return v1015 + v1016 * (v1017 * globals.tickinterval);
end;
do
    local l_v153_3, l_v492_1, l_v506_0, l_v507_0 = v153, v492, v506, v507;
    l_v507_0 = function(v1022)
        -- upvalues: l_v506_0 (ref)
        local v1023 = false;
        local v1024 = false;
        local l_m_vecVelocity_0 = v1022.m_vecVelocity;
        local v1026 = v1022:get_eye_position();
        local v1027 = l_v506_0(v1026, l_m_vecVelocity_0, 14);
        local v1028 = entity.get_players(true);
        local v1029 = entity.get_threat(true);
        for v1030 = 1, #v1028 do
            local v1031 = v1028[v1030];
            if v1031:is_alive() then
                if v1031 == v1029 then
                    v1024 = true;
                else
                    local v1032 = v1031:get_hitbox_position(0);
                    local v1033 = l_v506_0(v1032, l_m_vecVelocity_0, 4);
                    local v1034 = utils.trace_bullet(v1022, v1027, v1033);
                    if v1034 ~= nil and v1034 > 0 then
                        v1023 = true;
                        break;
                    end;
                end;
            end;
        end;
        return v1023, v1024;
    end;
    v509 = function(v1035)
        -- upvalues: l_v507_0 (ref), l_v153_3 (ref), v152 (ref)
        local v1036 = entity.get_local_player();
        if v1036 == nil then
            return;
        else
            local v1037, v1038 = l_v507_0(v1036);
            l_v153_3 = v1036.m_fFlags;
            v152.velocity2d = v1036.m_vecVelocity:length2d();
            v152.is_peeking = v1037;
            v152.is_vulnerable = v1038;
            if v1035.choked_commands == 0 then
                v152.duck_amount = v1036.m_flDuckAmount;
                v152.sent_packets = v152.sent_packets + 1;
            end;
            v152.is_moving = v152.velocity2d > 3.63;
            v152.is_crouched = v152.duck_amount > 0;
            v152.team_num = v1036.m_iTeamNum;
            return;
        end;
    end;
    v513 = function(_)
        -- upvalues: l_v492_1 (ref), v152 (ref), l_v153_3 (ref)
        local v1040 = entity.get_local_player();
        if v1040 == nil then
            return;
        else
            l_v492_1 = v1040.m_fFlags;
            v152.is_onground = bit.band(l_v153_3, 1) == 1 and bit.band(l_v492_1, 1) == 1;
            return;
        end;
    end;
    v509 = v21("localplayer.on_createmove", v509);
    v513 = v21("localplayer.on_createmove_run", v513);
    events.createmove(v509);
    events.createmove_run(v513);
end;
v5("begin_exploit");
v153 = nil;
v153 = {};
v492 = nil;
v506 = 0;
v153.max_defensive_ticks = 0;
v153.defensive_ticks = 0;
v153.teleport_units_sqr = 0;
do
    local l_v492_2, l_v506_1, l_v507_1, l_v509_1, l_v513_0 = v492, v506, v507, v509, v513;
    l_v507_1 = function(v1046)
        -- upvalues: l_v506_1 (ref), v153 (ref)
        local l_m_nTickBase_0 = v1046.m_nTickBase;
        if math.abs(l_m_nTickBase_0 - l_v506_1) > 64 then
            l_v506_1 = 0;
        end;
        local v1048 = 0;
        if l_v506_1 < l_m_nTickBase_0 then
            l_v506_1 = l_m_nTickBase_0;
        elseif l_m_nTickBase_0 < l_v506_1 then
            v1048 = math.min(14, math.max(0, l_v506_1 - l_m_nTickBase_0 - 1));
        end;
        if v1048 > 0 then
            if v153.max_defensive_ticks == 0 then
                v153.max_defensive_ticks = v1048;
            end;
            v153.defensive_ticks = v1048;
        else
            v153.defensive_ticks = 0;
            v153.max_defensive_ticks = 0;
        end;
    end;
    l_v509_1 = function(v1049, v1050)
        -- upvalues: v153 (ref)
        v153.teleport_units_sqr = (v1050 - v1049):lengthsqr();
    end;
    l_v513_0 = function(v1051)
        -- upvalues: l_v492_2 (ref), l_v509_1 (ref)
        local v1052 = v1051:get_simulation_time();
        if v1052 == nil then
            return;
        else
            local l_m_vecOrigin_0 = v1051.m_vecOrigin;
            if l_v492_2 ~= nil then
                local v1054 = to_ticks(v1052.current - v1052.old);
                if v1054 < 0 or v1054 > 0 and v1054 <= 64 then
                    l_v509_1(l_v492_2, l_m_vecOrigin_0);
                end;
            end;
            l_v492_2 = l_m_vecOrigin_0;
            return;
        end;
    end;
    local function v1056()
        -- upvalues: l_v507_1 (ref)
        local v1055 = entity.get_local_player();
        if v1055 == nil then
            return;
        else
            l_v507_1(v1055);
            return;
        end;
    end;
    local function v1058()
        -- upvalues: l_v513_0 (ref)
        local v1057 = entity.get_local_player();
        if v1057 == nil then
            return;
        else
            l_v513_0(v1057);
            return;
        end;
    end;
    v1056 = v21("exploit.on_createmove", v1056);
    v1058 = v21("exploit.on_net_update_start", v1058);
    events.createmove(v1056);
    events.net_update_start(v1058);
end;
v5("begin_statement");
v492 = nil;
v492 = {};
v506 = nil;
v507 = function()
    -- upvalues: v152 (ref), v25 (ref)
    if v152.is_onground then
        if v25.antiaim.misc.slow_walk:get() then
            return "Slowwalking";
        elseif v152.is_crouched then
            if v152.is_moving then
                return "Sneaking";
            else
                return "Ducking";
            end;
        elseif not v152.is_moving then
            return "Standing";
        else
            return "Running";
        end;
    elseif v152.is_crouched then
        return "In Air & Duck";
    else
        return "In Air";
    end;
end;
do
    local l_v506_2, l_v507_2 = v506, v507;
    v509 = function()
        -- upvalues: l_v506_2 (ref), l_v507_2 (ref)
        l_v506_2 = l_v507_2();
    end;
    v492.get = function()
        -- upvalues: l_v506_2 (ref)
        return l_v506_2;
    end;
    v509 = v21("statement.on_createmove", v509);
    events.createmove(v509);
end;
v5("begin_shot_system");
v506 = nil;
v506 = {};
v507 = v46:new();
v509 = {};
v513 = function(v1061)
    local l_tickcount_0 = globals.tickcount;
    local v1063 = v1061:get_eye_position();
    return {
        tick = l_tickcount_0, 
        player = v1061, 
        eye_pos = v1063, 
        impacts = {}
    };
end;
do
    local l_v507_3, l_v509_2, l_v513_1 = v507, v509, v513;
    local function v1069(v1067)
        -- upvalues: l_v509_2 (ref), l_v513_1 (ref)
        local v1068 = entity.get(v1067.userid, true);
        if v1068 == nil then
            return;
        else
            table.insert(l_v509_2, l_v513_1(v1068));
            return;
        end;
    end;
    local function v1075(v1070)
        -- upvalues: l_v509_2 (ref)
        local v1071 = entity.get(v1070.userid, true);
        local v1072 = entity.get(v1070.attacker, true);
        if v1071 == nil or v1072 == nil then
            return;
        else
            for v1073 = #l_v509_2, 1, -1 do
                local v1074 = l_v509_2[v1073];
                if v1074.player == v1072 then
                    v1074.victim = v1071;
                    v1074.damage = v1070.dmg_health;
                    v1074.hitgroup = v1070.hitgroup;
                    break;
                end;
            end;
            return;
        end;
    end;
    local function v1081(v1076)
        -- upvalues: l_v509_2 (ref)
        local v1077 = entity.get(v1076.userid, true);
        if v1077 == nil then
            return;
        else
            for v1078 = #l_v509_2, 1, -1 do
                local v1079 = l_v509_2[v1078];
                if v1079.player == v1077 then
                    local v1080 = vector(v1076.x, v1076.y, v1076.z);
                    table.insert(v1079.impacts, v1080);
                    break;
                end;
            end;
            return;
        end;
    end;
    local function v1096()
        -- upvalues: l_v509_2 (ref), l_v507_3 (ref), v24 (ref)
        local v1082 = entity.get_local_player();
        if v1082 == nil then
            return;
        else
            local v1083 = nil;
            if v1082:is_alive() then
                v1083 = v1082:get_hitbox_position(0);
            end;
            for v1084 = 1, #l_v509_2 do
                local v1085 = l_v509_2[v1084];
                if v1085.player ~= nil then
                    local l_impacts_0 = v1085.impacts;
                    if l_impacts_0 ~= nil then
                        local v1087 = #l_impacts_0;
                        if v1087 ~= 0 then
                            local l_eye_pos_0 = v1085.eye_pos;
                            local v1089 = l_impacts_0[v1087];
                            if l_eye_pos_0 ~= nil and v1089 ~= nil then
                                local l_player_0 = v1085.player;
                                local l_victim_0 = v1085.victim;
                                if l_player_0 ~= nil and l_victim_0 ~= nil then
                                    l_v507_3.player_shot:fire({
                                        tick = v1085.tick, 
                                        player = l_player_0, 
                                        victim = l_victim_0, 
                                        eye_pos = l_eye_pos_0, 
                                        end_pos = v1089, 
                                        damage = v1085.damage, 
                                        hitgroup = v1085.hitgroup
                                    });
                                    if v1083 ~= nil and l_player_0:is_enemy() then
                                        local v1092 = v24.closest_ray_point(l_eye_pos_0, v1089, v1083, true);
                                        local v1093 = v1083.distsqr(v1083, v1092);
                                        if v1093 <= 6400 then
                                            local v1094 = math.sqrt(v1093);
                                            l_v507_3.enemy_shot:fire({
                                                tick = v1085.tick, 
                                                distance = v1094, 
                                                player = l_player_0, 
                                                victim = l_victim_0, 
                                                eye_pos = l_eye_pos_0, 
                                                end_pos = v1089, 
                                                damage = v1085.damage, 
                                                hitgroup = v1085.hitgroup
                                            });
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            for v1095 = 1, #l_v509_2 do
                l_v509_2[v1095] = nil;
            end;
            return;
        end;
    end;
    v506.get_event_bus = function()
        -- upvalues: l_v507_3 (ref)
        return l_v507_3;
    end;
    v1069 = v21("shot_system.on_weapon_fire", v1069);
    v1075 = v21("shot_system.on_player_hurt", v1075);
    v1081 = v21("shot_system.on_bullet_impact", v1081);
    v1096 = v21("shot_system.on_net_update_start", v1096);
    events.weapon_fire(v1069);
    events.player_hurt(v1075);
    events.bullet_impact(v1081);
    events.net_update_start(v1096);
end;
v5("begin_localdb");
v507 = nil;
v507 = {};
v509 = "lTZA7O1VkC3wj2YacHuBdMPRE8mtQXpnJKe5Ux9L4SIvNirWohDygszf60FbqG+/=";
v513 = ".\\" .. v22.name;
local v1097 = v513 .. "\\db.dat";
local v1098 = {};
do
    local l_v509_3, l_v513_2, l_v1097_0, l_v1098_0 = v509, v513, v1097, v1098;
    local function v1103()
        -- upvalues: l_v1097_0 (ref)
        return files.read(l_v1097_0);
    end;
    local function v1106(v1104, v1105)
        -- upvalues: l_v1097_0 (ref)
        if v1105 == nil then
            v1105 = false;
        end;
        return files.write(l_v1097_0, v1104, v1105);
    end;
    local function v1112(v1107)
        -- upvalues: l_base64_0 (ref), l_v509_3 (ref)
        local l_status_0, l_result_0 = pcall(json.stringify, v1107);
        if not l_status_0 then
            return false, l_result_0;
        else
            local l_status_1, l_result_1 = pcall(l_base64_0.encode, l_result_0, l_v509_3);
            l_result_0 = l_result_1;
            if not l_status_1 then
                return false, l_result_0;
            else
                return true, l_result_0;
            end;
        end;
    end;
    local function v1118(v1113)
        -- upvalues: l_base64_0 (ref), l_v509_3 (ref)
        local l_status_2, l_result_2 = pcall(l_base64_0.decode, v1113, l_v509_3);
        if not l_status_2 then
            return false, l_result_2;
        else
            local l_status_3, l_result_3 = pcall(json.parse, l_result_2);
            l_result_2 = l_result_3;
            if not l_status_3 then
                return false, l_result_2;
            else
                return true, l_result_2;
            end;
        end;
    end;
    local function v1122(v1119)
        -- upvalues: l_v513_2 (ref), v1112 (ref), v48 (ref), v1106 (ref)
        files.create_folder(l_v513_2);
        local v1120, v1121 = v1112(v1119);
        if not v1120 then
            v48.error("Unable to encode data");
            return false;
        elseif not v1106(v1121) then
            v48.error("Unable to write db");
            return false;
        else
            return true;
        end;
    end;
    local function v1126()
        -- upvalues: l_v513_2 (ref), v1103 (ref), v1122 (ref), v48 (ref), v1118 (ref)
        files.create_folder(l_v513_2);
        local v1123 = v1103();
        if v1123 == nil then
            if not v1122({}) then
                v48.log("Unable to create db");
            end;
            return {};
        else
            local v1124, v1125 = v1118(v1123);
            if not v1124 then
                v48.error("Unable to decode db");
                v48.log("Trying to flush db");
                if not v1122({}) then
                    v48.error("Unable to flush db");
                end;
                return {};
            else
                return v1125;
            end;
        end;
    end;
    local v1132 = {
        __index = function(_, v1128)
            -- upvalues: l_v1098_0 (ref)
            return l_v1098_0[v1128];
        end, 
        __newindex = function(_, v1130, v1131)
            -- upvalues: l_v1098_0 (ref), v1122 (ref)
            l_v1098_0[v1130] = v1131;
            v1122(l_v1098_0);
        end
    };
    l_v1098_0 = v1126();
    setmetatable(v507, v1132);
end;
v5("begin_binds_ctx");
v509 = nil;
v509 = {};
v513 = {};
do
    local l_v513_3 = v513;
    v1097 = function()
        -- upvalues: l_v513_3 (ref)
        local v1134 = ui.get_binds();
        for v1135 in pairs(l_v513_3) do
            l_v513_3[v1135] = nil;
        end;
        for v1136 = 1, #v1134 do
            local v1137 = v1134[v1136];
            l_v513_3[v1137.reference:id()] = v1137;
        end;
    end;
    v509.get = function(v1138)
        -- upvalues: l_v513_3 (ref)
        if v1138 == nil then
            return nil;
        else
            return l_v513_3[v1138:id()];
        end;
    end;
    v1097 = v21("binds_ctx.on_render", v1097);
    events.render(v1097);
end;
v5("begin_configs");
v513 = nil;
v513 = {};
v1097 = "MNVaEeiPfvJ4BgzWUmtsRZFS8OXc9kqhy3dobp5IDwuTAG6Kl2Cr7HnY10jxLQ+/=";
do
    local l_v1097_1, l_v1098_1 = v1097, v1098;
    l_v1098_1 = function(v1141)
        -- upvalues: l_base64_0 (ref), l_v1097_1 (ref)
        local l_status_4, l_result_4 = pcall(json.stringify, v1141);
        if not l_status_4 then
            return false, l_result_4;
        else
            local l_status_5, l_result_5 = pcall(l_base64_0.encode, l_result_4, l_v1097_1);
            l_result_4 = l_result_5;
            l_status_4 = l_status_5;
            if not l_status_4 then
                return false, l_result_4;
            else
                return l_status_4, l_result_4;
            end;
        end;
    end;
    local function v1151(v1146)
        -- upvalues: l_base64_0 (ref), l_v1097_1 (ref)
        local l_status_6, l_result_6 = pcall(l_base64_0.decode, v1146, l_v1097_1);
        if not l_status_6 then
            return false, l_result_6;
        else
            local l_status_7, l_result_7 = pcall(json.parse, l_result_6);
            l_result_6 = l_result_7;
            if not l_status_7 then
                return false, l_result_6;
            else
                return true, l_result_6;
            end;
        end;
    end;
    v513.encode = function(_, v1153)
        -- upvalues: l_v1098_1 (ref)
        return l_v1098_1(v1153);
    end;
    v513.decode = function(_, v1155)
        -- upvalues: v1151 (ref)
        return v1151(v1155);
    end;
end;
v5("begin_statistics");
v1097 = nil;
v1098 = v151.statistics;
local v1156 = "statistics";
local v1157 = {
    loads = 0, 
    misses = 0, 
    killes = 0, 
    total_time = 0
};
local v1158 = v507[v1156];
if v1158 == nil then
    v1158 = v1157;
end;
for v1159, v1160 in pairs(v1157) do
    if v1158[v1159] == nil then
        v1158[v1159] = v1160;
    end;
end;
local v1161 = 0;
local function v1167(v1162)
    local v1163 = {};
    local v1164 = math.floor(v1162 / 3600);
    local v1165 = math.floor(v1162 % 3600 / 60);
    local v1166 = v1162 % 60;
    if v1164 > 0 then
        table.insert(v1163, string.format("%dh", v1164));
    end;
    if v1165 > 0 then
        table.insert(v1163, string.format("%dm", v1165));
    end;
    table.insert(v1163, string.format("%ds", v1166));
    return table.concat(v1163, " ");
end;
do
    local l_v1098_2, l_v1156_0, l_v1158_0, l_v1161_0, l_v1167_0 = v1098, v1156, v1158, v1161, v1167;
    local function v1176(v1173)
        -- upvalues: l_v1167_0 (ref), l_v1098_2 (ref)
        local v1174 = l_v1167_0(v1173);
        local v1175 = string.format("%s##TOTAL_PLAYED", v1174);
        l_v1098_2.total_played_button:name(v1175);
    end;
    local function v1180(v1177)
        -- upvalues: l_v1167_0 (ref), l_v1098_2 (ref)
        local v1178 = l_v1167_0(v1177);
        local v1179 = string.format("%s##SESSION_TIME", v1178);
        l_v1098_2.session_time_button:name(v1179);
    end;
    local function v1184(v1181)
        -- upvalues: l_v1167_0 (ref), l_v1098_2 (ref)
        local v1182 = l_v1167_0(v1181);
        local v1183 = string.format("%s##TIME_LEFT", v1182);
        l_v1098_2.time_left_button:name(v1183);
    end;
    local function v1187(v1185)
        -- upvalues: l_v1098_2 (ref)
        local v1186 = string.format("%s##KILLES", v1185);
        l_v1098_2.killes_button:name(v1186);
    end;
    local function v1190(v1188)
        -- upvalues: l_v1098_2 (ref)
        local v1189 = string.format("%s##MISSES", v1188);
        l_v1098_2.misses_button:name(v1189);
    end;
    local function v1191()
        -- upvalues: v507 (ref), l_v1156_0 (ref), l_v1158_0 (ref)
        v507[l_v1156_0] = l_v1158_0;
    end;
    local function v1192()
        -- upvalues: v23 (ref), v1184 (ref), v1176 (ref), l_v1158_0 (ref), v1180 (ref), l_v1161_0 (ref), v1191 (ref), v1192 (ref)
        if v23.time ~= nil then
            v1184(v23.process());
        else
            v1176(l_v1158_0.total_time);
            l_v1158_0.total_time = l_v1158_0.total_time + 1;
            v1180(l_v1161_0);
            l_v1161_0 = l_v1161_0 + 1;
            v1191();
        end;
        utils.execute_after(1, v1192);
    end;
    local function v1194(v1193)
        -- upvalues: l_v1158_0 (ref), v1190 (ref), v1191 (ref)
        if v1193.distance > 32 then
            return;
        else
            l_v1158_0.misses = l_v1158_0.misses + 1;
            v1190(l_v1158_0.misses);
            v1191();
            return;
        end;
    end;
    local function v1199(v1195)
        -- upvalues: l_v1158_0 (ref), v1187 (ref), v1191 (ref)
        local v1196 = entity.get_local_player();
        local v1197 = entity.get(v1195.userid, true);
        local v1198 = entity.get(v1195.attacker, true);
        if v1196 == v1197 or v1196 ~= v1198 then
            return;
        else
            l_v1158_0.killes = l_v1158_0.killes + 1;
            v1187(l_v1158_0.killes);
            v1191();
            return;
        end;
    end;
    local function v1200()
        -- upvalues: v1187 (ref), l_v1158_0 (ref), v1190 (ref), v1191 (ref)
        v1187(l_v1158_0.killes);
        v1190(l_v1158_0.misses);
        v1191();
    end;
    v506.get_event_bus().enemy_shot:set(v1194);
    v1199 = v21("statistics.on_player_death", v1199);
    events.player_death(v1199);
    v1192();
    v1200();
end;
v5("begin_presets");
v1098 = nil;
v1156 = v151.presets;
v1157 = "presets";
v1158 = {};
v1161 = v507[v1157] or v1158;
v1167 = {};
local v1201 = {};
local v1202 = nil;
local l_match_0 = string.match;
do
    local l_l_match_0_0 = l_match_0;
    v1202 = function(v1205)
        -- upvalues: l_l_match_0_0 (ref)
        return l_l_match_0_0(v1205, "^()%s*$") and "" or l_l_match_0_0(v1205, "^%s*(.*%S)");
    end;
end;
do
    local l_v1156_1, l_v1157_0, l_v1161_1, l_v1167_1, l_v1201_0, l_v1202_0, l_l_match_0_1 = v1156, v1157, v1161, v1167, v1201, v1202, l_match_0;
    l_l_match_0_1 = function()
        -- upvalues: v507 (ref), l_v1157_0 (ref), l_v1161_1 (ref)
        v507[l_v1157_0] = l_v1161_1;
    end;
    local function v1217()
        -- upvalues: v50 (ref)
        local v1213 = {};
        local v1214 = v50.get();
        for v1215, v1216 in pairs(v1214) do
            v1213[v1215] = v1216[1]:export();
        end;
        return v1213;
    end;
    local function v1223(v1218)
        -- upvalues: v50 (ref)
        local v1219 = v50.get();
        for v1220, v1221 in pairs(v1218) do
            local v1222 = v1219[v1220];
            if v1222 ~= nil then
                v1222[1]:import(v1221);
            end;
        end;
    end;
    local function v1228(v1224, v1225, v1226, v1227)
        return {
            name = v1225, 
            author = v1224, 
            content = v1227, 
            created_at = v1226, 
            updated_at = v1226
        };
    end;
    local function v1231(v1229)
        -- upvalues: v1217 (ref), v1228 (ref)
        local v1230 = v1217();
        if v1230 == nil then
            return nil;
        else
            return v1228(common.get_username(), v1229, common.get_unixtime(), v1230);
        end;
    end;
    local function v1235(v1232)
        -- upvalues: v513 (ref), l_v1167_1 (ref)
        if type(v1232.content) == "string" then
            local v1233, v1234 = v513:decode(v1232.content);
            if not v1233 then
                return;
            else
                v1232.content = v1234;
            end;
        end;
        table.insert(l_v1167_1, v1232);
    end;
    local function v1239(v1236)
        -- upvalues: l_v1201_0 (ref)
        for v1237 = #l_v1201_0, 1, -1 do
            local v1238 = l_v1201_0[v1237];
            if v1238.name == v1236 then
                return v1238, v1237;
            end;
        end;
        return nil, -1;
    end;
    local function v1241(v1240)
        -- upvalues: l_v1201_0 (ref)
        return l_v1201_0[v1240];
    end;
    local function v1244(v1242)
        -- upvalues: v1239 (ref), l_v1202_0 (ref), v1223 (ref)
        local v1243 = v1239(l_v1202_0(v1242));
        if v1243 == nil or v1243.content == nil then
            return false, "Preset is not valid";
        else
            v1223(v1243.content);
            events.update_records:call();
            return true, v1243;
        end;
    end;
    local function v1251(v1245)
        -- upvalues: l_v1202_0 (ref), v1239 (ref), v1231 (ref), l_v1161_1 (ref), l_l_match_0_1 (ref), l_v1167_1 (ref), v1217 (ref)
        v1245 = l_v1202_0(v1245);
        if v1245 == "" then
            return false, "Preset name is empty";
        else
            local v1246, v1247 = v1239(v1245);
            if v1246 == nil then
                local v1248 = v1231(v1245);
                if v1248 == nil then
                    return false, "Unable to create preset";
                else
                    table.insert(l_v1161_1, v1248);
                    l_l_match_0_1();
                    return true, v1248;
                end;
            elseif v1247 ~= -1 and v1247 <= #l_v1167_1 then
                return false, "Can't modify script preset";
            else
                local v1249 = v1217();
                if v1249 == nil then
                    return false, "Unable to export config";
                else
                    local v1250 = common.get_unixtime();
                    v1246.content = v1249;
                    v1246.updated_at = v1250;
                    l_l_match_0_1();
                    return true, v1246;
                end;
            end;
        end;
    end;
    local function v1256(v1252)
        -- upvalues: v1239 (ref), l_v1202_0 (ref), l_v1167_1 (ref), l_v1161_1 (ref), l_l_match_0_1 (ref)
        local v1253, v1254 = v1239(l_v1202_0(v1252));
        if v1254 ~= -1 and v1254 <= #l_v1167_1 then
            return false, "Can't delete script preset";
        else
            local v1255 = v1254 - #l_v1167_1;
            table.remove(l_v1161_1, v1255);
            l_l_match_0_1();
            return true, v1253;
        end;
    end;
    local function v1261()
        -- upvalues: l_v1201_0 (ref), l_v1167_1 (ref)
        local v1257 = #l_v1201_0;
        if v1257 == 0 then
            return {
                [1] = "Empty"
            };
        else
            local v1258 = {};
            for v1259 = 1, v1257 do
                local l_name_0 = l_v1201_0[v1259].name;
                if v1259 <= #l_v1167_1 then
                    l_name_0 = string.format("%s\a{Disabled Text}  ~  pinned", l_name_0);
                end;
                v1258[v1259] = l_name_0;
            end;
            return v1258;
        end;
    end;
    local function v1266()
        -- upvalues: l_v1201_0 (ref), l_v1167_1 (ref), l_v1161_1 (ref)
        l_v1201_0 = {};
        for v1262 = 1, #l_v1167_1 do
            table.insert(l_v1201_0, l_v1167_1[v1262]);
        end;
        table.sort(l_v1161_1, function(v1263, v1264)
            return v1263.name < v1264.name;
        end);
        for v1265 = 1, #l_v1161_1 do
            table.insert(l_v1201_0, l_v1161_1[v1265]);
        end;
    end;
    local _ = nil;
    local function v1271(v1268)
        -- upvalues: v1241 (ref), l_v1156_1 (ref)
        local v1269 = v1268:get();
        if v1269 == nil or v1269 <= 0 then
            return;
        else
            local v1270 = v1241(v1269);
            if v1270 == nil then
                return;
            else
                l_v1156_1.name:set(v1270.name);
                return;
            end;
        end;
    end;
    local function v1274()
        -- upvalues: v1244 (ref), l_v1156_1 (ref), v48 (ref)
        local v1272, v1273 = v1244(l_v1156_1.name:get());
        if not v1272 then
            v48.error(v1273);
            return;
        else
            events.update_records:call();
            v48.success(string.format("preset %s loaded", v1273.name));
            return;
        end;
    end;
    local function v1277()
        -- upvalues: v1251 (ref), l_v1156_1 (ref), v48 (ref), v1266 (ref), v1261 (ref)
        local v1275, v1276 = v1251(l_v1156_1.name:get());
        if not v1275 then
            v48.error(v1276);
            return;
        else
            v1266();
            l_v1156_1.list:update(v1261());
            v48.success(string.format("preset %s saved", v1276.name));
            return;
        end;
    end;
    local function v1280()
        -- upvalues: v1256 (ref), l_v1156_1 (ref), v48 (ref), v1266 (ref), v1261 (ref)
        local v1278, v1279 = v1256(l_v1156_1.name:get());
        if not v1278 then
            v48.error(v1279);
            return;
        else
            v1266();
            l_v1156_1.list:update(v1261());
            if v1279 ~= nil then
                v48.success(string.format("preset %s deleted", v1279.name));
            end;
            return;
        end;
    end;
    local function v1284()
        -- upvalues: v1217 (ref), v513 (ref), v48 (ref), l_clipboard_0 (ref)
        local v1281 = v1217();
        if v1281 == nil then
            return;
        else
            local v1282, v1283 = v513:encode(v1281);
            if not v1282 then
                v48.error("can't encode data");
                return;
            else
                l_clipboard_0.set(string.format("%s_", v1283));
                v48.success("preset exported");
                return;
            end;
        end;
    end;
    local function v1288()
        -- upvalues: l_clipboard_0 (ref), v513 (ref), v48 (ref), v1223 (ref)
        local v1285 = string.match(l_clipboard_0.get(), "(.-)_");
        if v1285 == nil then
            return;
        else
            local v1286, v1287 = v513:decode(v1285);
            if not v1286 then
                v48.error("can't decode data");
                return;
            else
                v1223(v1287);
                events.update_records:call();
                v48.success("preset imported");
                return;
            end;
        end;
    end;
    l_v1156_1.list:set_callback(v1271);
    l_v1156_1.load:set_callback(v1274);
    l_v1156_1.save:set_callback(v1277);
    l_v1156_1.delete:set_callback(v1280);
    l_v1156_1.export:set_callback(v1284);
    l_v1156_1.import:set_callback(v1288);
    v1235(v1228("density", "Defensive", -1, "qCfof7ezm72eRHQaZeQEOFO3kF27foDdqHldBsE0zs8lgryngpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foErzaM7Ba87gpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foEngs97grfYBok9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVf7BsEngsRYzsb1SVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghUHmhmPZoXnp6OCfjfIG9foE1BofHgofYgaO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBoylgafYgoMYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgaU7gsUHgsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgoM0zsRHBoO9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBoUR0PsEZsS7gRS7OCOFZrkie6Oip6OCfjfIG9foEHBa8HBob1gsp9fowxSVfCgr9nzsyrgrN9foDlht29fofCgoMngob0BsZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2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foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsS7gRS7p6fEew9dfjfIG9fof7BaEHBsEYgpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foU2Bsf7zsy2zsO9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgsE7BrfnzsEYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgoyCgafHgsO9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQaZeQvcdNNXSfyvdNEkFgTfoDdqHldBs97BaEHBay1BZldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBaEYgab2grN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfCga90BsElgrU2SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBo8CBrBrBoylzZldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsS7gRS7Q6feNpOFAdzdv6kF2AfdldfCgNsbkBmZghUHmhRIZ6c5p6OCfjfIG9foErgsyrzaM0BaO9fowxSVfCgr9nzsyrgrN9foDlht29foEngrU1BrM1gsN9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBo9rgoB0zaMYBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foB2zsUCgof0Bre9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghUHmhRn2KkYk3ciGwc59dzdvxSVf2za8CgryrzsfrSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foflBrMHgrB2zZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof1zaE2BrRrzak9fowxSVfCgr9nzsyrgrN9foDlht29foR2goU1BoRlBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezm72eRHQaZeQsc5Z3Xnp6OCfjfIG9foE2zafrBoEnzs39fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfCgsylgo9lgs9YSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCgsfngsM7gop9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYBo9Ygs9lBsk9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQaZeQskie6Oip6OCfjfIG9foEHzsy2go9ngae9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBsb0zaE1gr8CSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBofYBaE7grRrBHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUlgaMCBoErgrk9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQRS7mpO5eHcPUdzdvxSVf2goflgsfYgrp9fowxSVfCgr9nzsyrgrN9foDlht29foBrBrbnBsB0zZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUCBa8rBay7Bsp9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfnBay2Br92gaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghZeQEkFgTXF0IfoDdqHldBsfrBsM0BoMCBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foRrgaf0goMlBHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzaRlBa9ngsp9fowxSVfCgr9nzsyrgrN9foDlht29fobHgob2gofYzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7ezm72eRHQRS7OCOFZrkie6Oip6OCfjfIG9fof2grb1BsbHBaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgabrBoU7goy2SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBryrzsR7goElgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foRnBobrBafYBpldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsSHmhtF1yUFpCfoDdqHldBs8HBry1BrR1gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foB7gaMnzsb1zZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBHzaRlBo87Bsk9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldga80BaE2Bs82SVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghZeQvcdNNXSfyvdNEkFgTfoDdqHldBsR7zsB2grR2BeldzIG9fofYgr80zaBYBeldzoNQ4eldBoBlBrUHgrRngpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrBr8YBaR7gayCSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzafHBsyrgs8YSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsSHmhsn1yRiZpXCfjf50Hcild4Vfof7ezm72eRHQRSHvHc50wc59dzdvxSVf2gaU1BsB2BrfYSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foEnzsy1gaf0zag9fowxSVfCgr9nzsyrgrN9foDlht29foE1grMYgsEnBag9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBsU7zsfYBrU7SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsSHmhRn2KkYk3ciGwc59dzdvxSVf2zsElgof1goRnSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofYBofrzsM0BrO9fowxSVfCgr9nzsyrgrN9foDlht29foBHgsfCzsMYBom9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrzafCBay0gsMHSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsSHmhRn0p8FGwc59dzdvxSVfrBr9rBa9lzs8nSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgoy0gsflzsElSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUHgoECBayrgeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob2Brb1gs80gZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpld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gob1Br9lSVfjO5eA9nZQ4eldBrB1BrRHBay7BeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgaMHzaBlBaB1BZldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgaMYBobnzs8lgHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgafnzsBrBoECBpldzIG9fofYgr80zaBYBeldzImCkFZQ4eldzaRCgobrzsU1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzay1BoMlBsRlSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf0gafrzaE2grZ9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf0gob0gsfHBa39fowxSVfCgr9nzsyrgrN9fow79IZphS7d4Vfof7ezZEpVRpZRmZQaZeQEOFO3kF27foDdqHldBsbHBrbYBayYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQaZeQEkFgTXF0IfoDdqHldzaE1BrR2zs8YSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQaZeQi95Zp9Ym3c5mwc59dzdv6kF2AfdldfCgNspmvUpvZZEZhUHmhtF1yUFpCfoDdqHldBrMYBrMrBoMYgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhtF1yUFpCfV8ymPZoXCfjfIG9foUCBrBHBaMnBav9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeS7gRS7Q6feNpOFAdzdv6kF2AfdldfCgNspmvUpvZZEZhUHmhRIZ6c5p6OCfjfIG9foEYBrf2za9Czse9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeS7gRSHgAcYkY8F2TXF0IfoDdqHldBo8YBrR1gaBrBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhRn0p8FGwc59dzdvxSVf2gry7goR1Brm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeS7gRSHg78F0bXF0IfoDdqHldBrU0BabrBaE0geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhZeQEOFO3kF27foDdqHldBrEngoy7BoBlBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhZeQEkFgTXF0IfoDdqHldBr91zs90grE1BeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhZeQi95Zp9Ym3c5mwc59dzdv6kF2AfdldfCgNspmvUpvZZEZhZeQvcdNNXSfdzdvxSVf2grB2gaflBsMnSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7p6fEew9dM5fEmH8nAdzdvxSVfrBoblBa8YBoyYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7Q6feNpOFAdzdv6kF2AfdldfCgNspmvUpvZZEZhZeQtkF06XF0IfoDdqHldgaM1go8HBoM1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRSHgAcYkY8F2TXF0IfoDdqHldBsR7ga97go90BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhZeQsc5Z3Xnp6OCfjfIG9foBYga81gr9rgse9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeSHmhRYm3c5mwc59dzdvxSVfCgr87Br97gaEHSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7membZzR7pFmZQaZeQEOFO3kF27foDdqHldBs81BaE2zsE7BpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgoR0gob2goRrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfCgo9ngryHgryrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29fofYBaf2gry0grp9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof0BrMrzaMrgse9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBrgabnBofnBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBHBrU0gry7gsm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQhS7d4Vfof7membZzR7pFmZQaZeQEkFgTXF0IfoDdqHldBoBlBrMYgaMCBpldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd72BamQhS7ASVfrBoyCgoUngsBrSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foBCzsbYgaMngog9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gY7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foD2ht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foDCBIHQht29foBrBoR2BrB1gsp9fowxSVfCgr9nzsyrgrN9foDr4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBsylht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foD2zaNQhS7ASVfrgsRrBrBHBoB2SVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd7HgS7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foU2gs90BrBrBrm9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldzsRYzsEYBsUlSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7OCOFZrkie6Oip6OCfjfIG9foflgaE0zs91Bsp9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoRngsyHBof1BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyrBoU7Ba8ngeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrUHBoyCgs87BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrbHgsBYBaU2BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfYgobnBaBYBpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7p6fEew9dfjfIG9fof2Brb7zs90geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofCBr92grflBaZ9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foD2ht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29fofrgrRlBa9CBsg9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfj4s8rht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDrzSHQht29fof7BabHBab2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fofYzaBYgrb0gaN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foBHBrb7ga8YBrk9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDGBrNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoE1BP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBsylhSHQ4eldgsEHBaErBs9CSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQaZeQvcdNNXSfyvdNEkFgTfoDdqHldBsyrBa80BoUrgeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29fof7Bo8HzaUCgae9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foD7ht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDnht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD7ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDnht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBo80BoEYzsb0geldzIG9fofYgr80zaBYBeld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gr80zaBYBeldzoEHhSHQ4eldgaf0BoMlBafCgeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzaf0zaBCgaMrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhSHQfdldfCgEmROespgvZbZhUHmhRIZ6c5p6OCfjfIG9foEYBoflBrfHzZldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foD7zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfj4sErhSHQ4eldBsyYBs9HBoUngeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCBs80BabrgaO9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2BaZQhS7ASVf7Bsbngay2zaRYSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foUCBsBHgrR0zak9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf7BoB1zs80BsyrSVfjqHldBo9Ygob1Br9lSVfjBd29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBomQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzob7ht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foD0gPHQht29fo9YgoylBsBnBpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzoZQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzoOQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoflht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQhtfAfdBomEZimR0stZOeS7gRSHgAcYkY8F2TXF0IfoDdqHldBoB0Bo8rBrbYBeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfCgaB7grUlgsylSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBS7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzofChSHQ4eldBoylzsbnBrRCBHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrBHzaU2grE0gpldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDGzapQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf7gay7gsUHgam9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo91zaUCgr92BHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD1gY7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzsUHBsMrzafYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQaZeQsc5Z3Xnp6OCfjfIG9foECzs91zabngaO9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCzS7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBsylht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foD2zaNQhS7ASVf2zsf0goRrBrbrSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfj4sy1hSHQ4eldBoB1goMlBrBlSVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd77zP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBlBsM7goyHgaZ9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldgaE0Ba9YgsE1geldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVf7gsb0BsU2gr39fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foU1zsE7zsf7gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQaZeQskie6Oip6OCfjfIG9foflBo90goRnBap9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foB2gsB1go92BeldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrflzafYBof7zeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfrgsR2Ba87goblSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzd71zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjza3QhS7ASVfrgr9CBr91gsB1SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrylBs82Br8lgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob7grEHBaUHgHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQEOFO3kF27foDdqHldBsEYzsMHBrE7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfCBrBlzsyCBof1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29fof7goy1Bs97BrO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof1gr9HzsM2gog9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foBlgr9nBaM2gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBnBrBCgs80goN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo8lzayCBrB0gZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQEkFgTXF0IfoDdqHldBsfrBs9YzafYgZldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd72BamQhS7ASVfCzsRrzsBYBsM1SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBskQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBS7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldzImCkFZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBovQhS7ASVfrBab2gr9CBrEnSVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd7HgS7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBHBaMHgaRlgag9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldgafHgof2Bsy7BeldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2zaNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoE1BPHQht29fo97BaynBaE0geldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVf0BrMYBsU1zsk9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQi95Zp9Ym3c5mwc59dzdvxSVf2BaUlBoECBay2SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf2Bs8HBrR7goZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoUCgsf2go9CgZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBobCBsyngoMlzeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf7zsEYgsy7Ba39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29fo97gaf1zaRHSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhSHQfdldfCgEmROespgvZbZhZeQvcdNNXSfdzdvxSVf2BaMrBsR2gr82SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foEHBay1gr9Hgsv9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoBnBsMCBaUHzeldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDGgogQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoB0hSHQ4eldBoyYgrU7gs9rBeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoeQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBryHgrB7BaEHzZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foRrgsbYBa9lSVfjqHldBo9Ygob1Br9lSVfjBd29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfj4sBlht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2zaNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoE1BPHQht29fob7Bs9HBs97gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQhtfAfdBomEZimR0stZOeSHmhtF1yUFpCfV8ymPZoXCfjfIG9foE2zs97zaMCBHldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoBnht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDGgsvQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoU1ht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDGBsmQhS7ASVf2BoM0gaU2BaM7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoM1ga91gsUYBeldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd71zSHQht29fofnBaynBrb0Brg9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyYgsfCzaB2gZldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoB1ht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2BsNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoE2BPHQht29foB7zsRnBsBCzsm9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foD7ht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDnht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD7ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDnht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrb0zaEHzaMnBHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9C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gr9nzsyrgrN9foDHht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDnht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foEngsUnzsRHBs39fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBsy7gaRHBafCBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof2gaRnBsBHzsp9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2BaZQhS7ASVfrza8Ygr9CgaBCSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldgaMlgs8lgr87BeldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foD7zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfj4sErhSHQ4eldza9HBa90za81SVfjqHldBo9Ygob1Br9lSVfjBd29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBomQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzob7ht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foD0gPHQhS7d4Vfof7membZzR7pFmZQRSHgAcYkY8F2TXF0IfoDdqHldBs8CBoR2zsECBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf2zaM0BsylgsU7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfCgoMngrMrgabYSVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzd71zS7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof0go91zay0Bse9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBrM0zsB2gsB0BHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoeQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foDCBIHQht29foRYgoRngrEngpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD1gY7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzafngs8HzsbYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQsc5Z3Xnp6OCfjfIG9foE0Bs8CBaUnBoe9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBsbrBrf0za9HBZldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBsbHza80Bsb7gHldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzof0ht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2zaNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoE1BPHQht29fof2za81zsBrBsp9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfj4sU1ht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBo90BsU0BsUCBpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzoOQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfrzayngaUCgsf7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzsBngoBCBsElSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfj4sy1hSHQhtfAfdBomEZimR0stZOeSHmhRYm3c5mwc59dzdvxSVf2BoM7BrblBryrSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzd71zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjza3QhS7ASVf2zaM1zsy1gaynSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfCzsMrzsB0gsy1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaf7zsM0goUYBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf0BrBYBaEnzaZ9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldzsRlgrbHzaEHSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldzs9nBsy0BaE2SVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgeFemtUtfjfIG9foBCzsMCzaRCzaO9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaUlgrBngay2SVfjqHldBo9Ygob1Br9lSVfjBrfHht29foElgobrgoR1BrZ9fowxSVfCgr9nzsyrgrN9foDHBP7ASVf2grBHBaU1grN9fowxSVfCgr9nzsyrgrN9foDrBoZQ4eldBs9HzaM7BoM1BeldzIG9fofYgr80zaBYBeldz5O3cPgpht29foE0Bs8Ygsylgs39fowxSVfCgr9nzsyrgrN9foDHBP7ASVfCBoR1BrbYzsbnSVfjqHldBo9Ygob1Br9lSVfjBrfHht29fofrBrBCgsfHBak9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgaMCgsEHBs97SVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBo9HzaECBoE1BHldzIG9fofYgr80zaBYBeldzoRlht29fof0goM7zaylzs39fowxSVfCgr9nzsyrgrN9foDHBP7ASVfCzsbHBs82BsyYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrE2ga8rBrf2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBrf2Br8HgsB7BZldzIG9fofYgr80zaBYBeldzoRlht29foBCBoBYBrR1gsk9fowxSVfCgr9nzsyrgrN9foDHBP7ASVfrBoRlgrbrzsy1SVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBrRYgsMYBoE0BeldzIG9fofYgr80zaBYBeldz5O3cPgpht29foB1goRrgrylzaN9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfHBaM2BaE2zsg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfHzablgrBrzav9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfYBoB2zs8nBsm9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7HvR7BdzdvxSVf2ga9nBob0Bs8HSVfjqHldBoR7Bo80Ba9YSVfjFYG9foE7Bo91gsR1BrO9fow58F2rOt29foEYBrRYBa82zav9fow58F2rOt29foE0BoyCBobnBZldzImCkFRASVf2zsB7zs80grm9foDYzV29foflzsMHBsRlBs39foDl4eldBoB0zsU7BablgZldzoMASVfrBrMYBa81Br8rSVfjkPvHOSHk4eldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBs9lgs8HBs80zZldzIG9fofYgr80zaBYBeldzoblhSHQ4eldBof7Bsf7zsR7gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fobCBoMCBoyCBpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBrMYBoRCgsy2SVfjqHldgaMHBaU1BoEHBeldzIG9foEHBrbYgsylgsO9fow6kF2A4eldBrEngaErBaU0SVfjcIZAcV29foBYgrBYzsbrgsZ9fowxSVfCgr9nzsyrgrN9fow9fpldht29fo8rgaBrgrBCBeldz50Hci2Qht29fof0goECgsUlBom9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2gsUnBsRYgrU7SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foB2zsUngafYgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fo8nBoRlBs8YBHldzIG9fofYgr80zaBYBeldzoE7gsNQ4eldza90BaE2zablSVfjqHldBo9Ygob1Br9lSVfjBY7ASVf0Bo8lBsb1gHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgobYBab2gofnSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhtfAfdBosRQFmRHespUdzdvxSVf2Ba9nBs92gok9fowxSVf7BaRlgayCBsRlSVfjqHldBsM1grBYBoBYzeldzIG9fofYgr80zaBYBeldzokQ4eldBoylzsf7BoBnBZldzIG9fofYgr80zaBYBeldzoRlht29foBlzaRYBrM7gsk9fowxSVfCgr9nzsyrgrN9foDlht29fobCBoMCBoyCBpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgaBlgaE1zaMrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrfrBofCzsE1BpldzIG9fofYgr80zaBYBeldzImCkFZQhtfAfdBoRbePmRvWZVfjfIG9foE0zsU1gsBlBs39fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElBr8HgrB1grm9fowxSVfCgr9nzsyrgrN9foDCgP7ASVf2gaRYgsRrgrUCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCBoUYzsM2BsRrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUrgoU2Bo8lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUrgo8lgsfrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsy2BsB0Bop9fowxSVfCgr9nzsyrgrN9foDlht29foU2Bab1BsBCzap9fowxSVfCgr9nzsyrgrN9foDlht29foUCBa9Hzsy0gov9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBo90go81BoMrBpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsE2BaMnBrECzZldz50HcilASVf2BoE1gr9CBr8YSVfjqHldBo9Ygob1Br9lSVfjSVvl9oH9Seldc5pIXPmrkiQ6OZ29SVfy9INC8CNC8CNd8FgTkPv38nAQSe29f5mpcie0Se29fdNC9VNDXSUQSe29fbOw95ZbSe29fpldht29foE7BsyYzaB7Bsv9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBsbrgaR1zsynSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oy0gaE2gr92BobYgaR7zaBASVf2gr9ngrO9foDl4o91zafrgsBngoB7gaUHBsbASVf2gr9nzak9foDl4o8HzayCBrR7zs97grUngYHkht29foflzabrgsblBap9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6goR1zafrgsU0grUYga8Y4eldBs9Ygo9nSVfjBV1ngsy1BoBHgabYga97go9ASVf2gr9nzak9foDl4oy0BaE0goE7gaR1Bay7BseQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofrgaUnBoUYBrZ9fowxSVfCgr9nzsyrgrN9foDrht29fofrzsU1BofngpldzIG9fofYgr80zaBYBeldzoOQ4eldBobHzsb2zsB1gZldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVf2zsB7gsy0zaO9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6Br9CgsU0BafYBoM7gsErgsRASVf2gr9ngrO9foDl4o9lgsy1BoBYBaUYBsbHgaBASVf2gr9nzak9foDl4oU0zaMrzsf7gs8lgsUnza9HhZHQ4eldBoM1zsBHzsMlzZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV11BsbnBa90BsB7zsU2BsM24eldBs9Ygo9nSVfjBV1nBrbCBsRYBa9Ygry0BrMY4eldBs9YgoyYSVfjBV1HBs9nga9lza9HgrUlBaR2hZHQht29foflzsMHBsRlBs39foDlhS7ASVfrgaR7BsUngoRHSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfrgrM1gaR1zsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0grfYgsyrzsv9fowxSVfCgr9nzsyrgrN9foD1BPHQht29foB0gsRHzafnBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foEHBoBYBrRrzsk9fowxSVfCgr9nzsyrgrN9foDGBS7ASVf2gsBlBoEYBsN9fowxSVfCgr9nzsyrgrN9foDGBS7ASVfCBay0Br8HBaB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfHBoyrgaUCBoO9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldgafrBsE1grbCBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBrzaU2gofngr39fowxSVfCgr9nzsyrgrN9foDlht29foUCBsB7BsyHgHldzIG9fofYgr80zaBYBeldzo9lht29foblBsErBof2BpldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldgsUHgayrgr80SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBs9Hgsf2Brb0zeldzIG9fofYgr80zaBYBeldzoBHht29fofCzayCgs8CBse9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBrR2zaR2Br92SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCBr87gs8HgsBlSVfjqHldBo9Ygob1Br9lSVfjgY7ASVfCgrynBabrgrbYSVfjqHldBo9Ygob1Br9lSVfjBo3Q4eldBoy7BaB1goUlgZldzIG9fofYgr80zaBYBeldzoflht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oMASVf2gr9ngrO9foDl4oMASVf2gr9nzak9foDl4o91gaB2Br90grbHBa97gaOQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foBYgrbngsM1zse9fowxSVfCgr9nzsyrgrN9foDCgS7ASVf7gsBngoR2Bsm9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf0BaE2BrfCBsv9fowxSVfCgr9nzsyrgrN9foDrBSHQhS7d4VfofHvesbmeRdfjfIG9foE1BryYzayrgoO9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foflzabrgoRlBrm9fowxSVfCgr9nzsyrgrN9foDlht29foBYgrBYzsbrgsZ9fowxSVfCgr9nzsyrgrN9fow9f5OCcYg7fiH3O5p3SVvQ4eldBr91gsy1Br8YgpldzIG9fofYgr80zaBYBeldzoeQhS7ASVfCBsf0zaf2Bs97SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaUlBaM0Bs8rSVfjqHldBo9Ygob1Br9lSVfjgP7ASVf2gsUngaflgsy0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBo9HBs8CgaRCSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foECgs8HBr9HBrZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoM6BPHkht29foBrgafHgr9ngrp9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoM6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBof1zs8Cgo8rBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oUYBaR1zafngoy7zsR2gr3QSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofrgablgo8CBag9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBr9CgaR7grf2SVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBrB2gs8HgrblBpldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBrBrBaECBoM1BHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foUCBrE7grE0zae9fowxSVfCgr9nzsyrgrN9foDCht29foUrBobnBaBCgHldzIG9fofYgr80zaBYBeldzImCkFZQhS7ASVfCgsfnzsb7Bs92SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBoE1Bo9Ygr9HgHldzIG9fofYgr80zaBYBeldzoNQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBryCBsB7zs92BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBrM7gaBHgsyCzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oUYBaR1zafngoy7zsR2gr3QSSHQ4eldBoM0BaR2gsM2zeldzoNQhSHQ4eldBrE0zsB7BsEnBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE1gr9HgrRngsk9fowxSVfCgr9nzsyrgrN9foDlht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfCgrbYgsRlBaEYSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4o9lgsy1BoBYBaUYBsbHgaBASVf2gr9ngrO9foDl4o8CgrUHBsMlBoR0grylzayASVf2gr9nzak9foDl4o8ngo8ngo81goRrgay1BsOQSS7ASVfrgoEHgr9YBrBnSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foDl4oMASVf2gr9ngre9foDl4oMASVf2gr9ngrO9foDl4oMASVf2gr9nzak9foDl4oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29fo90zsb1zsR2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVfCBsyCgr9YgrRYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lhZHQht29foflzsMHBsRlBs39foDlhS7ASVfrzaf2BrU0grE2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldgsbYzaRrBrblSVfjqHldBo9Ygob1Br9lSVfjkPvHOSHQht29foy0gof2za8CzZldzIG9foUlgsM7zaf2gsN9fowxSVf2Boy2Brf0zaO9fowxSVfCgr9nzsyrgrN9fow9fINCOsH9SeldUbpRUtNRmZgRSe29fdN6cnH6fi0K9PfySVvQ4eldBsBrBoRCzs9nBZldzIG9fofYgr80zaBYBeldz5O3cPgpht29foErgr91za82zeldz50HcilASVf2gaMnzs82grUHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVf2gsU0BoUHBop9fow6kF2A4eldBs8YgoU7gs8YBeldzIG9fofYgr80zaBYBeldzovQ4eldBsyYgrRYgs8HgHldzIG9fofYgr80zaBYBeldzoeQ4eldBof2BaRHBobYSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foBHBay1zaU7zak9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr8YgpldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr81gHldzoM6zsf2gs81gob2grBlgab0BYHkht29foyHgabnBaR0gZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9Ygo9nSVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9YgoyYSVfjBV10BoEHgoynzsEYBrM7zsbrht2xSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oE1zafrgsB2Bo9lBafYBs8ASVf2gr9ngrO9foDl4oE1zafrgsB2Bo9lBafYBs8ASVf2gr9nzak9foDl4oUHzayCBrRnBs8nzaB0gIHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBofHzsfHgof1geldzIG9fofYgr80zaBYBeldzoElBP7ASVfCBrb7zafCgoO9fowxSVfCgr9nzsyrgrN9foDnht29fofHzaMHBa9Cgom9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBrRlzay1gaU1gHldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lhZHQ4eldzaR7zs8lgsbHSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQ4PG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6gsM2zs8lzaErzsb0Bs9n4eldBs9Ygo9nSVfjBV1HBaE0goM1BsB0zsb2gr8ASVf2gr9nzak9foDl4oRlBsbnBay2Brb0zsEYgIHkhS7ASVfCBablgsEHBaE1SVfjBSHQ4eldBoyCgrECBsy2Beldz50HcilASVfrBrUrgoMnBsN9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBrRlzay1gaU1gHldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lhZHQ4eldzaR7zs8lgsbHSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4ofrgsf0gaErBrUCga9HzabASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oR1zafrgsB2za8nBa9rgoeQ4PG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BsEYgoUYBa8ngrECBr90ga8ASVf2gr9ngrO9foDl4oB0BoEHgoy0zabYgsBYBoBASVf2gr9nzak9foDl4oE7gsM0zaM7gsUnzaBrBaB1hZHQht29foflzsMHBsRlBs39foDlhS7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBrRlzay1gaU1gHldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1YBaBlgs8YgsfnzaEYBrfC4eldBs9Ygo9nSVfjBV1nBaE0BrRnBoRlgr8CzsUASVf2gr9nzak9foDl4oR2Bo9lzsU0zaUlgsUHgoZQSS7ASVf1gsU0goMHzsZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6za9Ygrf0BoBYBa90goflgV29foEYgr8YgpldzoM6gr8nBrBYgaR7BrE0BaMlBd29foEYgr81gHldzoM6goUlBablgr8rgs81za91BI7AqHldBs9Ygo9lSVfjBV10BoE1grRASVf2gr9ngre9foDl4o9lgrUCBrRngr9YBsb2Bs8ASVf2gr9ngrO9foDl4o8HgaBrBaM2gsE1BoU0gsEASVf2gr9nzak9foDl4oRHBobngafYBaE2gay0zakQSSHQ4eldBoM0BaR2gsM2zeldzoeQht29foBYBay7gsy0zav9fowxSVfCgr9nzsyrgrN9foDlht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9foDlht29fobCgofnzsUYzeldzIG9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BaRnSVfjcIZAcV29foBYzayYgaUYgrO9fowxSVfCgr9nzsyrgrN9foD2BrNQ4eldgaB0zs9lgrE1SVfjcIZAcPHQ4eldgaflgsyYgo9rBeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsyYgrRYgs8HgHldzIG9fofYgr80zaBYBeldzoNQ4eldBoErBoUngsbngHldzIG9fofYgr80zaBYBeldzoeQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foflzablgoRngs39fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoM6BV29foEYgr8YBZldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr8YgpldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr81gHldzoM6BrylBrbCBsbrgrb7BoRlgSHkht29foflzabrgab0gov9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoM6gs8lgry7BrB0zsM7gryHBd29foEYgr8YBZldzoM6grM0zaMrzsB1za8Hgo82gd29foEYgr8YgpldzoM6grM0zaMrzsB1za8Hgo82gd29foEYgr81gHldzoM6grM0zaMrzsB1za8Hgo82gIHkhS7ASVfCBablgsEHBaE1SVfjBSHQ4eldBrU2Ba9lzs8nzeldzIG9fofYgr80zaBYBeldzoflBP7ASVf0grfYgsyrzsv9fowxSVfCgr9nzsyrgrN9foD2BPHQht29fo8nzaRCzaE1BeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBs9Ygo82SVfjqHldBo9Ygob1Br9lSVfj4sflBP7ASVf2gr9ngov9fowxSVfCgr9nzsyrgrN9foDGBs8lht29foEYgr8nBHldzIG9fofYgr80zaBYBeldzoflht29foE0BrUHgsbCBeldzIG9fofYgr80zaBYBeldzo8nBaNQ4eldBrR2BrfnzsM1zeldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtvQ_"));
    v1235(v1228("density", "Snappy", -1, "qCfof7ezm72eRHQaZeQEOFO3kF27foDdqHldBsE0zs8lgryngpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foErzaM7Ba87gpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foEngs97grfYBok9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVf7BsEngsRYzsb1SVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghUHmhmPZoXnp6OCfjfIG9foE1BofHgofYgaO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDrht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDGBsgQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofCzaM7Bo9nBak9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7gI7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBomQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBs3Q4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoECht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foU7gaR7gsR1BpldzIG9fofYgr80zaBYBeldzoNQ4eldgr8lzsbHgsfnSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzoR1ht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgs3Q4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgNsbkBmZghUHmhmIvpOSg78F0bXF0IfoDdqHldBsRlgoRCzsyHzZldzIG9fofYgr80zaBYBeldzoNQ4eldBofnBa8nzsb2gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBrBoUCgo81Bre9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzafrzsR0BsO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghUHmhtF1yUFpCfoDdqHldBoUlBsR2Bs9nSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaE2BoU0zaE0gpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDHht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfHBsUrBo80Bsk9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfnzaf7BoRHgpldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsS7gRS7p6fEew9dM5fEmH8nAdzdvxSVf2grUlBsRlzay2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgsOQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgs3Q4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29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zoNQhtfAfdBoUR0PsEZsS7gRS7Q6feNpOFAdzdv6kF2AfdldfCgNsbkBmZghUHmhRIZ6c5p6OCfjfIG9foErgsyrzaM0BaO9fowxSVfCgr9nzsyrgrN9foDlht29foEngrU1BrM1gsN9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDHzP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBsNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzovQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBIHQht29fofYBr8rzsylgrN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrBsb7Bo8CzsB2SVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjgS7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjgaNQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgS7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezm72eRHQaZeQsciQYkneAXnp6OCfjfIG9foE1gofYzaB0Bog9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBaBlgs9rBsp9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCzay2BsBHBryYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfHBs87zafHBaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghUHmhRn0p8FGwc59dzdvxSVf2BsyCBrf2gob1SVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBrkQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfj4sf1ht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzovQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoE1ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfCgsylgo9lgs9YSVfjqHldBo9Y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gpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgS7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD1ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzo3Q4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoflht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBofYBaE7grRrBHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUlgaMCBoErgrk9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQRS7mpO5eHcPUdzdvxSVf2goflgsfYgrp9fowxSVfCgr9nzsyrgrN9foDlht29foBrBrbnBsB0zZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUCBa8rBay7Bsp9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfnBay2Br92gaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghZeQEkFgTXF0IfoDdqHldBsfrBsM0BoMCBeldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUnht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2zP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsvQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgsB7BobnBaMrSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzoR1ht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgs3Q4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzaRlBa9ngsp9fowxSVfCgr9nzsyrgrN9foDlht29fobHgob2gofYzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzogQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzd72BY7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBoUR0PsEZsSHmhmIvpOSg78F0bXF0IfoDdqHldBoEYzsy2zsRlBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof7zsBCgaUnzae9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfrzaB0gsUnBsM7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgs8CzsBlBo9CSVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghZeQvcdNNXSfdzdvxSVf2goRrzayrgsynSVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBrU7Ba80zsy0SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrR1gsMCgoU2gHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDHht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf7goblBsE2goe9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQRS7p6fEew9dM5fEmH8nAdzdvxSVf2gsU0BrEYgsElSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrMrgaRYgs8nSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgsOQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgs3Q4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foD2gP7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrBngrMHgaU1BpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzogQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzopQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foyCgsE1BrRngHldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoU7ht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd72zP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsmQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsSHmhsn1yRiZpXCfjf50Hcild4Vfof7ezm72eRHQRSHvHc50wc59dzdvxSVf2gaU1BsB2BrfYSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgs3Q4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzovQhS7ASVf2gob1zaUCzsyrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2za9lgrR2goMrSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoE7gabCgrB7geldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzoZQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eld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Br9lSVfjBrkQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfj4sf1ht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzovQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoE1ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghZeQskie6Oip6OCfjfIG9fofrzsMHgoylBrN9fowxSVfCgr9nzsyrgrN9foDlht29fofYBa9lBs90grm9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDHzP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBr9nzaR1gsE0geldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUCBo87gsMlgsZ9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7BP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjzP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsOQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoflht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD1ht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpNtRHhR7ZRZEpzmHBdzdvxSVf2grR0grf7Ba97SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBoBngaRngsRrBeldzIG9fofYgr80zaBYBeldzofCht29fo92Bsblgr9YzZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBrE2zsUHgrbCBpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBoB1Bs9lgsbYzZldzIG9fofYgr80zaBYBeldzogQ4eldBrBYza90gr9nzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29foUYgsbHgrMlBeldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrBo8rBrM2Boy7SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2gaUnBaU7gsEnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2gayHBs9lgaE2SVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCgoR7zsMlBrylSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo9YBsbrgsEYgHldzIG9fofYgr80zaBYBeldzoElht29fofYgrE0BrR2gr39fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBoy1BsUCzsMCgeldzIG9fofYgr80zaBYBeldzoRlhSHQhtfAfdBoUR0RtRevsZQsmZmRtR0PRHQeFemtUtfjfIG9foErgsE2Bo9CBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foRrzsECBoBlBHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBsUHzsU1gry2gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBnBsy7goECBHldzIG9fofYgr80zaBYBeldzogQhS7ASVfCzafHBaErBo92SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrR0BoM0zaR0BeldzIG9fofYgr80zaBYBeldzomQhS7ASVfrgaflBrR2go9YSVfjqHldBoR7Bo80Ba9YSVfjFYG9foE7Bo91gsR1BrO9fow58F2rOt29foEYBrRYBa82zav9foDl4eldBsbCzafCzs82SVfjBt29foE0BrU0gobYgeldzo8Y4eldBoM0BaR2gsM2zeldzoMASVfCBrb0gaUlzsMHSVfjBV29foBrBa9lgoyrgog9fow79IZpht2xSVf2gafYzaRHzaBnSVfjO5eA9nRASVf2grBHgrMnBsyCSVfjBV29foE0BoyCBobnBZldzofASVf2zsB7zs80grm9foD0BV29foflzsMHBsRlBs39foDl4eldBoB0zsU7BablgZldzoMASVfrBrMYBa81Br8rSVfjkPvHOSHk4eldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2Brb1gab0grbCSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBsbCga9HzsMngZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBrbHgob1zayrgZldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgaf7Ba82grM2geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foEHgabrBaRrBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foE1go80Baf2gre9fowxSVfCgr9nzsyrgrN9foDlht29fof1zsMlBsbnBsv9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpNtRHhRHmNZERdzdvxSVf2BrfngsM2grU0SVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf2gaM0BsR1BrEYSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVf2grUr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Ot29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fofngr8YzaRYzag9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBo9lBoEYzabYzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBobrBaB1BaBHBZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrB7zs8CBo8lSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrRrgabYzaUHgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQhtfAfdBomEZimR0stZOeS7gRS7mH8nGwc59dzdvxSVfCBrMrBa97BafCSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCzafnga8HBrg9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foBCzsbYgaMngog9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjgI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoECht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsmQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzopQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEnht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzovQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrBCgsErBryHzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrRHBrBrgsfrBZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaEHgrbrBrBrgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldzsRYzsEYBsUlSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7OCOFZrkie6Oip6OCfjfIG9foflgaE0zs91Bsp9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoRngsyHBof1BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyrBoU7Ba8ngeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrUHBoyCgs87BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrbHgsBYBaU2BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfYgobnBaBYBpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7p6fEew9dfjfIG9fof2Brb7zs90geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofCBr92grflBaZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEH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O5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7Q6feNpOFAdzdvxSVfCBoRCBrUrBaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCgob0gaMrzak9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaf7zsR2Boy0zeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldgafngo8lgrMCzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1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gob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foUCBry0gob2zag9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo9YgoylBsBnBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQhS7d4Vfof7membZzR7pFmZQaZeQsciQYkneAXnp6OCfjfIG9fofrzsfnBrB0grN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fof7BrUYgaMHzaN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoylzsbnBrRCBHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrBHzaU2grE0gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaU1gaR7gsU7SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzay7Bo9YBsg9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf0gaR2BaB1Bok9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRSHg6OFeTXF0IfoDdqHldBsf0gry1zs87gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBsbCzs8HBrB0BHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBrynBaMrBrN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBlBsM7goyHgaZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foU2zsMYgrR2zam9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foUHzsb2gaEYzeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzomQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBskQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDCht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf7zab2gabCgak9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhUHmhRYm3c5mwc59dzdvxSVfCBafYzs8HgoM0SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfrBsRrza8YBsN9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCBayCgrfCga39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foBHgsElgoUnzsN9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjzapQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzd71zSHQht29foBYgrfrgryHBr39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrylBs82Br8lgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob7grEHBaUHgHldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoE1BPHQhS7d4Vfof7membZzR7pFmZQRS7mpO5eHcPUdzdvxSVf2Bs90BaRrBsm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fofrBrM0zafCBo39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoUnzay2grUrgpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoyYgrR0BaEnBHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrMYgr8lBaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBr8rBrfHgobnBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgoM1zafrBrbHSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRS7mH8nGwc59dzdvxSVf2BoB2gr91Bo9HSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof0gsB0Br92Ba39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjgI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoECht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsmQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzopQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEnht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzovQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrM0Bs9YBoB2gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrRlBaR7gsM7BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldgafHgof2Bsy7BeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgrUlza8lBsb7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVf0BrMYBsU1zsk9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9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BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyYgsfCzaB2gZldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrU0gs82Brf0geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrb0zaEHzaMnBHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBS7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzofChSHQhtfAfdBomEZimR0stZOeSHmhsn1yRiZpXCfjfIG9foEYBa9YBo8Hgsp9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foEYBoU7gaE2BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBoE0za87ga87BeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrzsflzaMrga9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foUlgsynBrynzae9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fobCzaE2BablzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeSHmhRIZ6c5p6OCfjfIG9foE2zsU2BrMYBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foEngsUnzsRHBs39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foE1gaUHgsMCBoe9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBsUHgoErgsb0SVfjqHldBo9Ygob1Br9lSVfjBd29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfj4sE1BPHQht29foB1go9Ygrf7Brv9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldgaMlgs8lgr87BeldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foD1zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfj4sUnhSHQ4eldza9HBa90za81SVfjqHldBo9Ygob1Br9lSVfjBd29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQsciQYkneAXnp6OCfjfIG9foEnBofHBsb2BoN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBsylzsE1BaR7geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBo8lgo9lBrU0gHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBobngry1zab2BZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBrM0zsB2gsB0BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfHgr8Hgo92goO9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf1Bo8HgoR0zsk9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRSHg6OFeTXF0IfoDdqHldBsb2goflga8CBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBsbrBrf0za9HBZldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzomQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBskQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDCht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf2zsR1gob2zsUYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBsynzabrBrE0SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgrb2gab2gafCSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfrzayngaUCgsf7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzsBngoBCBsElSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRSHg78F0bXF0IfoDdqHldBsflgaB0BaB1BHldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foD1zS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfj4sy0hSHQ4eldBsylzab1zaU1gpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBoblBrbrzsR1zeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUCgablzs87grN9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2zaNQhS7ASVf0BrBYBaEnzaZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fobHBa90gsy2gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf0gr82zablBse9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7Z8ZevNfoDdqHldBrf0Baf1gsf1gpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgaMYBr87zae9fowxSVfCgr9nzsyrgrN9foDrBoZQ4eldBsMnzsBngsyrgZldzIG9fofYgr80zaBYBeldzoRlht29foEYBrRlgayYBeldzIG9fofYgr80zaBYBeldzoBCgS7ASVf2grR1BaUCBaylSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBsb2go9HzaMHzeldzIG9fofYgr80zaBYBeldzoRlht29fofCgsyrzs90zsO9fowxSVfCgr9nzsyrgrN9foDrBoZQ4eldBoBrBrfHBoRlgHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof7BafHBsR2grm9fowxSVfCgr9nzsyrgrN9foDHBP7ASVfCgrR1BsfCBsyrSVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBobnBaU1zaM0zeldzIG9fofYgr80zaBYBeldzoRlht29fof0zsR2goE2zak9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBsE7goBrBoE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBoErgoRHBrU2SVfjqHldBo9Ygob1Br9lSVfjgsNQ4eldBrfCBr9rgsyHgHldzIG9fofYgr80zaBYBeldzoRlht29foBCgsMYzsB0za39fowxSVfCgr9nzsyrgrN9foDHBP7ASVfrgs9HBa9CBsblSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBryngsBYzaM1BeldzIG9fofYgr80zaBYBeldz5O3cPgpht29foRlBaElBsE0BHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foR1zsMYBrB1BpldzIG9fofYgr80zaBYBeldz5O3cPgpht29fo9CBrE0go82geldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBosRpsUCfjfIG9foE7gr8Czsb2goZ9fowxSVfCgsUCgoblgrk9fowcqHldBsUCgryHgsyrgpldz5O3cPgp4eldBs9rgs9lgoE1Bpldz5O3cPgp4eldBsbCzafCzs82SVfjkPvHOt29foE0BrU0gobYgeldzo914eldBoM0BaR2gsM2zeldzoMASVfCBrb0gaUlzsMHSVfjBV29foBrBa9lgoyrgog9fow79IZphZ7ASVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2grMHgoR2gob0SVfjqHldBo9Ygob1Br9lSVfjBsBYhSHQ4eldBof7Bsf7zsR7gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fobCBoMCBoyCBpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBrMYBoRCgsy2SVfjqHldgaMHBaU1BoEHBeldzIG9foEHBrbYgsylgsO9fow6kF2A4eldBrEngaErBaU0SVfjcIZAcV29foBYgrBYzsbrgsZ9fowxSVfCgr9nzsyrgrN9fow9fpldht29fo8rgaBrgrBCBeldz50Hci2Qht29fof0goECgsUlBom9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2gsUnBsRYgrU7SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foB2zsUngafYgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fo8nBoRlBs8YBHldzIG9fofYgr80zaBYBeldzoE7gsNQ4eldza90BaE2zablSVfjqHldBo9Ygob1Br9lSVfjBY7ASVf0Bo8lBsb1gHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgobYBab2gofnSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhtfAfdBosRQFmRHespUdzdvxSVf2Ba9nBs92gok9fowxSVf7BaRlgayCBsRlSVfjqHldBsM1grBYBoBYzeldzIG9fofYgr80zaBYBeldzokQ4eldBoylzsf7BoBnBZldzIG9fofYgr80zaBYBeldzoRlht29foBlzaRYBrM7gsk9fowxSVfCgr9nzsyrgrN9foDlht29fobCBoMCBoyCBpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgaBlgaE1zaMrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrfrBofCzsE1BpldzIG9fofYgr80zaBYBeldz5O3cPgphS7d4VfofHvNm7ZVsHUdzdvxSVf2zsb7zaRrBaE1SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaBngs9rza97SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gaRYgsRrgrUCSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCBoUYzsM2BsRrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUrgoU2Bo8lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUrgo8lgsfrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsy2BsB0Bop9fowxSVfCgr9nzsyrgrN9foDlht29foU2Bab1BsBCzap9fowxSVfCgr9nzsyrgrN9foDlht29foUCBa9Hzsy0gov9fowxSVfCgr9nzsyrgrN9foDCgPHQht29fofYzs8nzaflBrv9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foE2BsMlgoB2Bop9fow6kF2A4eldBsf2za9YBoBngHldzIG9fofYgr80zaBYBeldzpld9PfQSe29f50wOn379YmKc5Z9SeldfPvl95By95By85eoXYmC8FgTWZ29SVvbOF23qZ29SVfyXip7WZ29SVviXSvpOe29SVfy9IN9fI7ASVf2gaE1gryrgaECSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foE0BrUHzab1gpldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV11zsU2Bs9YBsf0grUHgayr4eldBs9Ygo9nSVfjBV1YzayCBrRrgo8rgaU7gsE04eldBs9YgoyYSVfjBV1ngsy1BoBHgabYga97gokQSS7ASVfCBay0BrR0BaM0SVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4o8HzayCBrR7zs97grUngC29foEYgr8YgpldzoM6goR1zafrgsU0grUYga8Y4eldBs9YgoyYSVfjBV11zsM2zs82gaUHzaM1gaE2hZHQht29foflzsMHBsRlBs39foDlhS7ASVfCBrU7gof7grBHSVfjqHldBo9Ygob1Br9lSVfjBY7ASVfCBrb7zafCgoO9fowxSVfCgr9nzsyrgrN9foDnht29fof0gsb0BsbrzaZ9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBsbrgaR1zsynSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oBYBoR7zsMCgrflgaR2BrRH4eldBs9Ygo9nSVfjBV1YBaR1zafrgrM7grE0gsUr4eldBs9YgoyYSVfjBV17zsylBrbCgaRnBaR7goyYgSHkht29foflzabrgsblBap9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6zaE0goMYzsErgab7BsElBt29foEYgr8YgpldzoM6goB0BoEHgrMYgr91zsBlgC29foEYgr81gHldzoM6gsEYgoUYBayYgs97BaMHBSHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBrUHgaE7go8HgZldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBYBay7gsy0zav9fowxSVfCgr9nzsyrgrN9foDlht29fobYBo9HzaB0BpldzIG9fofYgr80zaBYBeldzoylhSHQ4eldBrbHgsR1Bo8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsRCBr9rgsB0gHldzIG9fofYgr80zaBYBeldzd72ht29foEHBrMCBs92BeldzIG9fofYgr80zaBYBeldzd72ht29foflzabrgoRlBrm9fowxSVfCgr9nzsyrgrN9foDlht29foRCzaB7gafCgpldzIG9fofYgr80zaBYBeldzogQhS7ASVf7BoB2BsyYzsf2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrB1gaEnBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldgaf2BrU2zaRYSVfjqHldBo9Ygob1Br9lSVfjgrNQ4eldzsM2BsBCBoECSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfHgaR7zaBYgop9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2grRHBoErzsb1SVfjqHldBo9Ygob1Br9lSVfjBrZQ4eldBof1zafHgof2BZldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsE1gsErgre9fowxSVfCgr9nzsyrgrN9foDCht29fofrgoUHgoRHBrN9fowxSVfCgr9nzsyrgrN9foDYht29fofYza8lzsBYzsk9fowxSVfCgr9nzsyrgrN9foDCzP7ASVfCzaUlBryngaMHSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BV29foEYgr8YgpldzoM6BV29foEYgr81gHldzoM6gry7BrErgrbYzsRlgrU7gIHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBr9Yzs8HBay0BZldzIG9fofYgr80zaBYBeldzofHht29foUHBr8ngsE2geldzIG9fofYgr80zaBYBeldz5O3cPgpht29foblBsErBof2BpldzIG9fofYgr80zaBYBeldzoB2hSHQhtfAfdBoRbZzmEZtfoDdqHldBsyrza91zaBngpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foflzabrgoRlBrm9fowxSVfCgr9nzsyrgrN9foDlht29foBYgrBYzsbrgsZ9fowxSVfCgr9nzsyrgrN9fow9fpldht29foBYzaR1zaBngrO9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoECzsyCBsEYgeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7BaMlzsEnBHldzIG9fofYgr80zaBYBeldzomQ4eldBsR7goUCBaR1zZldzIG9fofYgr80zaBYBeldzoNQ4eldBofYgsEnBoUHBpldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVf2BoRngsBYgsBHSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foDl4oNQSS7ASVfrBrUCgs9Ygo90SVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foDl4oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofCzabnBo8nBrg9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBV1YzaUrBsBYzs90gsMYgaUn4eldBs9YgoyYSVfjBV17grMHzayCgo81gabHBs91hZHQht29foflzsMHBsRlBs39foDlhS7ASVfCBrU0Ba8nBoMrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoBYBoUHga9CBZldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foBrBsRngs90Bav9fowxSVfCgr9nzsyrgrN9fow79IZpht29foBrBrM2Boflzag9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf7BoB2ga92zsy2SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf7Brf0goMrBok9fowxSVfCgr9nzsyrgrN9fow79IZphSHQ4eldBoRCgob0gaEYBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fof2zafYgr9Ygsk9fowxSVfCgr9nzsyrgrN9foDlht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foBlgaUrgsR1Bo39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBV1YzaUrBsBYzs90gsMYgaUn4eldBs9YgoyYSVfjBV17grMHzayCgo81gabHBs91hZHQht29foflzsMHBsRlBs39foDlhSHQht29foB2zsbrgaE2goN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2za9Ygs9HgoRYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBo90grRHBaM2gHldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1YBaR1zafrgrM7grE0gsUr4eldBs9Ygo9nSVfjBV1nBo97gsElBafHzs91Bay14eldBs9YgoyYSVfjBV1ngo8ngo8nza8HBrU1zaEnhZHQ4eldBr82gs9YgrBrgpldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBV1l4eldBs9Ygo92SVfjBV1l4eldBs9Ygo9nSVfjBV1l4eldBs9YgoyYSVfjBV1lhZHQht29foflzsMHBsRlBs39foDlhS7ASVfrzaf2BrU0grE2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfYzsb0zabHBZldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBoE1Bo9Ygr9HgHldzIG9fofYgr80zaBYBeldzoNQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBryCBsB7zs92BZldzIG9fofYgr80zaBYBeldz5O3cPgpht29foR0gryHBrB0BeldzIG9fofYgr80zaBYBeldzImCkFZQhS7ASVf1zs8CBsynBop9fowxSVf7BaRlgayCBsRlSVfjqHldBsf1BsBCzsynSVfjqHldBo9Ygob1Br9lSVfjSVvl95RQSe29fbvvZEEyZEZsZe29SVfyc5QGcdN6cYNCSVvQ4eldBsBrBoRCzs9nBZldzIG9fofYgr80zaBYBeldz5O3cPgpht29foErgr91za82zeldz50HcilASVf2gaMnzs82grUHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVf2gsU0BoUHBop9fow6kF2A4eldBs8YgoU7gs8YBeldzIG9fofYgr80zaBYBeldzovQ4eldBsyYgrRYgs8HgHldzIG9fofYgr80zaBYBeldzovQ4eldBof2BaRHBobYSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foBHBay1zaU7zak9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr8YgpldzoM6BrylBrbCBsbrgrb7BoRlgt29foEYgr81gHldzoM6zsf2gs81gob2grBlgab0BYHkht29foyHgabnBaR0gZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9Ygo9nSVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9YgoyYSVfjBV10BoEHgoynzsEYBrM7zsbrht2xSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oE1zafrgsB2Bo9lBafYBs8ASVf2gr9ngrO9foDl4oE1zafrgsB2Bo9lBafYBs8ASVf2gr9nzak9foDl4oUHzayCBrRnBs8nzaB0gIHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBofHzsfHgof1geldzIG9fofYgr80zaBYBeldzoEnht29fofrzsU1BofngpldzIG9fofYgr80zaBYBeldzoZQ4eldBoR1BaRlgrfngeldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfrgsM1zay7gayYSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSS7ASVf1gsU0goMHzsZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BP7AqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1HBaE0goM1BsB0zsb2gr8ASVf2gr9ngrO9foDl4oRlBsbnBay2Brb0zsEYgd29foEYgr81gHldzoM6gsM2zs8lzaErzsb0Bs9nhZHQht29foflzsMHBsRlBs39foD2hS7ASVfCzafYBsf2zaElSVfjcIZAcV29foBrgaBnBa82BeldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfrgsM1zay7gayYSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSS7ASVf1gsU0goMHzsZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BoBHBob7BsBrgaf7grR1zt29foEYgr8YgpldzoM6gry7BrErgrbYzsRlgrU7gd29foEYgr81gHldzoM6gsy1BoBHBrE1go8lgrBnBS7AqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV12Bs9nga9lgo8YBsfrgrb7gd29foEYgr8YgpldzoM6BrbCBsRnzab1zs9HBr9CBC29foEYgr81gHldzoM6BsUHBab1BaUHga81BrBlBr3QSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfrgsM1zay7gayYSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4o9YBobCgs9rgaR2zsbHzaRASVf2gr9ngrO9foDl4oR0grU2gaE0gsRrgrRngrEASVf2gr9nzak9foDl4o82zsB7zs9Ygr80zaR2go3QSS7ASVf1gsU0goMHzsZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6gr9CgsU0BabCgr80gofCzV29foEYgr8YgpldzoM6gsbnBa91gaRHgaU1BsRlgd29foEYgr81gHldzoM6goE0goMYza8HzaElBrb7BY7AqHldBs9Ygo9lSVfjBV11grRASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSSHQ4eldBoM0BaR2gsM2zeldzoeQht29foBYBay7gsy0zav9fowxSVfCgr9nzsyrgrN9foDlht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9foDCht29fobCgofnzsUYzeldzIG9fofYgr80zaBYBeldzoNQhS7ASVf0zaEHgafrgoN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2za9Ygs9HgoRYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrb7zafCgoO9fowxSVfCgr9nzsyrgrN9foD7ht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfCgrbnzsB7gayrSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oUYBaR1zafngoy7zsR2gr3QSS7ASVfrBsRnBs81gry2SVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foD24oMASVf2gr9nzak9foD24oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf0grfYgsyrzsv9fowxSVfCgr9nzsyrgrN9foDCgPHQhS7d4VfofHvWsHmhUHmhmiZ58SZAkVfjf50Hcild4VfofHvWsHmhUHmhmPZoXnp6OCfjf50Hcild4VfofHvWsHmhUHmhmIvpOSg78F0bXF0IfoDdcIZAcVfAfdBoRbQWZeQaZeQvcdNNXSfdzdv6kF2AfdldfCgts7QRS7gRS7p6fEew9dM5fEmH8nAdzdv6kF2AfdldfCgts7QRS7gRS7Q6feNpOFAdzdv6kF2AfdldfCgts7QRS7gRSHvHc50wc59dzdv6kF2AfdldfCgts7QRS7gRSHgAcYkY8F2TXF0IfoDdcIZAcVfAfdBoRbQWZeQaZeQsc5Z3Xnp6OCfjf50Hcild4VfofHvWsHmhUHmhRYm3c5mwc59dzdv6kF2AfdldfCgts7QRSHmhmiZ58SZAkVfjf50Hcild4VfofHvWsHmhZeQEkFgTXF0IfoDdcIZAcVfAfdBoRbQWZeQRS7OCOFZrkie6Oip6OCfjf50Hcild4VfofHvWsHmhZeQvcdNNXSfdzdv6kF2AfdldfCgts7QRSHmhtF1yUFpCfV8ymPZoXCfjf50Hcild4VfofHvWsHmhZeQWcdNUOFZTfoDdcIZAcVfAfdBoRbQWZeQRSHvHc50wc59dzdv6kF2AfdldfCgts7QRSHmhRn2KkYk3ciGwc59dzdv6kF2AfdldfCgts7QRSHmhRn0p8FGwc59dzdv6kF2AfdldfCgts7QRSHmhRYm3c5mwc59dzdv6kF2AfdldfCgFtZgZUR2sfoDdqHldBsB1Ba9nBayCzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foB2grMrzsEYzag9fowxSVfCgsRngoy1Bam9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1rgsf0gaE2zaRCBrR0gr9C4eldBs9Ygo9nSVfjBV1rgsf0gaE2zaRCBrR0gr9C4eldBs9YgoyYSVfjBV10goMYzaUrgrRngo9HgrvQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofYgr80zaBYBeldzImCkFZQ4eldBrRYBryCgrErgHldzIG9fofHgs8nzaylgeldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4oRlzsylBrbHBa91goR0Ba8ASVf2gr9nzak9foDl4oRlzsylBrbHBa91goR0BaOQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofYgr80zaBYBeldzImCkFZQhS7ASVf2gs9YBaM7Bs92SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsR7goE2gs91BHldzIG9fofYgr80zaBYBeldzoflgakQ4eldBsyYgrRYgs8HgHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBa9Hgs8Hzs9CSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2Ba8Yzay2BsMrSVfjcIZAcV29fof7goU2zaMCBak9fow6kF2A4eldBrU7BoU2BaRnSVfjcIZAcV29foBYzayYgaUYgrO9fowxSVfCgr9nzsyrgrN9foD2BrNQ4eldgaB0zs9lgrE1SVfjcIZAcPHQ4eldgaflgsyYgo9rBeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsyYgrRYgs8HgHldzIG9fofYgr80zaBYBeldzoNQ4eldBoErBoUngsbngHldzIG9fofYgr80zaBYBeldzoeQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foflzablgoRngs39fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoM6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkht29foflzabrgab0gov9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoM6grBrBrBrBrU0BofYzsMHBC29foEYgr8YBZldzoM6zaflzs8lgrMlgsE2zsBCgV29foEYgr8YgpldzoM6zaflzs8lgrMlgsE2zsBCgV29foEYgr81gHldzoM6zaflzs8lgrMlgsE2zsBCgPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBrU2Ba9lzs8nzeldzIG9fofYgr80zaBYBeldzofHBP7ASVf0grfYgsyrzsv9fowxSVfCgr9nzsyrgrN9foD1hSHQ4eldgo81gsf1BsylSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2gr9ngoe9fowxSVfCgr9nzsyrgrN9foDlht29foEYgr8nBpldzIG9fofYgr80zaBYBeldzd72goNQ4eldBs9Ygo8rSVfjqHldBo9Ygob1Br9lSVfjBoMlht29foE0BrUHgsbCBeldzIG9fofYgr80zaBYBeldzo81BaNQ4eldBrR2BrfnzsM1zeldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtvQ_"));
    v1235(v1228("density", "Aggresive", -1, "qCfof7ezm72eRHQaZeQEOFO3kF27foDdqHldBsE0zs8lgryngpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foErzaM7Ba87gpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foEngs97grfYBok9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVf7BsEngsRYzsb1SVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghUHmhmPZoXnp6OCfjfIG9foE1BofHgofYgaO9fowxSVfCgr9nzsyrgrN9foD74eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDrht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDGBsgQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofCzaM7Bo9nBak9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7gP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBovQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBsNQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVf7gaUHgaRHzav9fowxSVfCgr9nzsyrgrN9foDlht29fo9nBab0gsRCgpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDHzP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgNsbkBmZghUHmhmIvpOSg78F0bXF0IfoDdqHldBsRlgoRCzsyHzZldzIG9fofYgr80zaBYBeldzoNQ4eldBofnBa8nzsb2gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBrBoUCgo81Bre9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzafrzsR0BsO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghUHmhtF1yUFpCfoDdqHldBoUlBsR2Bs9nSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBYgrf2BrBHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf0BaR7gr81zsv9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaE2BoU0zaE0gpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzovQhS7ASVfHBsUrBo80Bsk9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfnzaf7BoRHgpldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsS7gRS7p6fEew9dM5fEmH8nAdzdvxSVf2grUlBsRlzay2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foflBs97zsEYBeldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzoZQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgS7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDrht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29fof7grb2BsMYgae9fowxSVfCgr9nzsyrgrN9foDn4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDrht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD0ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgofrBrBCzaM0SVfjqHldBo9Ygob1Br9lSVfjBPHQfdldfCgNsbkBmZghUHmhsn1yRiZpXCfjf50Hcild4Vfof7ezm72eRHQaZeQtkF06XF0IfoDdqHldBsBHzaB1BablgpldzIG9fofYgr80zaBYBeldzoNQ4eldBs8YgayrBayHBeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzoR1ht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foD2gP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBo9rgoB0zaMYBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foB2zsUCgof0Bre9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7BP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrbHSVfj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BP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDCht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0PsEZsS7gRSHg6OFeTXF0IfoDdqHldBsE1BoBCBs80zeldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzoZQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgS7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2zS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29fofHzaMngrMHgrk9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDHgS7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBY7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrfHBo8HBaUnzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo9Cgr9HgrM2gHldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsS7gRSHg78F0bXF0IfoDdqHldBsR0zaEngr87BZldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzoR1ht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foD7ht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDCht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf2zsb1BsyYgov9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9n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SVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezm72eRHQRS7mH8nGwc59dzdvxSVf2BoB2BabCBaflSVfjqHldBo9Ygob1Br9lSVfjBt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gsE1Bry0gsB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2gs8rBoBCgoRnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjgamQ4eldBs9ngsynBo82gZldzIG9fofYgr80zaBYBeldzoNQ4eldBsy1gs90gayrBpldz50HcilASVfCBaBngaMnBo91SVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfj4sfCht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzoElht29fof0goE7grfngr39fowxSVfCgr9nzsyrgrN9foDlht29foB2gsU2Brfnzsk9fowxSVfCgr9nzsyrgrN9foDlht29foB0goMHBoElBrN9fowxSVfCgr9nzsyrgrN9foDlht29foUlBr9rgsRngov9fowxSVfCgr9nzsyrgrN9foDCht29fo8rgs92zsy7BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldgsB7BobnBaMrSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzoR1ht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo91gsMlgr8HzZldzIG9fofYgr80zaBYBeldzoNQ4eldzsRnzsEnBo90SVfjqHldBo9Ygob1Br9lSVfjgV29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBY7ASVf2Br8rgsb1Brf0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Brb1grBHgaE2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2ga9Cgsf1zsBrSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHld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Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foB1BrbHga82Bam9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzo8lht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foDCht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBrBaUCBoRrBam9fowxSVfCgr9nzsyrgrN9foDlht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfHgof0BrMCgrv9fowxSVfCgr9nzsyrgrN9foDlhS7d4Vfof7ezm72eRHQRS7p6fEew9dfjfIG9foEngsB1zaBHzaO9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29fofrga9YzsR0gav9fowxSVfCgr9nzsyrgrN9foDlht29fof7gsb7BrMngrg9fow6kF2A4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8CBs91ga91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBo97gay0zay2geldzIG9fofYgr80zaBYBeldzoNQ4eldBo91Bo9HzaMlBpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhS7ASVfrgaUlgob0zap9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrgsyHBafngaEYSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaU1BrbrBrbYSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBs87zs8HgrbHgZldzIG9fofYgr80zaBYBeldzoElBP7ASVf2zaB7gsUCgofrSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoM1BrRCgafrgpldzIG9fofYgr80zaBYBeldzo8lht29fofCBa8lBaMYgog9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofrgsy7Br82Brp9fow6kF2A4eldBoUHzsUrBa8YBHldz50HcilASVfCzaEHBrfrgoBHSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrBlgafCgsBlgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgo8YBsB1gZldzIG9fofYgr80zaBYBeldzoNQ4eldzaRlgaBnBoy0SVfjqHldBo9Ygob1Br9lSVfjBIHQht29foUnzsM2BsEnBZldzIG9fofYgr80zaBYBeldzoNQhtfAfdBoUR0PsEZsSHmhtF1yUFpCfV8ymPZoXCfjfIG9foEHgabrBs9HBsN9fowxSVfCgr9nzsyrgrN9foDlht29fofrBaB7gs9HgoO9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrBngrMHgaU1BpldzIG9fofYgr80zaBYBeldzo8ASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzogQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzopQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoeQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foyCgsE1BrRngHldzIG9fofYgr80zaBYBeldzoEASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzoZQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsR2zaB1zsRrBZldzIG9fofYgr80zaBYBeldzoNQ4eldBsRnBrfrBo8HgpldzIG9fofYgr80zaBYBeldzovQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoUlht29foEYgoR1gofnBsZ9fowxSVfCgr9nzsyrgrN9foDlht29foE1zaRYzsU1Brv9fow6kF2A4eldBoMrgoUlgofYzeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzd7CgS7ASVfCBrUYgrbHzsUCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgaR0gaBlgo9rSVfjcIZAcV29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDCht29fofnBoEYzaUYzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgaU1zsy1Bsm9fowxSVfCgr9nzsyrgrN9foDlht29fofYzafYgsylBav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2ht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDrht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzs82ga9Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsR7BsBCgobYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrzs8lgsf2BaBlSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BaBYBrRHgo8CSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfnBrRYBsb1gae9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezm72eRHQRS7Q6feNpOFAdzdv6kF2AfdldfCgNsbkBmZghZeQtkF06XF0IfoDdqHldBsU7zaErBsBCgHldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM7zaB0BrB0gHldzIG9fofYgr80zaBYBeldzo8lht29foEngabngs90gsZ9fowxSVfCgr9nzsyrgrN9foD2BaNQ4eldBsyrgaR7Bo8CBHldzIG9fofYgr80zaBYBeldzo8lht29foflzaBHBoUCBrO9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBoMnBaMlgr8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfCBrR1gaBnBsB0SVfjcIZAcV29fof7gsb7BrMngrg9fow6kF2A4eldBoy2gsBCBr8rgZldzIG9fofYgr80zaBYBeldzoR1ht29fof1goUlBoBlBrO9fowxSVfCgr9nzsyrgrN9foD2gP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBs80zay7Bob1BHldzIG9fofYgr80zaBYBeldzoNQ4eldBsyYBa9HBs8lBHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof2gaU0Bo9rgam9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7BP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80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foB1Br8ngrErzaZ9fowxSVfCgr9nzsyrgrN9foDlht29foyHBaUrgof1zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf7gs82BoM1Brm9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foErgoBHzsyrBop9fowxSVfCgr9nzsyrgrN9foDlht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foE7grfHBoy0Brg9fowxSVfCgr9nzsyrgrN9foDlht29fofnBaUHBoy2zav9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDlht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDlht29fof0BoB7go87ga39fowxSVfCgr9nzsyrgrN9foDrht29foBHgs9lgofrBsN9fowxSVfCgr9nzsyrgrN9foD7ht29foB1Br9YBoErBrZ9fowxSVfCgr9nzsyrgrN9foDlht29foblgsUYgoy0BpldzIG9fofYgr80zaBYBeldzoNQhS7ASVf0BsB0zaRnzsZ9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7BP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNsbkBmZghZeQskie6Oip6OCfjfIG9fofrzsMHgoylBrN9fowxSVfCgr9nzsyrgrN9foDlht29fofYBa9lBs90grm9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgayrzsBrzsk9fowxSVfCgr9nzsyrgrN9foDnBP7ASVf2goU0goRYzsRHSVfjqHldBo9Ygob1Br9lSVfjBsMlht29foE1BrUHgafnBog9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfCBayrgsf7BoBnSVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldBoflgoMlBa9nBHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoBHzaUrgoErzZldz50HcilASVfCgaR0gaBlgo9rSVfjcIZAcV29fof1BsRrBoBnBrZ9fowxSVfCgr9nzsyrgrN9foDHzP7ASVfCza87BafrBaBnSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCzsfrga8ngaU1SVfjqHldBo9Ygob1Br9lSVfjBY7ASVfrBrM7BofHBrM7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfrgsRYBa8CBrElSVfjqHldBo9Ygob1Br9lSVfjgP7ASVfrzaBngo92BryHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf1gsM7Br8Czap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBr9nzaR1gsE0geldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsBnBrR0zaBCzZldzIG9fofYgr80zaBYBeldzoNQ4eldBsB0za9rgsU2BZldzIG9fofYgr80zaBYBeldzoNQ4eldBsUYBoRCzabrBHldzIG9fofYgr80zaBYBeldzoNQ4eldBo8lgaRCzaE1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoNQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoNQ4eldBobCBrUngoU7zeldzIG9fofYgr80zaBYBeldzogQ4eldBrRHgrMnBoB2BeldzIG9fofYgr80zaBYBeldzomQ4eldBryrgr9CBsBrgZldzIG9fofYgr80zaBYBeldzoNQ4eldzsMHga9nzabCSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foUCBo87gsMlgsZ9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDHht29foErzsyYBrR7Bse9fowxSVfCgr9nzsyrgrN9foDlht29foEHBsyrzabHBre9fowxSVfCgr9nzsyrgrN9foDlht29foEHgoBCBrfngsO9fowxSVfCgr9nzsyrgrN9foDCht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foD7BP7ASVf2gr8Hza8CgoEHSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zayHgrb7zaBCSVfjcIZAcV29foflBr87Ba8Cgr39fowxSVfCgr9nzsyrgrN9fow79IZpht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDGBoZQ4eldBoB7gr90gsb7BpldzIG9fofYgr80zaBYBeldzoNQ4eldBoUHzsUrBa8YBHldz50HcilASVfCgoM7gsf1BsyCSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgof2gry7gr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCgrU7zab1zaE7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgryCgrR1BaMCSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQ4eldBoyngaMCBrMrgpldzIG9fofYgr80zaBYBeldzovQ4eldBobnBsUYBo8YzeldzIG9fofYgr80zaBYBeldzoNQ4eldBrEHgaErBo80gHldzIG9fofYgr80zaBYBeldzoNQ4eldBrbnBaRCBsMrBeldzIG9fofYgr80zaBYBeldzoNQ4eldgaMrgrBHgs8nBpldzIG9fofYgr80zaBYBeldzovQ4eldgoBHgrE0zaU2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvURpgSHgeZemvsbksfoDdqHldBs9Hzs9CgaMYgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9fofrgoUHgoRHBrN9fowxSVfCgr9nzsyrgrN9foDCBI7ASVfYBsE0Ba9Ygrp9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foB2Bsb7gs90Bov9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9fofrzaEYBaR0grp9fowxSVfCgr9nzsyrgrN9foDrht29foBrgryYzs9Ygo39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf7grR0gs9lBaN9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrfnBrBlBsf1geldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsU7goM7gaR2gpldzIG9fofYgr80zaBYBeldzovQ4eldBsU1gsEYBaU2BZldzIG9fofYgr80zaBYBeldzoeQ4eldBo8HgablBaB1BeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofYgrE0BrR2grk9fowxSVfCgr9nzsyrgrN9foD2BP7ASVfCgr92zsBHBs91SVfjqHldBo9Ygob1Br9lSVfjBsMlht29fof1zaE7BoblBom9fowxSVfCgr9nzsyrgrN9foDHBPHQhS7d4Vfof7ezZEpNtRHhR7ZRZEpzmHghmZ3RRbEdzdvxSVf2BrR2BsfYBov9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfHBrb2BofrBag9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foE7gsb7za91BsZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrgoE1ga82Bog9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyCgsM2BrfYBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBHzsflzsyHzsN9fowxSVfCgr9nzsyrgrN9foD7hSHQ4eldBrUCBaBHBs8YgHldzIG9fofHgafnzsMYgHldzpGxSVf2gafYzaRHzaBnSVfjO5eA9nRASVf2grBHgrMnBsyCSVfjBV29foE0BoyCBobnBZldzoEASVf2zsB7zs80grm9foDngC29foflzsMHBsRlBs39foDl4eldBoB0zsU7BablgZldzoMASVfrBrMYBa81Br8rSVfjkPvHOS7AqHldBsUCgryHgsyrgpldz5O3cPgp4eldBs9rgs9lgoE1BpldzoMASVf2zsf1Bof0goe9foDC4eldBsbrgabnzs97SVfjzsMASVfCBablgsEHBaE1SVfjBV29fofrzsb7gaM0BaZ9foDl4eldBrBlgrMnzaBnBHldzImCkFZQSt29fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsB0zaU0zs90BpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foE0BoUYgsblgoZ9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29foB0gs80zay1BrZ9fowxSVfCgr9nzsyrgrN9fow79IZpht29foUCgaMnBs9lBsm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2gsU0BrMHBrg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf2za8nzsMCBs92SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCzablBaE0goECSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvURpgSHgRUZmefoDdqHldBsBCgoRlBs97zZldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBsUlzsEHzaB2gHldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBs97BrMHBry0BeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBs9nBaBlgoBYgpldzIG9fofYgr80zaBYBeldzoeQ4eldBsyYgoErgoy7BeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBoE1BoBHBrUHgZldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzsEngoECgsg9fowxSVfCgr9nzsyrgrN9fow79IZpht29fofHBsMngoEngaN9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCzay0zs8YBrRnSVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfrBay2gsy7zsB0SVfjqHldBo9Ygob1Br9lSVfjBS7ASVfrBsynzsB7Br97SVfjqHldBo9Ygob1Br9lSVfjkPvHOS7ASVfrBrfHgs9CgsfnSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrB1BrRHBay7BeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgaMHzaBlBaB1BZldzIG9fofYgr80zaBYBeldzImCkFZQ4eldgaMYBobnzs8lgHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foUCgobrBrf2Bov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foyHBo80Brb7zeldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy1zaflBaEHBeldzIG9fofYgr80zaBYBeldzImCkFZQ4eldzsUCBry2Bs9HSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzs80zsRCgsM1SVfjqHldBo9Ygob1Br9lSVfjkPvHOSHQfdldfCgNspmvUpvZZEZhUHmhmiZ58SZAkVfjfIG9foE0gsB0grM1gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhmPZoXnp6OCfjfIG9foy2zaBHBsbngHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhmIvpOSg78F0bXF0IfoDdcIZAcVfAfdBoUR0RtRvtZZmeS7gRS7p6fEew9dfjfIG9foBlgrBlBrflgrk9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeS7gRS7p6fEew9dM5fEmH8nAdzdvxSVf7BoBrgsMlgoMCSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoeQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzoBlht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhsn1yRiZpXCfjf50Hcild4Vfof7ezZEpVRpZRmZQaZeQtkF06XF0IfoDdqHldBs9rBoE1grf0BZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhRn2KkYk3ciGwc59dzdvxSVfCgo9rgsy7BrBCSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQaZeQsc5Z3Xnp6OCfjfIG9foEYzaUngsyrgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhUHmhRYm3c5mwc59dzdvxSVfrgablzsBlBsb7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7mpO5eHcPUdzdvxSVfrBs8nzaUCBrMlSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7mH8nGwc59dzdvxSVfrgry0grbYBsylSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7OCOFZrkie6Oip6OCfjf50Hcild4Vfof7ezZEpVRpZRmZQRS7p6fEew9dfjfIG9foEYBrE7BoM2BaO9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeSHmhtF1yUFpCfV8ymPZoXCfjfIG9foBCzsMlgo9Czak9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBS7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjBrNQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRS7Q6feNpOFAdzdv6kF2AfdldfCgNspmvUpvZZEZhZeQtkF06XF0IfoDdqHldgaM1go8HBoM1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7ezZEpVRpZRmZQRSHgAcYkY8F2TXF0IfoDdqHldBsR7ga97go90BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBaUnzsfCgrv9fowxSVfCgr9nzsyrgrN9foDlht29foElzsbCzaUnzsN9fowxSVfCgr9nzsyrgrN9foD0ht29foE1zsB1Bsb7Bsk9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfrBrM2BaRHgaBYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQhSHQfdldfCgNspmvUpvZZEZhZeQsc5Z3Xnp6OCfjfIG9foBYga81gr9rgse9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaM7gobCBo9CSVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2Bab0Boy7goblSVfjqHldBo9Ygob1Br9lSVfjzS7ASVf2zabrzaE0gaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBrBlBsMHgsUrgHldzIG9fofYgr80zaBYBeldz5O3cPgphSHQhtfAfdBoUR0RtRvtZZmeSHmhRYm3c5mwc59dzdvxSVfCgr87Br97gaEHSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsMlga80BofYBpldzIG9fofYgr80zaBYBeldzoNQ4eldBsM0zsf1ga80BeldzIG9fofYgr80zaBYBeldzopQ4eldBsy0Bry2zsU2gHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foBrBaElgsR7Brk9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7d4Vfof7membZzR7pFmZQaZeQEOFO3kF27foDdqHldBs81BaE2zsE7BpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCgoR0gob2goRrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9l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mbZzR7pFmZQaZeQEkFgTXF0IfoDdqHldBoBlBrMYgaMCBpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrBoyCgoUngsBrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfrBob0grUlgo8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjgI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoECht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsmQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzopQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEnht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzovQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow79IZpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrBCgsErBryHzZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrRHBrBrgsfrBZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaEHgrbrBrBrgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldzsRYzsEYBsUlSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7OCOFZrkie6Oip6OCfjfIG9foflgaE0zs91Bsp9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoRngsyHBof1BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoyrBoU7Ba8ngeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBrUHBoyCgs87BHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrbHgsBYBaU2BpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfYgobnBaBYBpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7p6fEew9dfjfIG9fof2Brb7zs90geldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fofCBr92grflBaZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoBYgsMlgrf2BHldzIG9fofYgr80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BsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRS7Q6feNpOFAdzdvxSVfCBoRCBrUrBaN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCgob0gaMrzak9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaf7zsR2Boy0zeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldgafngo8lgrMCzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2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SVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foUCBry0gob2zag9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fo9YgoylBsBnBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQhS7d4Vfof7membZzR7pFmZQaZeQsciQYkneAXnp6OCfjfIG9fofrzsfnBrB0grN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fof7BrUYgaMHzaN9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoylzsbnBrRCBHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrBHzaU2grE0gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaU1gaR7gsU7SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYzay7Bo9YBsg9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf0gaR2BaB1Bok9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeS7gRSHg6OFeTXF0IfoDdqHldBsf0gry1zs87gpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBsbCzs8HBrB0BHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBrynBaMrBrN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBlBsM7goyHgaZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BaE0za8rBaB7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2BoB2BsU0gs9lSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgs9HgabrgoM1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUlgrMYBrf7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBIHQht29foU2zsMYgrR2zam9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foUHzsb2gaEYzeldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzomQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBskQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDCht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf7zab2gabCgak9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BsR2gsbYBo87SVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2gaE1zaBYgsZ9fowxSVfCgr9nzsyrgrN9foDYht29foEYzsErza8rzZldzIG9fofYgr80zaBYBeldzoblht29foE0BabYBoy0grg9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBaM0Brf7gr91SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoB1Bsf1gof2BpldzIG9fofYgr80zaBYBeldzoNQ4eldBo8nzsbCBay2BHldzIG9fofYgr80zaBYBeldzokQ4eldgaE0ga9HBsfnzZldzIG9fofYgr80zaBYBeldzo8lht29foRCBaM0BsR7zZldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhUHmhRYm3c5mwc59dzdvxSVfCBafYzs8HgoM0SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfrBsRrza8YBsN9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foBCBayCgrfCga39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foBHgsElgoUnzsN9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjzapQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzd71zSHQht29foBYgrfrgryHBr39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBrylBs82Br8lgHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob7grEHBaUHgHldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoE1BPHQhS7d4Vfof7membZzR7pFmZQRS7mpO5eHcPUdzdvxSVf2Bs90BaRrBsm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fofrBrM0zafCBo39fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldBoUnzay2grUrgpldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoyYgrR0BaEnBHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBrMYgr8lBaEYSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBr8rBrfHgobnBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgoM1zafrBrbHSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRS7mH8nGwc59dzdvxSVf2BoB2gr91Bo9HSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof0gsB0Br92Ba39fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDnht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsvQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzofCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDYht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gP7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjzS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsOQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldzImCkFZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfrBab2gr9CBrEnSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrgsMlgsUHBaUrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVf7BoRnBoE2zaUlSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfYgaM1goM2zsm9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQht29fobrBa92gay0gHldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRS7OCOFZrkie6Oip6OCfjfIG9foElgaMCBsflzae9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBs81BrUCgrM0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foE2goRrgsUngZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfCgafHBoEngrfHSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCzsf2za8nBaM1SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foU0Bs9HzaUlzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldgrU7Boy1gsZ9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBayrgrM0BsbHSVfjqHldBo9Ygob1Br9lSVfjBYHQhS7d4Vfof7membZzR7pFmZQRS7p6fEew9dfjfIG9foElBaB2gsEYgoe9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBsRlzayYgrRHBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBoBnBsMCBaUHzeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldBoyYgrU7gs9rBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVfrzaRYBrUlBsR0SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgsBHzs9lgrN9fowxSVfCgr9nzsyrgrN9foDl4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob7Bs9HBs97gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElBsb1goBlBrm9fowxSVfCgr9nzsyrgrN9foDCht29foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29foECBrE2gabHgrN9fowxSVfCgr9nzsyrgrN9foDlht29fofHgrR7zsBnBa39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQhtfAfdBomEZimR0stZOeSHmhtF1yUFpCfV8ymPZoXCfjfIG9foE2zs97zaMCBHldzIG9fofYgr80zaBYBeldzoBASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoUrht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDrBS7ASVf7Ba8lBoBCBo82SVfjqHldBo9Ygob1Br9lSVfj4sy0hSHQ4eldBsflzsU7BsMlgeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foflzaUYzaR7grN9fowxSVfCgr9nzsyrgrN9foD24eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foD2BaNQhS7ASVfCgoM1goB0zsBrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfCza9HBof1BrEHSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhS7ASVfrgabHgoErBob7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfrzsb1BsR1Ba8rSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foD2ht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBovQhSHQfdldfCgEmROespgvZbZhZeQWcdNUOFZTfoDdqHldBs9lgr9CgoRHzZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBs9CgaU7BsECSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfCBsb1goU7goUlSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foB0BoM1BaB7grg9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbHSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb1SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foD2gS7ASVf7BsRlBs9CgrfYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgob7Bs9YgaB2SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfYgrf7ga8nBpldzIG9fofYgr80zaBYBeldz5O3cPgpht29foy0ga8nBo9nBHldzIG9fofYgr80zaBYBeldzoEHhSHQ4eldgaMHza8rza81BZldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29foB2goyrgafYBap9fowxSVfCgr9nzsyrgrN9foDlht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldzsf1BsElzsM0SVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBs8rgsB1BaBYzeldzIG9fofYgr80zaBYBeldzoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBoEHgr90BsBrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBrE0BrU0za8nBHldzIG9fofYgr80zaBYBeldzoNQhSHQfdldfCgEmROespgvZbZhZeQtkF06XF0IfoDdqHldBsE0gaErBa92SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzofCht29fof1gaMYBa9rBom9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsm9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsk9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza91BaN9fowxSVfCgr9nzsyrgrN9foDChSHQ4eldBs8Hga80gsR2zeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldBsy7gaRHBafCBZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fof2gaRnBsBHzsp9fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDGBsylhSHQ4eldBryngr9YBoUrBpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foElzaRYgrU7gsp9fowxSVfCgr9nzsyrgrN9foDCht29fofngoEHzsBlBae9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbrSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbnSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzs39fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb0SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzoEHht29foU2gsM2grfYBok9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfnzsU2gr97Bre9fowxSVfCgr9nzsyrgrN9foDlht29fo9YBoU7go8CSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzab7go8Cgr8rSVfjqHldBo9Ygob1Br9lSVfjBsZQhS7ASVf7BaMHgoMYgoUlSVfjqHldBo9Ygob1Br9lSVfjBC29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoy0ht29foUlgoMCBrfCgoe9fowxSVfCgr9nzsyrgrN9foDGgaOQhS7ASVf1grRlgrb1go39fowxSVfCgr9nzsyrgrN9foDC4eldgaMHBaU1BoEHBeldzIG9foE7BsfCzsE0BoN9fowxSVfCgr9nzsyrgrN9foDCBP7ASVf2goBHBrylBr91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf2zsR1zsECgr82SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsRYgrb2BrB7SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBsbrgab1go8rSVfjqHldBo9Ygob1Br9lSVfjBPHQhS7d4Vfof7membZzR7pFmZQRSHgAcYkY8F2TXF0IfoDdqHldBs8CBoR2zsECBeldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVf2zaM0BsylgsU7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfCgoMngrMrgabYSVfjqHldBo9Ygob1Br9lSVfjBV29foUlgsM7zaf2gsN9fowxSVf2gaECBob2zsflSVfjqHldBo9Ygob1Br9lSVfjBoNQ4eldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoNQ4eldBrEnzaB7Bo9lzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaMnBafrBofnBZldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCzs8Yzay1zsE2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVfrBab0BrEHBrbrSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foRYgoRngrEngpldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE2gsEHzs9Cgom9fowxSVfCgr9nzsyrgrN9foDYht29foE7Bsy1Br9HgZldzIG9fofYgr80zaBYBeldzokQ4eldBs90BsB1goB0SVfjqHldBo9Ygob1Br9lSVfjzsNQ4eldBsblzs9CzabYBHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foflBabrBoUYgr39fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBry2BoynBoECSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCgo80zsflzaErSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf7Bsb7grR2Bo80SVfjqHldBo9Ygob1Br9lSVfjgoNQ4eldgsflBab2gsU0SVfjqHldBo9Ygob1Br9lSVfjBPHQht29foyCgoRngsb0gHldzIG9fofYgr80zaBYBeldzoMASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomEZimR0stZOeSHmhRn0p8FGwc59dzdvxSVf2zsEnBoM7gof2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrM1Br9lzsE0gZldzIG9fofYgr80zaBYBeldzogQhS7ASVf2zsBrBob1grR2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BayHgr97gaR0SVfjqHldBo9Ygob1Br9lSVfjgP7ASVfCgo82gsbrBaM2SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsZ9fowxSVfCgr9nzsyrgrN9foDCht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gY7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9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gayCBsRlSVfjqHldBsM2zsynBrMrgeldzIG9fofYgr80zaBYBeldzovQ4eldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBsfrBsE7zsRYBeldzIG9fofYgr80zaBYBeldzoNQ4eldBoRYgsU0Br8lzeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Ba9lgrBCgeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90BHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90geldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gpldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90gHldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1gr90zZldzIG9fofYgr80zaBYBeldzovQ4eldBoy7Brf1grylBeldzIG9fofYgr80zaBYBeldzovQhS7ASVfCzsMrzsB0gsy1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsEHBsR0grfngeldzIG9fofYgr80zaBYBeldzokQ4eldBsU2zayrgrRHSVfjqHldBo9Ygob1Br9lSVfjgY7ASVf2grb2BrynBrp9fowxSVfCgr9nzsyrgrN9foD0BP7ASVf2zsM0grf1zs9rSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoMlzsBCga9YzeldzIG9fofYgr80zaBYBeldz5O3cPgpht29fofrzaECza8CBsv9fowxSVfCgr9nzsyrgrN9foDlht29fofngob0BoM1Bsg9fowxSVfCgr9nzsyrgrN9foDYht29foU2zsUYgsECgop9fowxSVfCgr9nzsyrgrN9foDnBP7ASVfHBoMlzsEHgap9fowxSVfCgr9nzsyrgrN9foDlhSHQ4eldgaf7zsM0goUYBeldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsbHzab2Bo9nBZldzIG9fofYgr80zaBYBeldzoE1BPHQht29fobrBr9lBs81gZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBlzaBYBab2zsZ9fowxSVfCgr9nzsyrgrN9foDrhSHQ4eldzsRlgrbHzaEHSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM1gs9YgaUHzZldzIG9fofYgr80zaBYBeldzovQ4eldBo8nBsR0BrMlBZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsg9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrb7SVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90gZldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9YzsO9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYgrbYSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldBoy7Brf1gr90zeldzIG9fofYgr80zaBYBeldzoEHht29fof1gaBCza9Yzsp9fowxSVfCgr9nzsyrgrN9foD2gS7ASVfCzaUrBoyYzaMlSVfjqHldBo9Ygob1Br9lSVfjBsZQ4eldgaEHBaEYBo9CgHldzIG9fofYgr80zaBYBeldzoEHht29fo80gaEYgrUrBZldzIG9fofYgr80zaBYBeldzoNQ4eldgr9CgaUngov9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVf1zsUngofYgog9fowxSVfCgr9nzsyrgrN9foD2gSHQht29fobYgoE1zsM2BZldzIG9fofYgr80zaBYBeldzofASVf7BaRlgayCBsRlSVfjqHldBsU2Bof0BsbCBeldzIG9fofYgr80zaBYBeldzoflht29foEnBrRrzaMrgr39fowxSVfCgr9nzsyrgrN9foDlht29foE0gsy0BsfYgoe9fowxSVfCgr9nzsyrgrN9foDlht29fof2gs9YzsErBrm9fowxSVfCgr9nzsyrgrN9foDlht29foB2zsB7zsyngog9fowxSVfCgr9nzsyrgrN9foDlhSHQhtfAfdBomZ3RRbEdzdvxSVfrBoblBoyHBoynSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBsM7Ba9rgoU1BZldzIG9fofYgr80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gr9nzsyrgrN9foD7ht29fofCga90BaE2gsg9fowxSVfCgr9nzsyrgrN9foDlht29fofrgaBngaECgoN9fowxSVfCgr9nzsyrgrN9foDlht29fofrgaBngoMHBog9fowxSVfCgr9nzsyrgrN9foDlht29foB2zaE2BrbCzZldzIG9fofYgr80zaBYBeldzoNQ4eldgaElzsy2Brf1zZldzIG9fofYgr80zaBYBeldzoNQ4eldgaflgrR0zabnBpldzIG9fofYgr80zaBYBeldzof7hSHQ4eldBo90go81BoMrBpldzIG9fofYgr80zaBYBeldzImCkFRASVf7BaRlgayCBsRlSVfjqHldBsE2BaMnBrECzZldz50HcilASVf2BoE1gr9CBr8YSVfjqHldBo9Ygob1Br9lSVfjSVvl9oH9Seldc5pIXPmrkiQ6OZ29SVfy9INC8CNC8CNd8FgTkPv38nAQSe29f5mpcie0Se29fdNDXSUQSe29fbOw95ZbSe29fdNC9eldht29foE7BsyYzaB7Bsv9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBsbrgaR1zsynSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oy0gaE2gr92BobYgaR7zaBASVf2gr9ngrO9foDl4o91zafrgsBngoB7gaUHBsbASVf2gr9nzak9foDl4o8HzayCBrR7zs97grUngYHkht29foflzabrgsblBap9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6goR1zafrgsU0grUYga8Y4eldBs9Ygo9nSVfjBV1ngsy1BoBHgabYga97go9ASVf2gr9nzak9foDl4oy0BaE0goE7gaR1Bay7BseQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofrgaUnBoUYBrZ9fowxSVfCgr9nzsyrgrN9foDrht29fofrzsU1BofngpldzIG9fofYgr80zaBYBeldzoOQ4eldBobHzsb2zsB1gZldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVf2zsB7gsy0zaO9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6Br9CgsU0BafYBoM7gsErgsRASVf2gr9ngrO9foDl4o9lgsy1BoBYBaUYBsbHgaBASVf2gr9nzak9foDl4oU0zaMrzsf7gs8lgsUnza9HhZHQ4eldBoM1zsBHzsMlzZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV11BsbnBa90BsB7zsU2BsM24eldBs9Ygo9nSVfjBV1nBrbCBsRYBa9Ygry0BrMY4eldBs9YgoyYSVfjBV1HBs9nga9lza9HgrUlBaR2hZHQht29foflzsMHBsRlBs39foDlhS7ASVfrgaR7BsUngoRHSVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBr9lzaUHzab1BpldzIG9fofYgr80zaBYBeldzoNQ4eldzs9CgrR1BrbCSVfjqHldBo9Ygob1Br9lSVfjzaNQhS7ASVfrzsRHgsyCgov9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2gsfrgrBHBrbYSVfjqHldBo9Ygob1Br9lSVfj4seQ4eldBsRrBaf2grElSVfjqHldBo9Ygob1Br9lSVfj4seQ4eldBoM1zsBngsMrgeldzIG9fofYgr80zaBYBeldzoNQ4eldgsf1BrU7BofnSVfjqHldBo9Ygob1Br9lSVfjBYHQht29foUCBrE2za90Boe9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVfrBry7Bs8Cgo91SVfjqHldBo9Ygob1Br9lSVfjBP7ASVf7BoErgaE1gsk9fowxSVfCgr9nzsyrgrN9foDYBP7ASVf0BaE2BrfCBsv9fowxSVfCgr9nzsyrgrN9foD2gSHQht29foR7gsU1Br9nzZldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foEYgsRCBsB0zs39fowxSVfCgr9nzsyrgrN9foDrgS7ASVfCBoy1BoRnBoE2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBoBHBsyHBsBYBZldzIG9fofYgr80zaBYBeldzovQ4eldBoBngaRngsRrBeldzIG9fofYgr80zaBYBeldzokQ4eldBo91goM0Br90gHldzIG9fofYgr80zaBYBeldzof1ht29fof1gaMrza87BaZ9fowxSVfCgr9nzsyrgrN9foDCBP7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1l4eldBs9Ygo9nSVfjBV1l4eldBs9YgoyYSVfjBV1YzaUrBsBYzs90gsMYgaUnhZHQht29foflzsMHBsRlBs39foDlhS7ASVfrgr90goRlzab2SVfjqHldBo9Ygob1Br9lSVfjBoZQ4eldgaRrgo8HBsE7SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldzsM2BsBCBoECSVfjqHldBo9Ygob1Br9lSVfjBreQhSHQfdldfCgtmR0EmZfdzdvxSVf2zaB1gry1Br8nSVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBoM1zsBngsMrgeldzIG9fofYgr80zaBYBeldzoNQ4eldBr9YBr90zsBHgZldzIG9fofYgr80zaBYBeldzpldSVvQ4eldBr91gsy1Br8YgpldzIG9fofYgr80zaBYBeldzoNQhS7ASVfCBsf0zaf2Bs97SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2BaUlBaM0Bs8rSVfjqHldBo9Ygob1Br9lSVfjgP7ASVf2gsUngaflgsy0SVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBo9HBs8CgaRCSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foECgs8HBr9HBrZ9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoM6BPHkht29foBrgafHgr9ngrp9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoM6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBof1zs8Cgo8rBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oUYBaR1zafngoy7zsR2gr3QSSHQ4eldBoM0BaR2gsM2zeldzoNQht29fofrgablgo8CBag9fowxSVfCgr9nzsyrgrN9fow58F2rOS7ASVfCBr9CgaR7grf2SVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBrB2gs8HgrblBpldzIG9fofYgr80zaBYBeldzImCkFZQ4eldBrBrBaECBoM1BHldzIG9fofYgr80zaBYBeldz5O3cPgpht29foUCBrE7grE0zae9fowxSVfCgr9nzsyrgrN9foDCht29foUrBobnBaBCgHldzIG9fofYgr80zaBYBeldzImCkFZQhS7ASVfCgsfnzsb7Bs92SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBoE1Bo9Ygr9HgHldzIG9fofYgr80zaBYBeldzoNQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBryCBsB7zs92BZldzIG9fofYgr80zaBYBeldz5O3cPgphSHQ4eldBrM7gaBHgsyCzeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foD24oMASVf2gr9ngrO9foDl4o91gaB2Br90grbHBa97ga8ASVf2gr9nzak9foDl4oUYBaR1zafngoy7zsR2gr3QSSHQ4eldBoM0BaR2gsM2zeldzoNQhSHQ4eldBrE0zsB7BsEnBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE1gr9HgrRngsk9fowxSVfCgr9nzsyrgrN9foDlht29foBrgsbnza8lBHldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVfCgrbYgsRlBaEYSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4o9lgsy1BoBYBaUYBsbHgaBASVf2gr9ngrO9foDl4o8CgrUHBsMlBoR0grylzayASVf2gr9nzak9foDl4o8ngo8ngo81goRrgay1BsOQSS7ASVfrgoEHgr9YBrBnSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foDl4oMASVf2gr9ngre9foDl4oMASVf2gr9ngrO9foDl4oMASVf2gr9nzak9foDl4oNQSSHQ4eldBoM0BaR2gsM2zeldzoNQht29foB1BoErgabYBse9fowxSVfCgr9nzsyrgrN9fow58F2rOSHQht29fo90zsb1zsR2SVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVfCBsyCgr9YgrRYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lhZHQht29foflzsMHBsRlBs39foDlhS7ASVfrzaf2BrU0grE2SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldgsbYzaRrBrblSVfjqHldBo9Ygob1Br9lSVfjkPvHOSHQht29foy0gof2za8CzZldzIG9foUlgsM7zaf2gsN9fowxSVf2Boy2Brf0zaO9fowxSVfCgr9nzsyrgrN9fow9fINCOsH9SeldUbpRUtNRmZgRSe29fdN6cnH6fi0K9Pv9fI7ASVf2BrBCgsf0gr82SVfjqHldBo9Ygob1Br9lSVfjO5eA9nZQ4eldBsBYgry1goE1SVfjcIZAcV29foE7Ba80goEYgaZ9fowxSVfCgr9nzsyrgrN9foD2ht29foEHgabCgaRCzZldz50HcilASVf2go9ngaUHgo9lSVfjqHldBo9Ygob1Br9lSVfjBI7ASVf2za9Ygs9HgoRYSVfjqHldBo9Ygob1Br9lSVfjBI7ASVfCBoElgsRCzsk9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBrRlzay1gaU1gHldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9Ygo9nSVfjBV1rzaMrzsf2zsBYzsUCgsMH4eldBs9YgoyYSVfjBV10BoEHgoynzsEYBrM7zsbrhZHQ4eldzaR7zs8lgsbHSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oB1BaB0BoE0Br90gafHBaRASVf2gr9ngrO9foDl4oB1BaB0BoE0Br90gafHBaRASVf2gr9nzak9foDl4obCBsRnza80Bs9rBaU0zsgQ4PG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6Bsy1BoBHBrECgrMlBo92gd29foEYgr8YgpldzoM6Bsy1BoBHBrECgrMlBo92gd29foEYgr81gHldzoM6gaR1zafrgs82go81BrbnhZHQht29foflzsMHBsRlBs39foDlhS7ASVfCBoR0BoRnBoy7SVfjqHldBo9Ygob1Br9lSVfjBsOQ4eldBoB0gayCBo8nSVfjqHldBo9Ygob1Br9lSVfjgS7ASVfCgsylgsMYBo87SVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foBHBay1zaU7zak9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkht29foyHgabnBaR0gZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lht2xSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oRlBsbnBay2Brb0zsEYgd29foEYgr8YgpldzoM6gsM2zs8lzaErzsb0Bs9n4eldBs9YgoyYSVfjBV1HBaE0goM1BsB0zsb2grOQSSHQ4eldBoM0BaR2gsM2zeldzoeQht29fof1Bo92BoE1BsN9fow6kF2A4eldBrB7Br8lgoElSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foBHBay1zaU7zak9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkht29foyHgabnBaR0gZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1CBrRCzsU2BrB7BoUYgsy04eldBs9Ygo9nSVfjBV1YzaUrBsBYzs90gsMYgaUn4eldBs9YgoyYSVfjBV1HzayCBrRrBsyngoMYBr82ht2xSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oE2gr87grMngo92BoBYzsUn4eldBs9Ygo9nSVfjBV1rzsf2gs81zsy0grRrgrfr4eldBs9YgoyYSVfjBV12gaRlzsylgaR7goyrBrMrzPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foBHBay1zaU7zak9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoM6gr9CzsfHgrB7gsE0zsR1gt29foEYgr8YgpldzoM6gsbYgaE7BsbHgsBYgs8YBt29foEYgr81gHldzoM6goE0BrU0gr9Ygob1gsEnzPHkht29foyHgabnBaR0gZldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBt1l4eldBs9Ygo92SVfjBV1YgrfHgablzsfYgobnBof14eldBs9Ygo9nSVfjBV1Hzs8lgry7gsR7gay2gsMn4eldBs9YgoyYSVfjBV1nBsbnBa91goR1BsMrzsUrht2xSVf2gr9ngrN9foDl4oyYgt29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBSHQ4eldBr9lzaUHzab1BpldzIG9fofYgr80zaBYBeldzoNQ4eldBryCBsB7zs92BZldzIG9fofYgr80zaBYBeldzovQ4eldzsfnBo80ga91SVfjqHldBo9Ygob1Br9lSVfjBPHQht29fob1BsR7BoBnBeldzIG9fofYgr80zaBYBeldz5O3cPgp4eldgaMHBaU1BoEHBeldzIG9foE1gr9HgrRngsk9fowxSVfCgr9nzsyrgrN9foDlht29fofrzsU1BofngpldzIG9fofYgr80zaBYBeldzomQ4eldBrBHzs81goMrSVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9fofYzs80BrU7zag9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoM6gry7BrErgrbYzsRlgrU7gd29foEYgr81gHldzoM6ga9lgsy1Bo8nzaU0gsEYzPHkht29foB2gs82goyYzae9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoE6BV29foEYgr81gHldzoE6BPHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBryCBsB7zs92BZldzIG9fofYgr80zaBYBeldz5O3cPgpht29fobYBo9HzaB0BpldzIG9fofYgr80zaBYBeldzof7hSHQhtfAfdBoRbQWZeQaZeQEOFO3kF27foDdcIZAcVfAfdBoRbQWZeQaZeQEkFgTXF0IfoDdcIZAcVfAfdBoRbQWZeQaZeQi95Zp9Ym3c5mwc59dzdv6kF2AfdldfCgts7QRS7gRS7p6fEew9dfjf50Hcild4VfofHvWsHmhUHmhtF1yUFpCfV8ymPZoXCfjf50Hcild4VfofHvWsHmhUHmhsn1yRiZpXCfjf50Hcild4VfofHvWsHmhUHmhRIZ6c5p6OCfjf50Hcild4VfofHvWsHmhUHmhRn2KkYk3ciGwc59dzdv6kF2AfdldfCgts7QRS7gRSHg6OFeTXF0IfoDdcIZAcVfAfdBoRbQWZeQaZeQskie6Oip6OCfjf50Hcild4VfofHvWsHmhZeQEOFO3kF27foDdcIZAcVfAfdBoRbQWZeQRS7mH8nGwc59dzdv6kF2AfdldfCgts7QRSHmhmIvpOSg78F0bXF0IfoDdcIZAcVfAfdBoRbQWZeQRS7p6fEew9dfjf50Hcild4VfofHvWsHmhZeQvcdNNXSfyvdNEkFgTfoDdcIZAcVfAfdBoRbQWZeQRS7Q6feNpOFAdzdv6kF2AfdldfCgts7QRSHmhRIZ6c5p6OCfjf50Hcild4VfofHvWsHmhZeQsciQYkneAXnp6OCfjf50Hcild4VfofHvWsHmhZeQsc5Z3Xnp6OCfjf50Hcild4VfofHvWsHmhZeQskie6Oip6OCfjf50Hcild4VfofHOvRHZNseBdzdvxSVf2Brylgr8lzaf1SVfjqHldBo9Ygob1Br9lSVfjO5eA9nRASVf7BaRlgayCBsRlSVfjqHldBrEYBaB0Bs91BHldzIG9fofHgs8nzaylgeldzIG9fofYgr80zaBYBeldzIG9foflzsM2gsR0BoO9fowxSVflSVfjqHldBoM0BaEHgsbCgpldzpGxSVf2gr9ngrN9foD24oMASVf2gr9ngre9foDl4oBHBob7BsE1gsfrgsbYgrfASVf2gr9ngrO9foDl4oBHBob7BsE1gsfrgsbYgrfASVf2gr9nzak9foDl4obnBa91gaBYgs8ngrRYBIHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBo9Ygob1Br9lSVfjkPvHOS7ASVfrgs9rzafYBsBYSVfjqHldBoRHgo81zaM7SVfjqHldBo9Ygob1Br9lSVfjqHldBoM0BaEHgsbCgpldzIG9foN9fowxSVfCBablBsRHzsfnSVfjFYG9foEYgr8YBeldzoE6BV29foEYgr8YBZldzoE6BV29foEYgr8YgpldzoM6gsM0zaMrzsRlgryngsblgd29foEYgr81gHldzoM6gsM0zaMrzsRlgryngsblgIHkhS7ASVfCBablgsEHBaE1SVfjBPHQ4eldBo9Ygob1Br9lSVfjkPvHOSHQht29foEHgr9lBaU2gre9fowxSVfCgr9nzsyrgrN9fow58F2rOt29foUlgsM7zaf2gsN9fowxSVf2gsUnBsEHgryrSVfjqHldBo9Ygob1Br9lSVfjBoM7gY7ASVf2za9Ygs9HgoRYSVfjqHldBo9Ygob1Br9lSVfjBPHQht29foflgrRHgoR0grv9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foElgo91zaE2Bag9fow6kF2A4eldBoUngaE1BaflgHldz50HcilASVfrgaUCgaElgsO9fow6kF2A4eldBr91za97ga9YgpldzIG9fofYgr80zaBYBeldzoErBP7ASVf7Brb0grMYBs39fow6kF2AhS7ASVf7BoMHza9ngrBlSVfjqHldBo9Ygob1Br9lSVfjkPvHOt29foUlgsM7zaf2gsN9fowxSVf2za9Ygs9HgoRYSVfjqHldBo9Ygob1Br9lSVfjBP7ASVfCBsBCga8Hzs8YSVfjqHldBo9Ygob1Br9lSVfjBS7ASVfrBrR0goynBag9fowxSVfCgr9nzsyrgrN9fowxSVfCBablBsRHzsfnSVfjqHldBoM1zsMngs8HzeldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBV1l4eldBs9Ygo92SVfjBt1l4eldBs9Ygo9nSVfjBt1l4eldBs9YgoyYSVfjBt1lhZHQ4eldBoM1zsB7zsbnBpldzIG9foflzsM2gsR0BoO9fowcqHldBs9Ygo9lSVfjBV1YBrBrBrBrgabCBo90BaRr4eldBs9Ygo92SVfjBV11BoM0goMYBaMHBsE0Brf74eldBs9Ygo9nSVfjBV11BoM0goMYBaMHBsE0Brf74eldBs9YgoyYSVfjBV11BoM0goMYBaMHBsE0Brf7hZHQht29foflzsMHBsRlBs39foDlhS7ASVfrgaElgrM0go81SVfjqHldBo9Ygob1Br9lSVfjBoRlht29fobYBo9HzaB0BpldzIG9fofYgr80zaBYBeldzo3QhS7ASVfngoyHBoy2zaN9fowxSVfCgr9nzsyrgrN9fow79IZp4eldgaMHBaU1BoEHBeldzIG9foEYgr8nBZldzIG9fofYgr80zaBYBeldzoEHBP7ASVf2gr9ngov9fowxSVfCgr9nzsyrgrN9foDlht29foEYgr8nBHldzIG9fofYgr80zaBYBeldzoflBP7ASVf2zsB7gsR0BoN9fowxSVfCgr9nzsyrgrN9foDnzsMlht29foBHBsBCgoblza39fowxSVfCgr9nzsyrgrN9fow58F2rOSHQhS7dhU==_"));
    v1266();
    l_v1156_1.list:update(v1261());
end;
v5("begin_antiaim");
v1156 = nil;
v1156 = {};
v1157 = 0;
v1158 = false;
v1161 = 0;
v1167 = false;
v1201 = {
    [1] = -1, 
    [2] = 1, 
    [3] = 0, 
    [4] = -1, 
    [5] = 1, 
    [6] = 0, 
    [7] = -1, 
    [8] = 0, 
    [9] = 1, 
    [10] = -1, 
    [11] = 0, 
    [12] = 1
};
v1202 = 0;
l_match_0 = 0;
v5("antiaim_buffer");
local v1289 = {};
local l_angles_0 = v25.antiaim.angles;
local v1291 = {};
v1291.__index = v1291;
v1291.clear = function(v1292)
    for v1293 in pairs(v1292) do
        v1292[v1293] = nil;
    end;
end;
v1291.copy = function(v1294, v1295)
    for v1296, v1297 in pairs(v1295) do
        v1294[v1296] = v1297;
    end;
end;
do
    local l_l_angles_0_0 = l_angles_0;
    v1291.unset = function(_)
        -- upvalues: l_l_angles_0_0 (ref)
        l_l_angles_0_0.enabled:override();
        l_l_angles_0_0.pitch:override();
        l_l_angles_0_0.yaw[1]:override();
        l_l_angles_0_0.yaw[2]:override();
        l_l_angles_0_0.yaw[3]:override();
        l_l_angles_0_0.yaw[4]:override();
        l_l_angles_0_0.yaw[5]:override();
        l_l_angles_0_0.yaw_modifier[1]:override();
        l_l_angles_0_0.yaw_modifier[2]:override();
        l_l_angles_0_0.body_yaw[1]:override();
        l_l_angles_0_0.body_yaw[2]:override();
        l_l_angles_0_0.body_yaw[3]:override();
        l_l_angles_0_0.body_yaw[4]:override();
        l_l_angles_0_0.body_yaw[5]:override();
        l_l_angles_0_0.body_yaw[6]:override();
        l_l_angles_0_0.freestanding[1]:override();
        l_l_angles_0_0.freestanding[2]:override();
        l_l_angles_0_0.freestanding[3]:override();
        l_l_angles_0_0.extended_angles[1]:override();
        l_l_angles_0_0.extended_angles[2]:override();
        l_l_angles_0_0.extended_angles[3]:override();
    end;
    v1291.set = function(v1300)
        -- upvalues: l_l_angles_0_0 (ref)
        l_l_angles_0_0.enabled:override(v1300.enabled);
        l_l_angles_0_0.pitch:override(v1300.pitch);
        l_l_angles_0_0.yaw[1]:override(v1300.yaw);
        l_l_angles_0_0.yaw[2]:override(v1300.yaw_base);
        l_l_angles_0_0.yaw[3]:override(v1300.yaw_offset);
        l_l_angles_0_0.yaw[4]:override(v1300.avoid_backstab);
        l_l_angles_0_0.yaw[5]:override(v1300.hidden);
        l_l_angles_0_0.yaw_modifier[1]:override(v1300.yaw_modifier);
        l_l_angles_0_0.yaw_modifier[2]:override(v1300.modifier_offset);
        l_l_angles_0_0.body_yaw[1]:override(v1300.body_yaw);
        l_l_angles_0_0.body_yaw[2]:override(v1300.inverter);
        l_l_angles_0_0.body_yaw[3]:override(v1300.left_limit);
        l_l_angles_0_0.body_yaw[4]:override(v1300.right_limit);
        l_l_angles_0_0.body_yaw[5]:override(v1300.options);
        l_l_angles_0_0.body_yaw[6]:override(v1300.freestanding_body_yaw);
        l_l_angles_0_0.freestanding[1]:override(v1300.freestanding);
        l_l_angles_0_0.freestanding[2]:override(v1300.freestanding_disable_yaw_modifiers);
        l_l_angles_0_0.freestanding[3]:override(v1300.freestanding_body_freestanding);
        l_l_angles_0_0.extended_angles[1]:override(v1300.extended_angles);
        l_l_angles_0_0.extended_angles[2]:override(v1300.extended_angles_pitch);
        l_l_angles_0_0.extended_angles[3]:override(v1300.extended_angles_roll);
    end;
    setmetatable(v1289, v1291);
end;
v5("antiaim_defensive");
l_angles_0 = {};
v1291 = 0;
local v1301 = 0;
local v1302 = false;
local v1303 = 0;
local function v1305(v1304)
    -- upvalues: v25 (ref)
    if v25.ragebot.main.double_tap[1]:get() then
        return v1304.exploits:get("Double Tap");
    elseif v25.ragebot.main.hide_shots[1]:get() then
        return v1304.exploits:get("Hide Shots");
    else
        return false;
    end;
end;
local function v1308()
    local v1306 = entity.get_local_player();
    if v1306 == nil then
        return false;
    else
        local v1307 = v1306:get_player_weapon();
        if v1307 == nil then
            return false;
        elseif v1307:get_weapon_info().weapon_type == 9 then
            return false;
        else
            return true;
        end;
    end;
end;
do
    local l_v1157_1, l_v1158_1, l_v1161_2, l_v1167_2, l_v1201_1, l_v1202_1, l_l_match_0_2, l_v1289_0, l_l_angles_0_1, l_v1291_0, l_v1301_0, l_v1302_0 = v1157, v1158, v1161, v1167, v1201, v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302;
    do
        local l_l_v1291_0_0, l_l_v1301_0_0, l_l_v1302_0_0, l_v1303_0, l_v1305_0, l_v1308_0 = l_v1291_0, l_v1301_0, l_v1302_0, v1303, v1305, v1308;
        local function v1327()
            -- upvalues: l_l_v1302_0_0 (ref)
            l_l_v1302_0_0 = not l_l_v1302_0_0;
        end;
        local function v1328()
            -- upvalues: l_v1303_0 (ref)
            l_v1303_0 = l_v1303_0 + 1;
        end;
        local function v1333(v1329, v1330)
            -- upvalues: l_l_v1302_0_0 (ref), v24 (ref), v153 (ref), l_l_v1291_0_0 (ref)
            local v1331 = v1330.pitch:get();
            if v1331 == "Off" then
                return;
            elseif v1331 == "Static" then
                v1329.pitch_offset = v1330.pitch_offset:get();
                return;
            elseif v1331 == "Jitter" then
                v1329.pitch_offset = l_l_v1302_0_0 and v1330.pitch_offset_2:get() or v1330.pitch_offset_1:get();
                return;
            elseif v1331 == "Spin" then
                local v1332 = globals.curtime * (v1330.pitch_speed:get() * 0.1);
                v1329.pitch_offset = v24.lerp(v1330.pitch_offset_1:get(), v1330.pitch_offset_2:get(), v1332 % 1);
                return;
            elseif v1331 == "Random" then
                v1329.pitch_offset = utils.random_int(v1330.pitch_offset_1:get(), v1330.pitch_offset_2:get());
                return;
            else
                if v1331 == "Static Random" then
                    if v153.defensive_ticks == v153.max_defensive_ticks then
                        l_l_v1291_0_0 = utils.random_int(v1330.pitch_offset_1:get(), v1330.pitch_offset_2:get());
                    end;
                    v1329.pitch_offset = l_l_v1291_0_0;
                end;
                return;
            end;
        end;
        local function v1336(_, _)

        end;
        local function v1343(v1337, v1338)
            -- upvalues: v24 (ref), v153 (ref), l_l_v1301_0_0 (ref), v1336 (ref)
            local v1339 = v1338.yaw:get();
            if v1339 == "Off" then
                return;
            else
                if v1339 == "Static" then
                    v1337.yaw_offset = v1338.yaw_offset:get();
                end;
                if v1339 == "Spin" then
                    local v1340 = globals.curtime * (v1338.yaw_speed:get() * 0.1);
                    local v1341 = v1338.yaw_offset_360:get();
                    v1337.yaw_offset = -(180 + v24.lerp(-v1341, v1341, v1340 % 1));
                end;
                if v1339 == "Random" then
                    local v1342 = math.abs(v1338.yaw_offset_360:get() * 0.5);
                    v1337.yaw_offset = 180 + utils.random_int(-v1342, v1342);
                end;
                if v1339 == "Left/Right" then
                    v1337.yaw_offset = 0;
                    v1337.yaw_left = v1338.yaw_left:get();
                    v1337.yaw_right = v1338.yaw_right:get();
                end;
                if v1339 == "Static Random" then
                    if v153.defensive_ticks == v153.max_defensive_ticks then
                        l_l_v1301_0_0 = utils.random_int(v1338.yaw_left:get(), v1338.yaw_right:get());
                    end;
                    v1337.yaw_offset = l_l_v1301_0_0;
                end;
                v1336(v1337, v1338);
                return;
            end;
        end;
        local function v1349(v1344, v1345)
            if not v1345.delay:get() then
                return;
            else
                local v1346 = v1345.delay_mode:get();
                if v1346 == "Default" then
                    v1344.delay = v1345.delay_timing:get();
                end;
                if v1346 == "Random" then
                    v1344.delay = utils.random_int(v1345.delay_min_timing:get(), v1345.delay_max_timing:get());
                end;
                if v1346 == "Custom" then
                    local v1347 = v1345.delay_sliders:get();
                    local v1348 = v1345["delay_" .. math.random(1, v1347)];
                    if v1348 ~= nil then
                        v1344.delay = v1348:get();
                    end;
                end;
                return;
            end;
        end;
        l_l_angles_0_1.update = function(_, v1351)
            -- upvalues: l_v1289_0 (ref), v25 (ref), v1327 (ref), v1328 (ref)
            l_v1289_0.hidden = false;
            v25.ragebot.main.hide_shots[2]:override();
            v25.ragebot.main.double_tap[2]:override();
            if v1351.choked_commands == 0 then
                v1327();
                v1328();
            end;
        end;
        l_l_angles_0_1.apply = function(_, v1353, v1354)
            -- upvalues: l_v1308_0 (ref), l_v1289_0 (ref), v25 (ref), l_v1305_0 (ref), v1333 (ref), v1343 (ref), v1349 (ref)
            local v1355 = l_v1308_0();
            l_v1289_0.hidden = v1355;
            if v1354.force_defensive == nil or not v1354.force_defensive:get() then
                v1355 = false;
            end;
            v25.ragebot.main.hide_shots[2]:override(v1355 and "Break LC" or "Favor Fire Rate");
            v25.ragebot.main.double_tap[2]:override(v1355 and "Always On" or "On Peek");
            if v1355 and v1354.custom_defensive_ticks:get() then
                local v1356 = v1354.defensive_ticks_mode:get();
                local v1357 = nil;
                if v1356 == "Default" then
                    v1357 = v1354.defensive_ticks:get();
                end;
                if v1356 == "Random" then
                    v1357 = utils.random_int(v1354.min_defensive_ticks:get(), v1354.max_defensive_ticks:get());
                end;
                if v1356 == "Custom" then
                    local v1358 = v1354.defensive_ticks_sliders:get();
                    v1357 = v1354["defensive_ticks_" .. math.random(1, v1358)]:get();
                end;
                if v1357 ~= nil then
                    v1353.force_defensive = v1353.command_number % v1357 == 0;
                end;
            end;
            if v1354.enabled:get() and l_v1305_0(v1354) then
                local v1359 = {};
                v1333(v1359, v1354);
                v1343(v1359, v1354);
                v1349(v1359, v1354);
                l_v1289_0.defensive = v1359;
                return true;
            else
                return false;
            end;
        end;
    end;
    v5("antiaim_builder");
    l_v1291_0 = {};
    l_v1301_0 = v151.antiaim.builder;
    l_v1302_0 = {
        Reversed = "Peek Real", 
        Off = "Off", 
        Default = "Peek Fake"
    };
    v1303 = nil;
    v1305 = function(v1360)
        -- upvalues: l_v1289_0 (ref)
        local l_angles_1 = v1360.angles;
        local v1362 = l_angles_1.yaw:get();
        local v1363 = l_angles_1.yaw_method:get();
        local v1364 = l_angles_1.yaw_offset:get();
        l_v1289_0.yaw = "Backward";
        l_v1289_0.yaw_offset = v1364;
        if v1362 == "2-Way" then
            local v1365 = l_angles_1.yaw_left:get();
            local v1366 = l_angles_1.yaw_right:get();
            local v1367 = l_angles_1.yaw_left_random:get();
            local v1368 = l_angles_1.yaw_right_random:get();
            if l_angles_1.yaw_left_randomize:get() then
                v1365 = utils.random_int(v1365, v1367);
            end;
            if l_angles_1.yaw_right_randomize:get() then
                v1366 = utils.random_int(v1366, v1368);
            end;
            l_v1289_0.yaw_left = v1365;
            l_v1289_0.yaw_right = v1366;
        end;
        if v1363 == "Wave" then
            local v1369 = l_v1289_0.yaw_offset or 0;
            local v1370 = l_angles_1.yaw_frequency:get();
            local v1371 = l_angles_1.yaw_amplitude:get();
            l_v1289_0.yaw_offset = v1369 + math.sin(globals.curtime * v1370) * v1371;
        end;
        if v1363 == "Shake" then
            local v1372 = l_v1289_0.yaw_offset or 0;
            local v1373 = l_angles_1.yaw_min:get();
            local v1374 = l_angles_1.yaw_max:get();
            local v1375 = l_angles_1.yaw_scale:get();
            local v1376 = globals.curtime * v1375;
            l_v1289_0.yaw_offset = v1372 + utils.random_float(v1373, v1374) * math.sin(v1376) * math.cos(v1376 * 2) * math.sin(v1376 * 0.5);
        end;
    end;
    v1308 = function(v1377)
        -- upvalues: v152 (ref), l_v1289_0 (ref)
        local l_angles_2 = v1377.angles;
        local v1379 = l_angles_2.yaw_modifier:get();
        local v1380 = l_angles_2.modifier_mode:get();
        local v1381 = l_angles_2.modifier_offset:get();
        local v1382 = l_angles_2.modifier_switcher:get();
        if v1380 == "Random" then
            v1381 = utils.random_int(l_angles_2.modifier_min_offset:get(), l_angles_2.modifier_max_offset:get());
        end;
        if v1380 == "Custom" then
            local v1383 = l_angles_2.modifier_sliders:get();
            local v1384 = l_angles_2["modifier_offset_" .. v152.sent_packets % v1383 + 1];
            if v1384 ~= nil then
                v1381 = v1384:get();
            end;
        end;
        if v1380 == "Default" or v1380 == "Custom" then
            local v1385 = v1381 * (l_angles_2.modifier_random:get() * 0.01);
            v1381 = v1381 + utils.random_int(-v1385, v1385);
        end;
        if v1382 == "Ticks" then
            local v1386 = l_angles_2.modifier_ticks_value:get();
            if globals.tickcount % v1386 <= 1 then
                v1386 = "Off";
            end;
        end;
        if v1382 == "Random" then
            local v1387 = l_angles_2.modifier_random_value:get();
            if utils.random_int(0, v1387) == v1387 then
                v1387 = "Off";
            end;
        end;
        if v1379 == "Off" then
            l_v1289_0.yaw_modifier = "Disabled";
            l_v1289_0.modifier_offset = nil;
            return;
        else
            if v1379 == "Frostbomber" then
                v1380 = "Random";
            end;
            l_v1289_0.yaw_modifier = v1379;
            l_v1289_0.modifier_offset = v1381;
            return;
        end;
    end;
    do
        local l_l_v1301_0_1, l_l_v1302_0_1, l_v1303_1, l_v1305_1, l_v1308_1 = l_v1301_0, l_v1302_0, v1303, v1305, v1308;
        local function v1407(v1393)
            -- upvalues: l_l_v1302_0_1 (ref), l_v1289_0 (ref)
            local l_angles_3 = v1393.angles;
            local v1395 = l_angles_3.body_yaw:get();
            local v1396 = l_angles_3.body_yaw_type:get();
            if v1396 == "Ticks" then
                local v1397 = l_angles_3.body_yaw_ticks_value:get();
                if globals.tickcount % v1397 <= 1 then
                    v1395 = false;
                end;
            end;
            if v1396 == "Random" then
                local v1398 = l_angles_3.body_yaw_random_value:get();
                if utils.random_int(0, v1398) == v1398 then
                    v1395 = false;
                end;
            end;
            local v1399 = {};
            if l_angles_3.body_yaw_jitter:get() then
                table.insert(v1399, "Jitter");
            end;
            local v1400 = l_angles_3.body_yaw_limit_type:get();
            local v1401 = l_angles_3.body_yaw_limit_left_value:get();
            local v1402 = l_angles_3.body_yaw_limit_right_value:get();
            local v1403 = l_angles_3.body_yaw_invert_chance:get();
            local v1404 = l_l_v1302_0_1[l_angles_3.body_yaw_freestanding:get()] or "Off";
            if v1400 == "Random" then
                v1401 = utils.random_int(l_angles_3.body_yaw_limit_min_value:get(), l_angles_3.body_yaw_limit_max_value:get());
                v1402 = utils.random_int(l_angles_3.body_yaw_limit_min_value:get(), l_angles_3.body_yaw_limit_max_value:get());
            end;
            if v1400 == "Ticks" then
                local v1405 = l_angles_3.body_yaw_timing:get();
                local v1406 = globals.tickcount % (v1405 * 2) < v1405 and l_angles_3.body_yaw_limit_min_value:get() or l_angles_3.body_yaw_limit_max_value:get();
                v1401 = v1406;
                v1402 = v1406;
            end;
            l_v1289_0.body_yaw = v1395;
            l_v1289_0.left_limit = v1401;
            l_v1289_0.right_limit = v1402;
            l_v1289_0.options = v1399;
            l_v1289_0.freestanding_body_yaw = v1404;
            l_v1289_0.invert_chance = v1403;
        end;
        local function v1416(v1408)
            -- upvalues: l_v1289_0 (ref)
            local l_angles_4 = v1408.angles;
            if l_angles_4.yaw:get() ~= "2-Way" then
                return;
            elseif not l_angles_4.delay:get() then
                return;
            else
                local v1410 = l_angles_4.delay_mode:get();
                if v1410 == "Default" then
                    l_v1289_0.delay = l_angles_4.delay_timing:get();
                end;
                if v1410 == "Random" then
                    l_v1289_0.delay = utils.random_int(l_angles_4.delay_min_timing:get(), l_angles_4.delay_max_timing:get());
                end;
                if v1410 == "Custom" then
                    local v1411 = l_angles_4.delay_sliders:get();
                    local v1412 = l_angles_4["delay_" .. math.random(1, v1411)];
                    if v1412 ~= nil then
                        l_v1289_0.delay = v1412:get();
                    end;
                end;
                if v1410 ~= "Random" then
                    local v1413 = l_angles_4.delay_random:get();
                    if v1413 > 0 and l_v1289_0.delay ~= nil then
                        local v1414 = v1413 * 0.01;
                        local v1415 = utils.random_float(-v1414 * 0.6, v1414 * 0.6);
                        l_v1289_0.delay = l_v1289_0.delay + math.floor(l_v1289_0.delay * v1415);
                        l_v1289_0.delay = math.clamp(l_v1289_0.delay, 1, 22);
                    end;
                end;
                return;
            end;
        end;
        l_v1291_0.get = function(_, v1418, v1419)
            -- upvalues: l_l_v1301_0_1 (ref)
            return l_l_v1301_0_1[v1418][v1419];
        end;
        l_v1291_0.is_active_ex = function(_, v1421)
            return v1421.enabled == nil or v1421.enabled:get();
        end;
        l_v1291_0.is_active = function(v1422, v1423, v1424)
            -- upvalues: l_v1291_0 (ref)
            local v1425 = v1422:get(v1423, v1424);
            if v1425 == nil then
                return false;
            else
                return l_v1291_0:is_active_ex(v1425);
            end;
        end;
        l_v1291_0.get_old_items = function(_)
            -- upvalues: l_v1303_1 (ref)
            return l_v1303_1;
        end;
        l_v1291_0.apply_ex = function(_, v1428)
            -- upvalues: l_v1289_0 (ref), v1407 (ref), l_v1305_1 (ref), l_v1308_1 (ref), v1416 (ref), l_v1303_1 (ref)
            if v1428 == nil then
                return false;
            else
                if v1428.angles ~= nil then
                    l_v1289_0.enabled = true;
                    l_v1289_0.pitch = "Down";
                    l_v1289_0.yaw_base = "At Target";
                    v1407(v1428);
                    l_v1305_1(v1428);
                    l_v1308_1(v1428);
                    v1416(v1428);
                end;
                l_v1303_1 = v1428;
                return true;
            end;
        end;
        l_v1291_0.apply = function(v1429, v1430, v1431)
            local v1432 = v1429:get(v1430, v1431);
            if v1432 == nil then
                return nil;
            elseif not v1429:is_active_ex(v1432) then
                return nil;
            else
                v1429:apply_ex(v1432);
                return v1432;
            end;
        end;
        l_v1291_0.update = function(v1433, _, v1435)
            -- upvalues: v492 (ref)
            if rage.exploit:get() ~= 1 then
                local v1436 = v1433:apply(v1435, "Fakelag");
                if v1436 ~= nil then
                    return v1436;
                end;
            end;
            local v1437 = v1433:apply(v1435, (v492.get()));
            if v1437 ~= nil then
                return v1437;
            else
                return v1433:apply(v1435, "Default");
            end;
        end;
        v1156.builder = l_v1291_0;
    end;
    v5("antiaim_antibrute");
    l_v1301_0 = {};
    l_v1302_0 = v506.get_event_bus();
    v1303 = {};
    v1305 = nil;
    v1308 = nil;
    local v1438 = nil;
    local v1439 = nil;
    local v1440 = nil;
    do
        local l_v1305_2, l_v1308_2, l_v1438_0, l_v1439_0, l_v1440_0 = v1305, v1308, v1438, v1439, v1440;
        local function v1448(v1446)
            -- upvalues: l_v1305_2 (ref)
            local v1447 = 0;
            if v1446.refresh_modifier:get() == "Meta" then
                v1447 = v1447 + (l_v1305_2 % 15 + 1) * 2 * (rage.antiaim:inverter() and 1 or -1);
            end;
            if v1446.refresh_offset:get() then
                v1447 = v1447 + math.random(-7, 13);
            end;
            if v1447 ~= 0 then
                return v1447;
            else
                return nil;
            end;
        end;
        local function v1451(v1449)
            local v1450 = v1449.refresh_modifier:get();
            if v1450 == "Meta" then
                return nil;
            elseif v1450 == "Increase" then
                return math.random(0, 5);
            elseif v1450 == "Decrease" then
                return math.random(-5, 0);
            else
                return nil;
            end;
        end;
        local function v1452()
            -- upvalues: l_v1305_2 (ref), l_v1308_2 (ref), l_v1438_0 (ref), l_v1439_0 (ref), l_v1440_0 (ref)
            l_v1305_2 = nil;
            l_v1308_2 = nil;
            l_v1438_0 = nil;
            l_v1439_0 = nil;
            l_v1440_0 = nil;
        end;
        v1303.update = function(_)
            -- upvalues: l_v1308_2 (ref), v1452 (ref), l_v1438_0 (ref), l_v1289_0 (ref), l_v1439_0 (ref), l_v1440_0 (ref)
            if l_v1308_2 ~= nil and globals.curtime > l_v1308_2 then
                v1452();
                return false;
            else
                if l_v1438_0 ~= nil then
                    l_v1289_0.delay = l_v1438_0;
                end;
                if l_v1439_0 ~= nil and l_v1289_0.yaw_offset ~= nil then
                    l_v1289_0.yaw_offset = l_v1289_0.yaw_offset + l_v1439_0;
                end;
                if l_v1440_0 ~= nil and l_v1289_0.modifier_offset ~= nil then
                    l_v1289_0.modifier_offset = l_v1289_0.modifier_offset + l_v1440_0;
                end;
                return true;
            end;
        end;
        v1303.enemy_shot = function(_, v1455)
            -- upvalues: l_v1305_2 (ref), l_v1308_2 (ref), l_v1438_0 (ref), l_v1439_0 (ref), v1448 (ref), l_v1440_0 (ref), v1451 (ref)
            local v1456 = v1455.duration:get();
            if l_v1305_2 == nil then
                l_v1305_2 = 1;
            else
                l_v1305_2 = l_v1305_2 + 1;
            end;
            l_v1308_2 = v1456 ~= 9 and globals.curtime + v1456 * 0.1 or nil;
            if v1455.enforce_delay:get() then
                l_v1438_0 = math.random(1, 5);
            end;
            l_v1439_0 = v1448(v1455);
            l_v1440_0 = v1451(v1455);
        end;
    end;
    do
        local l_v1303_2 = v1303;
        l_v1301_0.update = function(_, _, v1460)
            -- upvalues: l_v1303_2 (ref)
            local l_antibrute_0 = v1460.antibrute;
            if l_antibrute_0 == nil or not l_antibrute_0.enabled:get() then
                return false;
            else
                l_v1303_2:update();
                return true;
            end;
        end;
        v1305 = function()
            -- upvalues: l_v1291_0 (ref), l_v1303_2 (ref)
            local v1462 = l_v1291_0:get_old_items();
            if v1462 == nil then
                return;
            else
                l_v1303_2:enemy_shot(v1462.antibrute);
                return;
            end;
        end;
        v1308 = nil;
        l_v1302_0.enemy_shot:set(v1305, value);
    end;
    v5("antiaim_avoid_backstab");
    l_v1302_0 = {};
    v1303 = v151.antiaim.settings.avoid_backstab;
    do
        local l_v1303_3 = v1303;
        l_v1302_0.update = function(_)
            -- upvalues: l_v1289_0 (ref), l_v1303_3 (ref)
            l_v1289_0.avoid_backstab = l_v1303_3.enabled:get();
        end;
    end;
    v5("antiaim_force_lethal");
    v1303 = nil;
    v1305 = v151.ragebot.force_lethal;
    v1308 = v148.force_lethal;
    v1438 = ui.find("Aimbot", "Ragebot", "Main", "Double Tap");
    v1439 = {};
    v1440 = function(v1465)
        return {
            selection = {
                min_damage = ui.find("Aimbot", "Ragebot", "Selection", v1465, "Min. Damage"), 
                hit_chance = ui.find("Aimbot", "Ragebot", "Selection", v1465, "Hit Chance")
            }, 
            safety = {
                body_aim = ui.find("Aimbot", "Ragebot", "Safety", v1465, "Body Aim")
            }
        };
    end;
    v1439.Auto = v1440("AutoSnipers");
    v1439.Deagle = v1440("Desert Eagle");
    v1440 = function(v1466)
        if v1466:get_weapon_info() == nil then
            return nil;
        else
            local v1467 = v1466:get_weapon_index();
            if v1467 == 1 then
                return "Deagle";
            elseif v1467 == 11 or v1467 == 38 then
                return "Auto";
            else
                return nil;
            end;
        end;
    end;
    do
        local l_v1305_3, l_v1308_3, l_v1438_1, l_v1439_1, l_v1440_1 = v1305, v1308, v1438, v1439, v1440;
        local function v1475()
            -- upvalues: l_v1439_1 (ref)
            for _, v1474 in pairs(l_v1439_1) do
                v1474.selection.min_damage:override();
                v1474.selection.hit_chance:override();
                v1474.safety.body_aim:override();
            end;
        end;
        local function v1487()
            -- upvalues: l_v1440_1 (ref), l_v1305_3 (ref), l_v1439_1 (ref), v509 (ref), l_v1438_1 (ref), l_v1308_3 (ref)
            local v1476 = entity.get_local_player();
            if v1476 == nil then
                return false;
            else
                local v1477 = v1476:get_player_weapon();
                if v1477 == nil then
                    return false;
                else
                    local v1478 = l_v1440_1(v1477);
                    if v1478 == nil then
                        return false;
                    elseif not l_v1305_3.weapons:get(v1478) then
                        return false;
                    else
                        local v1479 = l_v1305_3.mode:get();
                        local v1480 = l_v1439_1[v1478];
                        if v1480 == nil then
                            return false;
                        else
                            local v1481 = v509.get(v1480.selection.min_damage);
                            if v1481 ~= nil and v1481.active then
                                return false;
                            else
                                local v1482 = l_v1438_1:get() and rage.exploit:get() == 1;
                                if not v1482 and v1480.safety.body_aim:get() ~= "Force" then
                                    v1480.selection.min_damage:override(100);
                                    local v1483 = l_v1305_3[v1478];
                                    if v1483 ~= nil and v1483.hitchance ~= nil then
                                        local v1484 = v1483.hitchance:get();
                                        v1480.selection.hit_chance:override(v1484 ~= -1 and v1484 or nil);
                                    end;
                                    l_v1308_3.updated_division = false;
                                    l_v1308_3.updated_this_tick = true;
                                    return true;
                                elseif v1482 and v1479 == "Damage = HP/2" then
                                    local v1485 = entity.get_threat();
                                    if v1485 == nil then
                                        return;
                                    else
                                        local l_m_iHealth_0 = v1485.m_iHealth;
                                        v1480.selection.min_damage:override(math.ceil(l_m_iHealth_0 / 2));
                                        l_v1308_3.updated_division = true;
                                        l_v1308_3.updated_this_tick = true;
                                        return true;
                                    end;
                                else
                                    return false;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        local function v1488()
            -- upvalues: v1475 (ref)
            v1475();
        end;
        local function v1491()
            -- upvalues: l_v1308_3 (ref), v1487 (ref), v1475 (ref)
            local l_updated_this_tick_0 = l_v1308_3.updated_this_tick;
            l_v1308_3.updated_division = false;
            l_v1308_3.updated_this_tick = false;
            local v1490 = v1487();
            if l_updated_this_tick_0 and not v1490 then
                v1475();
            end;
        end;
        v1488 = v21("force_lethal.on_shutdown", v1488);
        v1491 = v21("force_lethal.on_createmove", v1491);
        local _ = nil;
        local function v1495(v1493)
            -- upvalues: v1475 (ref), v1488 (ref), v1491 (ref)
            local v1494 = v1493:get();
            if not v1494 then
                v1475();
            end;
            events.shutdown(v1488, v1494);
            events.createmove(v1491, v1494);
        end;
        l_v1305_3.enabled:set_callback(v1495, true);
    end;
    v5("antiaim_auto_hide_shots");
    v1305 = nil;
    v1308 = v151.ragebot.auto_hide_shots;
    v1438 = 1;
    v1439 = 2;
    v1440 = 3;
    local v1496 = 5;
    local function v1497()
        -- upvalues: v152 (ref), v25 (ref)
        if not v152.is_onground then
            if v152.is_crouched then
                return "In Air & Duck";
            else
                return "In Air";
            end;
        elseif v152.is_crouched then
            if v152.is_moving then
                return "Sneaking";
            else
                return "Ducking";
            end;
        elseif v152.is_moving then
            if v25.antiaim.misc.slow_walk:get() then
                return "Slowwalking";
            else
                return "Running";
            end;
        else
            return "Standing";
        end;
    end;
    do
        local l_v1308_4, l_v1438_2, l_v1439_2, l_v1440_2, l_v1496_0, l_v1497_0 = v1308, v1438, v1439, v1440, v1496, v1497;
        local function v1508(v1504)
            -- upvalues: l_v1439_2 (ref), l_v1440_2 (ref), l_v1438_2 (ref), l_v1496_0 (ref)
            local v1505 = v1504:get_weapon_info();
            if v1505 == nil then
                return nil;
            else
                local l_weapon_type_0 = v1505.weapon_type;
                local v1507 = v1504:get_weapon_index();
                if l_weapon_type_0 == l_v1439_2 then
                    return "SMG";
                elseif l_weapon_type_0 == l_v1440_2 then
                    return "Rifles";
                elseif l_weapon_type_0 == l_v1438_2 then
                    if v1507 == 1 then
                        return "Desert Eagle";
                    elseif v1507 == 64 then
                        return "Revolver R8";
                    else
                        return "Pistols";
                    end;
                elseif l_weapon_type_0 == l_v1496_0 then
                    if v1507 == 40 then
                        return "Scout";
                    elseif v1507 == 9 then
                        return "AWP";
                    else
                        return "Auto Snipers";
                    end;
                else
                    return nil;
                end;
            end;
        end;
        local function v1509()
            -- upvalues: v25 (ref)
            v25.ragebot.main.double_tap[1]:override();
            v25.ragebot.main.hide_shots[1]:override();
        end;
        local function v1510()
            -- upvalues: v25 (ref)
            v25.ragebot.main.double_tap[1]:override(false);
            v25.ragebot.main.hide_shots[1]:override(true);
        end;
        local function v1516()
            -- upvalues: v25 (ref), v1508 (ref), l_v1308_4 (ref), l_v1497_0 (ref)
            if v25.antiaim.misc.fake_duck:get() then
                return false;
            elseif v25.ragebot.main.peek_assist[1]:get() then
                return false;
            elseif not v25.ragebot.main.double_tap[1]:get() then
                return false;
            else
                local v1511 = entity.get_local_player();
                if v1511 == nil then
                    return false;
                else
                    local v1512 = v1511:get_player_weapon();
                    if v1512 == nil then
                        return false;
                    else
                        local v1513 = v1508(v1512);
                        if v1513 == nil or not l_v1308_4.weapons:get(v1513) then
                            return false;
                        else
                            local v1514 = l_v1308_4[v1513];
                            if v1514 == nil then
                                return false;
                            else
                                local v1515 = l_v1497_0();
                                if not v1514.states:get(v1515) then
                                    return false;
                                else
                                    return true;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        local function v1517()
            -- upvalues: v1509 (ref)
            v1509();
        end;
        local function v1518()
            -- upvalues: v1516 (ref), v1510 (ref), v1509 (ref)
            if v1516() then
                v1510();
            else
                v1509();
            end;
        end;
        v1517 = v21("auto_hide_shots.on_shutdown", v1517);
        v1518 = v21("auto_hide_shots.on_createmove", v1518);
        local _ = nil;
        local function v1522(v1520)
            -- upvalues: v1509 (ref), v1517 (ref), v1518 (ref)
            local v1521 = v1520:get();
            if not v1521 then
                v1509();
            end;
            events.shutdown(v1517, v1521);
            events.createmove(v1518, v1521);
        end;
        l_v1308_4.enabled:set_callback(v1522, true);
    end;
    v5("antiaim_animations");
    v1308 = nil;
    v1438 = v151.antiaim.settings.animations;
    v1439 = ui.find("Aimbot", "Anti Aim", "Misc", "Leg Movement");
    v1440 = ffi.typeof("            struct {\n                float  m_flLayerAnimtime;\n                float  m_flLayerFadeOuttime;\n\n                // dispatch flags\n                void  *m_pDispatchedStudioHdr;\n                int    m_nDispatchedSrc;\n                int    m_nDispatchedDst;\n\n                int    m_nOrder;\n                int    m_nSequence;\n                float  m_flPrevCycle;\n                float  m_flWeight;\n                float  m_flWeightDeltaRate;\n\n                // used for automatic crossfades between sequence changes;\n                float  m_flPlaybackRate;\n                float  m_flCycle;\n                int    m_pOwner;\n                int    m_nInvalidatePhysicsBits;\n            } **\n        ");
    do
        local l_v1438_3, l_v1439_3, l_v1440_3, l_v1496_1, l_v1497_1 = v1438, v1439, v1440, v1496, v1497;
        l_v1496_1 = function(v1528)
            -- upvalues: l_v1440_3 (ref)
            return ffi.cast(l_v1440_3, ffi.cast("uintptr_t", v1528[0]) + 10640)[0];
        end;
        l_v1497_1 = function(v1529, v1530)
            -- upvalues: l_v1438_3 (ref)
            local v1531 = l_v1438_3.air_legs:get();
            if v1531 == "Static" then
                v1529.m_flPoseParameter[6] = 0.5;
                return;
            elseif v1531 == "Walking" then
                local v1532 = v1530[6];
                v1532.m_flWeight = 1;
                v1532.m_flCycle = globals.curtime * 0.5 % 1;
                return;
            else
                return;
            end;
        end;
        local function v1540(v1533)
            -- upvalues: l_v1438_3 (ref), l_v1439_3 (ref)
            local v1534 = l_v1438_3.ground_legs:get();
            if v1534 == "Static" then
                v1533.m_flPoseParameter[0] = 1;
                l_v1439_3:override("Sliding");
                return;
            elseif v1534 == "Jitter" then
                local l_tickcount_1 = globals.tickcount;
                local v1536 = l_v1438_3.legs_offset_1:get();
                local v1537 = l_v1438_3.legs_offset_2:get();
                local v1538 = 1 / (l_tickcount_1 % 8 >= 4 and 200 or 400);
                local v1539 = l_tickcount_1 % 4 >= 2 and v1536 or v1537;
                l_v1439_3:override("Sliding");
                v1533.m_flPoseParameter[0] = v1539 * v1538;
                return;
            elseif v1534 == "Walking" then
                v1533.m_flPoseParameter[7] = 0;
                l_v1439_3:override("Walking");
                return;
            else
                if v1534 == "Earthquake" then
                    v1533.m_flPoseParameter[3] = math.random();
                    v1533.m_flPoseParameter[6] = math.random();
                    v1533.m_flPoseParameter[7] = math.random();
                end;
                l_v1439_3:override();
                return;
            end;
        end;
        local function v1543(v1541, v1542)
            -- upvalues: l_v1438_3 (ref)
            if not l_v1438_3.pitch_on_land:get() then
                return;
            else
                if v1542.landing then
                    v1541.m_flPoseParameter[12] = 0.5;
                end;
                return;
            end;
        end;
        local function v1546(v1544)
            -- upvalues: l_v1438_3 (ref), v152 (ref)
            local v1545 = l_v1438_3.body_lean:get();
            if v1545 == -1 or not v152.is_moving then
                return;
            else
                v1544[12].m_flWeight = v1545;
                return;
            end;
        end;
        local v1550 = v21("animations.on_post_update_clientside_animation", function(v1547)
            -- upvalues: l_v1496_1 (ref), v152 (ref), v1540 (ref), v1543 (ref), l_v1497_1 (ref), v1546 (ref)
            if v1547 ~= entity.get_local_player() then
                return;
            else
                local v1548 = v1547:get_anim_state();
                if v1548 == nil then
                    return;
                else
                    local v1549 = l_v1496_1(v1547);
                    if v1549 == nil then
                        return;
                    else
                        if v152.is_onground then
                            v1540(v1547);
                            v1543(v1547, v1548);
                        else
                            l_v1497_1(v1547, v1549);
                        end;
                        v1546(v1549);
                        return;
                    end;
                end;
            end;
        end);
        local _ = nil;
        local function v1554(v1552)
            -- upvalues: l_v1439_3 (ref), v1550 (ref)
            local v1553 = v1552:get();
            if not v1553 then
                l_v1439_3:override();
            end;
            events.post_update_clientside_animation(v1550, v1553);
        end;
        l_v1438_3.enabled:set_callback(v1554, true);
    end;
    v5("antiaim_disablers");
    v1438 = {};
    v1439 = v151.antiaim.settings.disablers;
    v1440 = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Enabled");
    v1496 = function()
        local v1555 = entity.get_local_player();
        if v1555 == nil then
            return false;
        else
            local l_m_iTeamNum_0 = v1555.m_iTeamNum;
            local v1557 = entity.get_player_resource();
            for v1558 = 1, globals.max_players do
                if v1557.m_bConnected[v1558] then
                    local v1559 = v1557.m_iTeam[v1558];
                    if v1555 ~= v1558 and v1559 ~= l_m_iTeamNum_0 and v1557.m_bAlive[v1558] then
                        return false;
                    end;
                end;
            end;
            return true;
        end;
    end;
    do
        local l_v1439_4, l_v1440_4, l_v1496_2, l_v1497_2 = v1439, v1440, v1496, v1497;
        l_v1497_2 = function()
            -- upvalues: l_v1439_4 (ref), l_v1496_2 (ref)
            local v1564 = entity.get_game_rules();
            if v1564 == nil then
                return false;
            elseif l_v1439_4.select:get("Warmup") and v1564.m_bWarmupPeriod then
                return true;
            elseif l_v1439_4.select:get("No Enemies") and l_v1496_2() then
                return true;
            else
                return false;
            end;
        end;
        v1438.update = function(_, _)
            -- upvalues: l_v1440_4 (ref), l_v1439_4 (ref), l_v1497_2 (ref), l_v1289_0 (ref)
            l_v1440_4:override();
            if not l_v1439_4.enabled:get() then
                return false;
            elseif not l_v1497_2() then
                return false;
            else
                local v1567 = globals.curtime * 2.4;
                l_v1289_0.enabled = true;
                l_v1289_0.pitch = "Disabled";
                l_v1289_0.yaw = "Backward";
                l_v1289_0.yaw_offset = v1567 % 1 * 360;
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.body_yaw = true;
                l_v1289_0.inverter = false;
                l_v1289_0.left_limit = 60;
                l_v1289_0.right_limit = 60;
                l_v1289_0.options = {};
                l_v1289_0.freestanding_body_yaw = "Off";
                l_v1289_0.freestanding = false;
                l_v1289_0.defensive = nil;
                l_v1440_4:override(false);
                return true;
            end;
        end;
    end;
    v5("antiaim_air_lag");
    v1439 = {};
    v1440 = v151.antiaim.settings.air_lag;
    v1496 = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck");
    v1497 = 0;
    do
        local l_v1440_5, l_v1496_3, l_v1497_3 = v1440, v1496, v1497;
        local function v1571()
            -- upvalues: l_v1497_3 (ref), l_v1496_3 (ref)
            l_v1497_3 = 0;
            l_v1496_3:override();
        end;
        local v1572 = v21("antiaim_air_lag.on_createmove", function()
            -- upvalues: l_v1496_3 (ref), v152 (ref), l_v1497_3 (ref), l_v1440_5 (ref)
            l_v1496_3:override();
            if rage.exploit:get() ~= 1 then
                return;
            elseif v152.is_onground then
                return;
            else
                l_v1497_3 = l_v1497_3 + 1;
                if l_v1497_3 >= l_v1440_5.ticks:get() then
                    l_v1497_3 = 0;
                    l_v1496_3:override(true);
                end;
                return;
            end;
        end);
        v1571 = v21("antiaim_air_lag.on_shutdown", v1571);
        local _ = nil;
        local function v1576(v1574)
            -- upvalues: l_v1496_3 (ref), v1571 (ref), v1572 (ref)
            local v1575 = v1574:get();
            if not v1575 then
                l_v1496_3:override();
            end;
            events.shutdown(v1571, v1575);
            events.createmove(v1572, v1575);
        end;
        l_v1440_5.enabled:set_callback(v1576, true);
    end;
    v5("antiaim_defensive_flick");
    v1440 = {};
    v1496 = 0;
    v1497 = function()
        if rage.exploit:get() ~= 1 then
            return false;
        else
            local v1577 = entity.get_local_player();
            if v1577 == nil then
                return false;
            else
                local v1578 = v1577:get_player_weapon();
                if v1578 == nil then
                    return false;
                else
                    local v1579 = v1578:get_weapon_info();
                    if v1579 == nil or v1579.is_revolver then
                        return false;
                    else
                        return true;
                    end;
                end;
            end;
        end;
    end;
    do
        local l_v1496_4, l_v1497_4 = v1496, v1497;
        v1440.apply = function(_, v1583, v1584)
            -- upvalues: l_v1497_4 (ref), l_v1496_4 (ref), v25 (ref), v153 (ref), l_v1289_0 (ref)
            if v1584 == nil or not v1584.enabled:get() then
                return false;
            elseif not l_v1497_4() then
                return false;
            else
                if v1583.choked_commands == 0 then
                    l_v1496_4 = l_v1496_4 + 1;
                end;
                v1583.force_defensive = v1583.command_number % 7 == 0;
                v25.ragebot.main.hide_shots[2]:override("Break LC");
                v25.ragebot.main.double_tap[2]:override("Always On");
                if v153.defensive_ticks > 0 then
                    local v1585 = 0;
                    local v1586 = v1584.speed_mode:get();
                    if v1586 == "Default" then
                        v1585 = v1584.speed_default:get();
                    end;
                    if v1586 == "Random" then
                        v1585 = utils.random_int(v1584.speed_min:get(), v1584.speed_max:get());
                    end;
                    if v1585 < v153.defensive_ticks - v153.max_defensive_ticks then
                        return;
                    end;
                end;
                local v1587 = v1584.limit:get();
                l_v1289_0.yaw = "Backward";
                l_v1289_0.yaw_offset = 0;
                l_v1289_0.yaw_left = 0;
                l_v1289_0.yaw_right = 0;
                l_v1289_0.hidden = true;
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.body_yaw = true;
                l_v1289_0.inverter = false;
                l_v1289_0.left_limit = v1587;
                l_v1289_0.right_limit = v1587;
                l_v1289_0.options = {};
                local v1588 = {
                    pitch_offset = v1584.pitch:get(), 
                    yaw_offset = v1584.yaw:get()
                };
                local v1589 = v1584.inverter:get();
                if v1584.jitter:get() and bit.band(l_v1496_4, 1) ~= 0 then
                    v1589 = not v1589;
                end;
                if v1589 then
                    v1588.yaw_offset = -v1588.yaw_offset;
                end;
                l_v1289_0.defensive = v1588;
                return true;
            end;
        end;
    end;
    v5("antiaim_manual_yaw");
    v1496 = {};
    v1497 = v151.antiaim.settings.manual_yaw;
    local v1590 = {
        Forward = 180, 
        Backward = 0, 
        Right = 90, 
        Left = -90
    };
    do
        local l_v1497_5, l_v1590_0 = v1497, v1590;
        local function v1593()
            -- upvalues: l_v1590_0 (ref), l_v1497_5 (ref)
            return l_v1590_0[l_v1497_5.select:get()];
        end;
        v1496.update = function(_, _)
            -- upvalues: v1593 (ref), l_v1289_0 (ref), l_v1497_5 (ref)
            local v1596 = v1593();
            if v1596 == nil then
                return false;
            else
                local v1597 = l_v1289_0.yaw_offset or 0;
                l_v1289_0.enabled = true;
                l_v1289_0.yaw_offset = v1597 + v1596;
                l_v1289_0.freestanding = false;
                if l_v1497_5.disable_yaw_modifiers:get() then
                    l_v1289_0.yaw_offset = v1597 + v1596;
                    l_v1289_0.yaw_left = 0;
                    l_v1289_0.yaw_right = 0;
                    l_v1289_0.yaw_modifier = "Disabled";
                    l_v1289_0.modifier_offset = 0;
                end;
                if l_v1497_5.body_freestanding:get() then
                    l_v1289_0.body_yaw = true;
                    l_v1289_0.left_limit = 60;
                    l_v1289_0.right_limit = 60;
                    l_v1289_0.options = {};
                    l_v1289_0.freestanding_body_yaw = "Peek Fake";
                end;
                l_v1289_0.yaw_base = "Local View";
                return true;
            end;
        end;
    end;
    v5("antiaim_freestanding");
    v1497 = {};
    v1590 = v151.antiaim.settings.freestanding;
    local function v1598()
        -- upvalues: v152 (ref), v25 (ref)
        if not v152.is_onground then
            if v152.is_crouched then
                return "In Air & Duck";
            else
                return "In Air";
            end;
        elseif v152.is_crouched then
            return "Ducking";
        elseif v152.is_moving then
            if v25.antiaim.misc.slow_walk:get() then
                return "Slowwalking";
            else
                return "Running";
            end;
        else
            return "Standing";
        end;
    end;
    do
        local l_v1590_1, l_v1598_0 = v1590, v1598;
        local function v1601()
            -- upvalues: l_v1590_1 (ref), l_v1598_0 (ref)
            return l_v1590_1.disablers:get(l_v1598_0());
        end;
        local function v1602()
            -- upvalues: l_v1590_1 (ref), v1601 (ref)
            return l_v1590_1.enabled:get() and not v1601();
        end;
        local function v1605()
            local v1603 = rage.antiaim:get_target(false);
            local v1604 = rage.antiaim:get_target(true);
            if v1603 == nil or v1604 == nil then
                return nil;
            else
                return v1604 - v1603;
            end;
        end;
        local function v1611(v1606, v1607)
            -- upvalues: v1605 (ref), l_v1291_0 (ref), l_v1289_0 (ref), l_v1590_1 (ref), v1440 (ref), l_l_angles_0_1 (ref)
            local v1608 = v1605();
            if v1608 == nil then
                return;
            else
                local v1609 = l_v1291_0:apply(v1607, "Freestanding");
                if v1609 == nil then
                    l_v1289_0.freestanding = true;
                    l_v1289_0.freestanding_disable_yaw_modifiers = l_v1590_1.disable_yaw_modifiers:get();
                    l_v1289_0.freestanding_body_freestanding = l_v1590_1.body_freestanding:get();
                    return;
                else
                    l_v1289_0.yaw_offset = l_v1289_0.yaw_offset + v1608;
                    if v1609.defensive ~= nil and (v1440:apply(v1606, v1609.flick) or l_l_angles_0_1:apply(v1606, v1609.defensive)) then
                        local l_yaw_offset_0 = l_v1289_0.defensive.yaw_offset;
                        if l_yaw_offset_0 ~= nil then
                            l_v1289_0.defensive.yaw_offset = l_yaw_offset_0 + v1608;
                        end;
                    end;
                    l_v1289_0.freestanding = false;
                    return;
                end;
            end;
        end;
        v1497.update = function(_, v1613, v1614)
            -- upvalues: v1602 (ref), l_v1289_0 (ref), v1611 (ref)
            if not v1602() then
                l_v1289_0.freestanding = false;
                return false;
            else
                v1611(v1613, v1614);
                return true;
            end;
        end;
    end;
    v5("antiaim_edge_yaw");
    v1590 = {};
    v1598 = v151.antiaim.settings.edge_yaw;
    local v1615 = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck");
    local function v1625(v1616)
        -- upvalues: v24 (ref)
        local v1617 = entity.get_local_player();
        if v1617 == nil then
            return nil;
        else
            local v1618 = v1617:get_eye_position();
            if v1618 == nil then
                return nil;
            else
                local v1619 = 0;
                local v1620 = {};
                for v1621 = -180, 180, 45 do
                    local v1622 = v1618 + vector():angles(vector(0, v1621, 0)) * 25;
                    if utils.trace_line(v1618, v1622, v1617, 4294967295).fraction < 1 then
                        v1619 = v1619 + 1;
                        v1620[v1619] = v1621;
                    end;
                end;
                if v1619 < 2 then
                    return nil;
                else
                    local v1623 = math.normalize_yaw(v24.lerp(v1620[1], v1620[v1619], 0.5));
                    local v1624 = math.normalize_yaw(v1616.view_angles.y - v1623);
                    if math.abs(v1624) > 90 then
                        return nil;
                    else
                        return math.normalize_yaw(2 * (v1623 - v1616.view_angles.y) - 180);
                    end;
                end;
            end;
        end;
    end;
    do
        local l_v1598_1, l_v1615_0, l_v1625_0 = v1598, v1615, v1625;
        local function v1629()
            -- upvalues: l_v1598_1 (ref), l_v1615_0 (ref)
            if not l_v1598_1.enabled:get() then
                return false;
            elseif l_v1598_1.only_on_fake_duck:get() and not l_v1615_0:get() then
                return false;
            else
                return true;
            end;
        end;
        v1590.update = function(_, v1631)
            -- upvalues: v1629 (ref), l_v1625_0 (ref), l_v1289_0 (ref)
            if not v1629() then
                return false;
            else
                local v1632 = l_v1625_0(v1631);
                if v1632 == nil then
                    return false;
                else
                    l_v1289_0.yaw_offset = (l_v1289_0.yaw_offset or 0) + v1632;
                    return true;
                end;
            end;
        end;
    end;
    v5("antiaim_safe_head");
    v1598 = {};
    v1615 = v151.antiaim.settings.safe_head;
    v1625 = 0;
    local v1633 = 1440000;
    local function v1635(v1634)
        return v1634:get_weapon_index() == 31;
    end;
    do
        local l_v1615_1, l_v1625_1, l_v1633_0, l_v1635_0 = v1615, v1625, v1633, v1635;
        local function v1642(v1640)
            -- upvalues: l_v1635_0 (ref), l_v1625_1 (ref)
            if l_v1635_0(v1640) then
                return false;
            else
                local v1641 = v1640:get_weapon_info();
                if v1641 == nil then
                    return false;
                else
                    return v1641.weapon_type == l_v1625_1;
                end;
            end;
        end;
        local function v1655()
            -- upvalues: v1642 (ref), l_v1635_0 (ref), v152 (ref), l_v1615_1 (ref), l_v1633_0 (ref)
            local v1643 = entity.get_local_player();
            if v1643 == nil then
                return nil;
            else
                local v1644 = v1643:get_player_weapon();
                if v1644 == nil then
                    return nil;
                else
                    local v1645 = entity.get_threat();
                    if v1645 == nil then
                        return nil;
                    else
                        local v1646 = v1642(v1644);
                        local v1647 = l_v1635_0(v1644);
                        local v1648 = not v152.is_onground;
                        local l_is_moving_0 = v152.is_moving;
                        local l_is_crouched_0 = v152.is_crouched;
                        local l_is_onground_0 = v152.is_onground;
                        local v1652 = v1643:get_origin() - v1645:get_origin();
                        local v1653 = v1652:lengthsqr();
                        local v1654 = l_v1615_1.target_height:get();
                        if v1654 <= v1652.z and v1646 and v1648 and l_is_crouched_0 and l_v1615_1.select:get("Air Crouch Knife") then
                            return "Air Crouch Knife";
                        elseif v1654 <= v1652.z and v1647 and v1648 and l_is_crouched_0 and l_v1615_1.select:get("Air Crouch Taser") then
                            return "Air Crouch Taser";
                        elseif v1652.z >= 50 and (l_is_onground_0 and not l_is_moving_0 or l_is_crouched_0) and l_v1615_1.select:get("Height Advantage") then
                            return "Height Advantage";
                        elseif l_v1633_0 < v1653 and not l_is_moving_0 and l_is_crouched_0 and l_v1615_1.select:get("Crouch") then
                            return "Crouch";
                        else
                            return nil;
                        end;
                    end;
                end;
            end;
        end;
        local function v1659(_, _)
            -- upvalues: l_v1289_0 (ref), l_v1615_1 (ref), v25 (ref)
            l_v1289_0.pitch = "Down";
            l_v1289_0.yaw_base = "At Target";
            l_v1289_0.yaw = "Backward";
            l_v1289_0.yaw_offset = 22;
            l_v1289_0.yaw_left = 0;
            l_v1289_0.yaw_right = 0;
            l_v1289_0.yaw_modifier = "Off";
            l_v1289_0.modifier_offset = 0;
            l_v1289_0.body_yaw = true;
            l_v1289_0.inverter = false;
            l_v1289_0.left_limit = 60;
            l_v1289_0.right_limit = 60;
            l_v1289_0.options = {};
            l_v1289_0.freestanding_body_yaw = "Off";
            l_v1289_0.delay = nil;
            if l_v1615_1.e_spam_while_safe_head:get() then
                local v1658 = {};
                l_v1289_0.hidden = true;
                v1658.pitch_offset = 0;
                v1658.yaw_offset = 180;
                v25.ragebot.main.hide_shots[2]:override("Break LC");
                v25.ragebot.main.double_tap[2]:override("Always On");
                l_v1289_0.defensive = v1658;
            end;
        end;
        v1598.update = function(_, v1661)
            -- upvalues: l_v1615_1 (ref), v1655 (ref), v1659 (ref)
            if not l_v1615_1.enabled:get() then
                return false;
            else
                local v1662 = v1655();
                if v1662 == nil then
                    return false;
                else
                    v1659(v1661, v1662);
                    return true;
                end;
            end;
        end;
    end;
    v5("antiaim_auto_teleport");
    v1615 = {};
    v1625 = v151.antiaim.settings.auto_teleport;
    v1633 = 0;
    v1635 = 1;
    local v1663 = 2;
    local v1664 = 3;
    local v1665 = 5;
    local v1666 = false;
    local function v1667()
        -- upvalues: v152 (ref)
        if not v152.is_onground then
            if v152.is_crouched then
                return "In Air & Duck";
            else
                return "In Air";
            end;
        else
            return nil;
        end;
    end;
    do
        local l_v1625_2, l_v1633_1, l_v1635_1, l_v1663_0, l_v1664_0, l_v1665_0, l_v1666_0 = v1625, v1633, v1635, v1663, v1664, v1665, v1666;
        local function v1679(v1675)
            -- upvalues: l_v1633_1 (ref), l_v1663_0 (ref), l_v1664_0 (ref), l_v1635_1 (ref), l_v1665_0 (ref)
            local v1676 = v1675:get_weapon_info();
            if v1676 == nil then
                return nil;
            else
                local l_weapon_type_1 = v1676.weapon_type;
                local v1678 = v1675:get_weapon_index();
                if v1678 == 31 then
                    return "Taser";
                elseif l_weapon_type_1 == l_v1633_1 then
                    return "Knife";
                elseif l_weapon_type_1 == l_v1663_0 then
                    return "SMG";
                elseif l_weapon_type_1 == l_v1664_0 then
                    return "Rifles";
                elseif l_weapon_type_1 == l_v1635_1 then
                    if v1678 == 1 then
                        return "Desert Eagle";
                    elseif v1678 == 64 then
                        return "Revolver R8";
                    else
                        return "Pistols";
                    end;
                elseif l_weapon_type_1 == l_v1665_0 then
                    if v1678 == 40 then
                        return "Scout";
                    elseif v1678 == 9 then
                        return "Awp";
                    else
                        return "Auto Snipers";
                    end;
                else
                    return nil;
                end;
            end;
        end;
        local function v1680()
            return entity.get_threat(true) ~= nil;
        end;
        local function v1685(v1681, _, v1683)
            -- upvalues: v152 (ref), v1679 (ref), l_v1625_2 (ref)
            if v152.is_onground then
                return;
            elseif rage.exploit:get() ~= 1 then
                return false;
            else
                local v1684 = v1679(v1683);
                if v1684 == nil then
                    return false;
                elseif not l_v1625_2.weapons:get(v1684) then
                    return false;
                elseif v1681.in_jump and not l_v1625_2.allow_on_cross:get() then
                    return false;
                else
                    return true;
                end;
            end;
        end;
        local v1689 = v21("auto_teleport.on_createmove", function(v1686)
            -- upvalues: v1680 (ref), v1685 (ref), l_v1666_0 (ref)
            local v1687 = entity.get_local_player();
            if v1687 == nil then
                return;
            else
                local v1688 = v1687:get_player_weapon();
                if v1688 == nil then
                    return;
                elseif v1680() then
                    if v1685(v1686, v1687, v1688) and not l_v1666_0 then
                        l_v1666_0 = true;
                        rage.exploit:force_teleport();
                    end;
                    return;
                else
                    l_v1666_0 = false;
                    return;
                end;
            end;
        end);
        local _ = nil;
        local function v1692(v1691)
            -- upvalues: v1689 (ref)
            events.createmove(v1689, v1691:get());
        end;
        l_v1625_2.enabled:set_callback(v1692, true);
    end;
    v1625 = function()
        -- upvalues: v152 (ref)
        if v152.team_num == 2 then
            return "T";
        elseif v152.team_num == 3 then
            return "CT";
        else
            return nil;
        end;
    end;
    v1633 = function(v1693, v1694)
        return ({
            [1] = -v1693, 
            [2] = -v1693 / 2, 
            [3] = -v1693 / 3, 
            [4] = v1693 / 3, 
            [5] = v1693 / 2, 
            [6] = v1693
        })[v1694];
    end;
    v1635 = function(v1695)
        -- upvalues: l_v1289_0 (ref), l_v1202_1 (ref), l_v1157_1 (ref), l_v1158_1 (ref)
        if v1695.choked_commands ~= 0 then
            return;
        else
            if rage.exploit:get() == 1 then
                local v1696 = math.max(1, l_v1289_0.delay or 1);
                l_v1202_1 = l_v1202_1 + 1;
                if l_v1202_1 < v1696 then
                    return;
                end;
            end;
            local v1697 = true;
            if l_v1289_0.invert_chance ~= nil then
                v1697 = false;
                if l_v1289_0.invert_chance >= utils.random_int(1, 100) then
                    v1697 = true;
                end;
            end;
            l_v1157_1 = l_v1157_1 + 1;
            if v1697 then
                l_v1158_1 = not l_v1158_1;
            end;
            l_v1202_1 = 0;
            return;
        end;
    end;
    v1663 = function()
        -- upvalues: l_v1289_0 (ref), l_l_match_0_2 (ref), l_v1161_2 (ref), l_v1167_2 (ref)
        local l_defensive_0 = l_v1289_0.defensive;
        local v1699 = 1;
        if l_defensive_0 ~= nil and l_defensive_0.delay ~= nil then
            v1699 = math.max(1, l_defensive_0.delay);
        end;
        l_l_match_0_2 = l_l_match_0_2 + 1;
        if l_l_match_0_2 < v1699 then
            return;
        else
            l_v1161_2 = l_v1161_2 + 1;
            l_v1167_2 = not l_v1167_2;
            l_l_match_0_2 = 0;
            return;
        end;
    end;
    v1664 = function()
        -- upvalues: l_v1289_0 (ref), l_v1167_2 (ref), l_v1161_2 (ref), l_v1201_1 (ref)
        local l_defensive_1 = l_v1289_0.defensive;
        if l_defensive_1 == nil then
            return;
        else
            if l_defensive_1.pitch_offset ~= nil then
                rage.antiaim:override_hidden_pitch(l_defensive_1.pitch_offset);
            end;
            if l_defensive_1.yaw_offset ~= nil then
                local l_yaw_offset_1 = l_defensive_1.yaw_offset;
                if l_v1289_0.yaw_offset ~= nil then
                    l_yaw_offset_1 = l_yaw_offset_1 - l_v1289_0.yaw_offset;
                end;
                if l_defensive_1.yaw_left ~= nil and l_v1167_2 == true then
                    l_yaw_offset_1 = l_yaw_offset_1 + l_defensive_1.yaw_left;
                end;
                if l_defensive_1.yaw_right ~= nil and l_v1167_2 == false then
                    l_yaw_offset_1 = l_yaw_offset_1 + l_defensive_1.yaw_right;
                end;
                if l_defensive_1.yaw_modifier == "Offset" then
                    local l_modifier_offset_0 = l_defensive_1.modifier_offset;
                    if not l_v1167_2 then
                        l_modifier_offset_0 = 0;
                    end;
                    l_yaw_offset_1 = l_yaw_offset_1 + l_modifier_offset_0;
                end;
                if l_defensive_1.yaw_modifier == "Center" then
                    local v1703 = l_defensive_1.modifier_offset * 0.5;
                    if not l_v1167_2 then
                        v1703 = -v1703;
                    end;
                    l_yaw_offset_1 = l_yaw_offset_1 + v1703;
                end;
                if l_defensive_1.yaw_modifier == "Skitter" then
                    l_yaw_offset_1 = l_yaw_offset_1 + l_defensive_1.modifier_offset * l_v1201_1[l_v1161_2 % #l_v1201_1 + 1];
                end;
                rage.antiaim:override_hidden_yaw_offset(-l_yaw_offset_1);
            end;
            return;
        end;
    end;
    v1665 = function()
        -- upvalues: l_v1289_0 (ref)
        if l_v1289_0.yaw_left ~= nil and l_v1289_0.yaw_right ~= nil then
            local v1704 = l_v1289_0.yaw_offset or 0;
            if l_v1289_0.inverter == true then
                l_v1289_0.yaw_offset = v1704 + l_v1289_0.yaw_left;
            end;
            if l_v1289_0.inverter == false then
                l_v1289_0.yaw_offset = v1704 + l_v1289_0.yaw_right;
            end;
            return;
        else
            return;
        end;
    end;
    v1666 = function()
        -- upvalues: l_v1289_0 (ref), l_v1158_1 (ref), l_v1157_1 (ref), l_v1201_1 (ref), v152 (ref), v24 (ref)
        if l_v1289_0.yaw_modifier == "Offset" then
            local v1705 = l_v1289_0.yaw_offset or 0;
            local l_modifier_offset_1 = l_v1289_0.modifier_offset;
            l_v1289_0.yaw_modifier = "Disabled";
            l_v1289_0.modifier_offset = 0;
            l_v1289_0.yaw_offset = v1705 + (l_v1158_1 and l_modifier_offset_1 or 0);
            return;
        elseif l_v1289_0.yaw_modifier == "Center" then
            local v1707 = l_v1289_0.yaw_offset or 0;
            local v1708 = -l_v1289_0.modifier_offset;
            if not l_v1158_1 then
                v1708 = -v1708;
            end;
            l_v1289_0.yaw_modifier = "Disabled";
            l_v1289_0.modifier_offset = 0;
            l_v1289_0.yaw_offset = v1707 + v1708 / 2;
            return;
        elseif l_v1289_0.yaw_modifier == "Skitter" then
            local v1709 = l_v1201_1[l_v1157_1 % #l_v1201_1 + 1];
            local v1710 = l_v1289_0.yaw_offset or 0;
            local l_modifier_offset_2 = l_v1289_0.modifier_offset;
            l_v1289_0.yaw_modifier = "Disabled";
            l_v1289_0.modifier_offset = 0;
            l_v1289_0.yaw_offset = v1710 + l_modifier_offset_2 * v1709;
            return;
        else
            if l_v1289_0.yaw_modifier == "Frostino" then
                local v1712 = l_v1289_0.yaw_offset or 0;
                local v1713 = l_v1289_0.modifier_offset / 2;
                if not l_v1158_1 then
                    l_v1289_0.yaw_offset = v1712 - v1713;
                else
                    l_v1289_0.yaw_offset = v1712 + v1713;
                end;
                l_v1289_0.yaw_modifier = v152.sent_packets % 10 == 0 and "Random" or "3-way";
                l_v1289_0.modifier_offset = v1713;
            end;
            if l_v1289_0.yaw_modifier == "Spin" then
                local v1714 = globals.curtime * 3;
                local v1715 = l_v1289_0.yaw_offset or 0;
                local l_modifier_offset_3 = l_v1289_0.modifier_offset;
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.yaw_offset = v1715 + v24.lerp(-l_modifier_offset_3, l_modifier_offset_3, v1714 % 1);
                return;
            elseif l_v1289_0.yaw_modifier == "Random" then
                local v1717 = l_v1289_0.yaw_offset or 0;
                local l_modifier_offset_4 = l_v1289_0.modifier_offset;
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.yaw_offset = v1717 + utils.random_int(-l_modifier_offset_4, l_modifier_offset_4);
                return;
            elseif l_v1289_0.yaw_modifier == "3-Way" then
                local v1719 = l_v1289_0.yaw_offset or 0;
                local l_modifier_offset_5 = l_v1289_0.modifier_offset;
                local v1721 = {
                    [1] = -1, 
                    [2] = 0, 
                    [3] = 1
                };
                local v1722 = v1721[v152.sent_packets % #v1721 + 1];
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.yaw_offset = v1719 + l_modifier_offset_5 * v1722;
                return;
            elseif l_v1289_0.yaw_modifier == "5-Way" then
                local v1723 = l_v1289_0.yaw_offset or 0;
                local l_modifier_offset_6 = l_v1289_0.modifier_offset;
                local v1725 = {
                    [1] = -1, 
                    [2] = -0.5, 
                    [3] = 0, 
                    [4] = 0.5, 
                    [5] = 1
                };
                local v1726 = v1725[v152.sent_packets % #v1725 + 1];
                l_v1289_0.yaw_modifier = "Disabled";
                l_v1289_0.modifier_offset = 0;
                l_v1289_0.yaw_offset = v1723 + l_modifier_offset_6 * v1726;
                return;
            else
                if l_v1289_0.yaw_modifier == "Frostbomber" then
                    local v1727 = "3-Way";
                    if v152.sent_packets % math.random(3, 4) == 0 then
                        v1727 = math.random(0, 6) == 0 and "5-way" or "Random";
                    end;
                    l_v1289_0.yaw_modifier = v1727;
                end;
                return;
            end;
        end;
    end;
    v1667 = function()
        -- upvalues: l_v1289_0 (ref), l_v1158_1 (ref)
        if l_v1289_0.options == nil then
            return;
        else
            local v1728 = false;
            local v1729 = {};
            for v1730 = 1, #l_v1289_0.options do
                local v1731 = l_v1289_0.options[v1730];
                if v1731 == "Jitter" then
                    v1728 = true;
                elseif v1731 ~= "Randomize Jitter" then
                    table.insert(v1729, v1731);
                end;
            end;
            if v1728 then
                l_v1289_0.inverter = l_v1158_1;
            end;
            l_v1289_0.options = v1729;
            return;
        end;
    end;
    local function v1736(v1732)
        -- upvalues: v1625 (ref), l_v1302_0 (ref), l_l_angles_0_1 (ref), l_v1291_0 (ref), l_v1301_0 (ref), v1496 (ref), v1497 (ref), v1598 (ref), v1590 (ref), v1440 (ref), v1438 (ref)
        local v1733 = v1625();
        if v1733 == nil then
            return;
        else
            l_v1302_0:update();
            l_l_angles_0_1:update(v1732);
            local v1734 = l_v1291_0:update(v1732, v1733);
            l_v1301_0:update(v1732, v1734);
            local v1735 = l_v1291_0:get(v1733, "On Peek");
            if v1496:update(v1732) then
                return;
            elseif v1497:update(v1732, v1733) then
                return;
            elseif v1598:update(v1732) then
                return;
            elseif v1590:update(v1732) then
                return;
            else
                if v1734 ~= nil and v1734.defensive ~= nil and not v1440:apply(v1732, v1734.flick) then
                    l_l_angles_0_1:apply(v1732, v1734.defensive);
                end;
                if v1735 ~= nil and l_v1291_0:is_active_ex(v1735) and entity.get_threat(true) then
                    l_l_angles_0_1:apply(v1732, v1735.defensive);
                end;
                v1438:update(v1732);
                return;
            end;
        end;
    end;
    local function v1738(v1737)
        -- upvalues: v1635 (ref), v1663 (ref), v1667 (ref), v1666 (ref), v1665 (ref), v1664 (ref)
        rage.antiaim:override_hidden_yaw_offset(0);
        v1635(v1737);
        if v1737.choked_commands == 0 then
            v1663();
        end;
        v1667();
        v1666();
        v1665();
        v1664();
    end;
    local function v1739()
        -- upvalues: l_v1289_0 (ref)
        l_v1289_0:unset();
    end;
    local function v1741(v1740)
        -- upvalues: l_v1289_0 (ref), v1736 (ref), v1738 (ref)
        l_v1289_0:clear();
        l_v1289_0:unset();
        v1736(v1740);
        v1738(v1740);
        l_v1289_0:set();
    end;
    v1739 = v21("antiaim.on_shutdown", v1739);
    v1741 = v21("antiaim.on_createmove", v1741);
    events.shutdown(v1739);
    events.createmove(v1741);
end;
v5("begin_ragebot");
v1157 = nil;
v5("ragebot_smart_peek");
v1158 = nil;
v1161 = v151.ragebot.smart_peek;
v1167 = bit.lshift(1, 0);
v1201 = 0;
v1202 = 1;
l_match_0 = 2;
v1289 = 3;
l_angles_0 = 4;
v1291 = 5;
v1301 = 6;
v1302 = 7;
v1303 = 10;
v1305 = 0;
v1308 = 1;
local v1742 = 2;
local v1743 = 3;
local v1744 = 4;
local v1745 = 5;
local v1746 = 6;
local v1747 = 7;
local v1748 = 8;
local v1749 = 9;
local v1750 = 10;
local v1751 = 11;
local v1752 = 12;
local v1753 = 13;
local v1754 = 14;
local v1755 = 15;
local v1756 = 16;
local v1757 = 17;
local v1758 = 18;
local v1759 = {
    [v1305] = v1202, 
    [v1745] = l_match_0, 
    [v1743] = v1289, 
    [v1748] = v1301, 
    [v1747] = v1302, 
    [v1752] = v1301, 
    [v1751] = v1302, 
    [v1757] = l_angles_0, 
    [v1755] = v1291
};
local v1760 = nil;
local v1761 = 0;
local v1762 = nil;
local v1763 = {};
local function v1765(v1764)
    return {
        selection = {
            head_scale = ui.find("Aimbot", "Ragebot", "Selection", v1764, "Multipoint", "Head Scale"), 
            body_scale = ui.find("Aimbot", "Ragebot", "Selection", v1764, "Multipoint", "Body Scale"), 
            min_damage = ui.find("Aimbot", "Ragebot", "Selection", v1764, "Min. Damage"), 
            hit_chance = ui.find("Aimbot", "Ragebot", "Selection", v1764, "Hit Chance")
        }, 
        safety = {
            body_aim = ui.find("Aimbot", "Ragebot", "Safety", v1764, "Body Aim"), 
            safe_points = ui.find("Aimbot", "Ragebot", "Safety", v1764, "Safe Points"), 
            ensure_hitbox_safety = ui.find("Aimbot", "Ragebot", "Safety", v1764, "Ensure Hitbox Safety")
        }
    };
end;
v1763["SSG-08"] = v1765("SSG-08");
v1763.Deagle = v1765("Desert Eagle");
v1763.Pistols = v1765("Pistols");
do
    local l_v1161_3, l_v1167_3, l_v1201_2, l_v1202_2, l_v1289_1, l_v1301_1, l_v1302_1, l_v1305_4, l_v1743_0, l_v1745_0, l_v1747_0, l_v1748_0, l_v1749_0, l_v1750_0, l_v1755_0, l_v1757_0, l_v1759_0, l_v1760_0, l_v1761_0, l_v1762_0, l_v1763_0, l_v1765_0 = v1161, v1167, v1201, v1202, v1289, v1301, v1302, v1305, v1743, v1745, v1747, v1748, v1749, v1750, v1755, v1757, v1759, v1760, v1761, v1762, v1763, v1765;
    l_v1765_0 = function()
        -- upvalues: l_v1760_0 (ref), l_v1761_0 (ref), l_v1762_0 (ref)
        l_v1760_0 = nil;
        l_v1761_0 = 0;
        l_v1762_0 = nil;
    end;
    local function v1790()
        -- upvalues: v25 (ref), l_v1763_0 (ref)
        v25.ragebot.main.double_tap[1]:override();
        v25.ragebot.main.peek_assist[4]:override();
        for _, v1789 in pairs(l_v1763_0) do
            v1789.selection.head_scale:override();
            v1789.selection.body_scale:override();
            v1789.selection.hit_chance:override();
            v1789.safety.body_aim:override();
            v1789.safety.safe_points:override();
            v1789.safety.ensure_hitbox_safety:override();
        end;
    end;
    local function v1795()
        -- upvalues: l_v1161_3 (ref), v25 (ref), l_v1763_0 (ref)
        local v1791 = l_v1161_3.hit_chance:get();
        local v1792 = l_v1161_3.unsafety:get();
        v25.ragebot.main.peek_assist[4]:override("On Shot");
        for _, v1794 in pairs(l_v1763_0) do
            v1794.selection.head_scale:override(100);
            v1794.selection.body_scale:override(100);
            if v1791 ~= -1 then
                v1794.selection.hit_chance:override(v1791);
            end;
            if v1792 then
                v1794.safety.body_aim:override("Default");
                v1794.safety.safe_points:override("Default");
                v1794.safety.ensure_hitbox_safety:override({});
            end;
        end;
    end;
    local function v1797(v1796)
        -- upvalues: l_v1202_2 (ref), l_v1289_1 (ref), l_v1301_1 (ref), l_v1302_1 (ref)
        if v1796 == l_v1202_2 then
            return 4;
        elseif v1796 == l_v1289_1 then
            return 1.25;
        elseif v1796 == l_v1301_1 then
            return 0.75;
        elseif v1796 == l_v1302_1 then
            return 0.75;
        else
            return 1;
        end;
    end;
    local function v1802(v1798, v1799, v1800, v1801)
        -- upvalues: v1797 (ref), l_v1202_2 (ref)
        v1799 = v1799 * v1797(v1800);
        if v1798.m_ArmorValue > 0 then
            if v1800 == l_v1202_2 then
                if v1798.m_bHasHelmet then
                    v1799 = v1799 * (v1801 * 0.5);
                end;
            else
                v1799 = v1799 * (v1801 * 0.5);
            end;
        end;
        return v1799;
    end;
    local function v1814(v1803, v1804, v1805, v1806, v1807)
        -- upvalues: v1802 (ref)
        local v1808 = v1804 - v1803;
        local l_damage_0 = v1807.damage;
        local l_armor_ratio_0 = v1807.armor_ratio;
        local l_range_0 = v1807.range;
        local l_range_modifier_0 = v1807.range_modifier;
        local v1813 = math.min(l_range_0, v1808:length());
        l_damage_0 = l_damage_0 * math.pow(l_range_modifier_0, v1813 * 0.002);
        return (v1802(v1805, l_damage_0, v1806, l_armor_ratio_0));
    end;
    local function v1815()
        -- upvalues: l_v1161_3 (ref)
        return l_v1161_3.simulation:get() * 0.01;
    end;
    local function v1816()
        -- upvalues: l_v1161_3 (ref)
        return l_v1161_3.rate_limit:get() * 0.01;
    end;
    local function v1817()
        -- upvalues: v25 (ref)
        return v25.ragebot.selection.min_damage:get();
    end;
    local function v1818()
        -- upvalues: l_v1161_3 (ref)
        return l_v1161_3.dev_mode:get() and l_v1161_3.range:get() or 20;
    end;
    local function v1819()
        -- upvalues: l_v1161_3 (ref)
        return l_v1161_3.dev_mode:get() and l_v1161_3.retreat:get() or 25;
    end;
    local function v1821()
        -- upvalues: l_v1161_3 (ref), l_v1305_4 (ref), l_v1745_0 (ref), l_v1743_0 (ref), l_v1757_0 (ref), l_v1755_0 (ref), l_v1748_0 (ref), l_v1747_0 (ref), l_v1750_0 (ref), l_v1749_0 (ref)
        local v1820 = {};
        if l_v1161_3.hitboxes:get("Head") then
            table.insert(v1820, l_v1305_4);
        end;
        if l_v1161_3.hitboxes:get("Chest") then
            table.insert(v1820, l_v1745_0);
        end;
        if l_v1161_3.hitboxes:get("Stomach") then
            table.insert(v1820, l_v1743_0);
        end;
        if l_v1161_3.hitboxes:get("Arms") then
            table.insert(v1820, l_v1757_0);
            table.insert(v1820, l_v1755_0);
        end;
        if l_v1161_3.hitboxes:get("Legs") then
            table.insert(v1820, l_v1748_0);
            table.insert(v1820, l_v1747_0);
            table.insert(v1820, l_v1750_0);
            table.insert(v1820, l_v1749_0);
        end;
        return v1820;
    end;
    local function v1823(v1822)
        -- upvalues: l_v1759_0 (ref), l_v1201_2 (ref)
        return l_v1759_0[v1822] or l_v1201_2;
    end;
    local function v1825(v1824)
        return v1824[0];
    end;
    local function v1830(v1826, v1827)
        local v1828 = v1826:get_weapon_index();
        local l_weapon_type_2 = v1827.weapon_type;
        if v1828 == 1 then
            return "Deagle";
        elseif v1828 == 64 then
            return "Revolver";
        elseif v1828 == 40 then
            return "SSG-08";
        elseif l_weapon_type_2 == 1 then
            return "Pistols";
        else
            return nil;
        end;
    end;
    local function v1847(v1831, v1832, v1833, v1834, v1835)
        -- upvalues: v1823 (ref), v1814 (ref)
        local v1836 = {};
        local v1837 = v1832:get_eye_position();
        local v1838 = v1833:get_weapon_info();
        local l_m_iHealth_1 = v1834.m_iHealth;
        for v1840 = 1, #v1831 do
            local v1841 = v1831[v1840];
            local v1842 = v1823(v1841);
            local v1843 = v1834:get_hitbox_position(v1841);
            local v1844 = v1814(v1837, v1843, v1834, v1842, v1838);
            local v1845 = v1844 < v1835;
            local v1846 = v1844 < l_m_iHealth_1;
            if not v1845 or not v1846 then
                table.insert(v1836, {
                    index = v1840, 
                    pos = v1843
                });
            end;
        end;
        return v1836;
    end;
    local function v1851(v1848)
        -- upvalues: v1825 (ref)
        if v1848 == nil then
            return false;
        else
            local l_status_8, l_result_8 = pcall(v1825, v1848);
            if not l_status_8 or l_result_8 == nil then
                return false;
            else
                return true;
            end;
        end;
    end;
    local function v1853(v1852)
        -- upvalues: v1851 (ref)
        return v1851(v1852.target);
    end;
    local function v1855(v1854)
        return not v1854.in_forward and not v1854.in_back and not v1854.in_moveleft and not v1854.in_moveright;
    end;
    local function v1857(v1856)
        -- upvalues: l_v1161_3 (ref)
        return l_v1161_3.weapons:get(v1856);
    end;
    local function v1861(v1858, v1859, v1860)
        if v1858 == nil or v1859 == nil then
            return false;
        elseif v1860.max_clip1 == 0 or v1859.m_iClip1 == 0 then
            return false;
        elseif globals.curtime < v1858.m_flNextAttack then
            return false;
        elseif globals.curtime < v1859.m_flNextPrimaryAttack then
            return false;
        else
            return true;
        end;
    end;
    local function v1862()
        return true;
    end;
    local function v1865(v1863, v1864)
        return {
            ctx = v1863, 
            target = v1864, 
            simtime = 0, 
            retreat = -1, 
            teleport = 0
        };
    end;
    local function v1867(v1866)
        return v1866:simulate_movement(nil, vector(), 1);
    end;
    local function v1874(v1868, v1869, v1870)
        local v1872, v1873 = utils.trace_bullet(v1868, v1869, v1870, function(v1871)
            -- upvalues: v1868 (ref)
            return v1871 ~= v1868 and v1871:is_enemy();
        end);
        return v1872, v1873;
    end;
    local function v1887(v1875, v1876, v1877, v1878, v1879)
        -- upvalues: v1874 (ref)
        local l_m_iHealth_2 = v1876.m_iHealth;
        for v1881 = 1, #v1878 do
            local v1882 = v1878[v1881];
            local v1883, _ = v1874(v1875, v1877, v1882.pos);
            local v1885 = v1879 <= v1883;
            local v1886 = l_m_iHealth_2 <= v1883;
            if v1885 or v1886 then
                return true;
            end;
        end;
        return false;
    end;
    local function v1894(v1888, v1889, v1890, v1891, v1892)
        -- upvalues: v1887 (ref)
        local v1893 = v1888.origin + vector(0, 0, v1888.view_offset);
        return v1888, v1887(v1889, v1890, v1893, v1891, v1892);
    end;
    local function v1904(v1895, v1896, v1897, v1898, v1899, v1900, v1901)
        -- upvalues: l_v1167_3 (ref), v1894 (ref)
        v1895.view_angles.y = v1899;
        v1898:think(1);
        if bit.band(v1898.flags, l_v1167_3) == 0 then
            return nil, false;
        else
            local _, v1903 = v1894(v1898, v1896, v1897, v1900, v1901);
            if v1903 then
                v1898:think(1);
            end;
            return v1898, v1903;
        end;
    end;
    local function v1939(v1905, v1906, v1907)
        -- upvalues: v1862 (ref), v1816 (ref), v1817 (ref), v1821 (ref), l_v1760_0 (ref), v1853 (ref), v1847 (ref), v1894 (ref), l_v1761_0 (ref), v1855 (ref), l_v1167_3 (ref), v1887 (ref), v1867 (ref), v1818 (ref), v1904 (ref), v1865 (ref)
        if not v1862() then
            return false;
        else
            local l_frametime_1 = globals.frametime;
            local v1909 = v1816();
            local v1910 = v1817();
            local v1911 = v1821();
            if l_v1760_0 ~= nil and v1853(l_v1760_0) then
                local l_ctx_0 = l_v1760_0.ctx;
                local l_target_0 = l_v1760_0.target;
                local l_m_iHealth_3 = l_target_0.m_iHealth;
                if v1910 >= 100 then
                    v1910 = v1910 + l_m_iHealth_3 - 100;
                end;
                local v1915 = v1847(v1911, v1906, v1907, l_target_0, v1910);
                local _, v1917 = v1894(l_ctx_0, v1906, l_target_0, v1915, v1910);
                if v1917 then
                    l_v1760_0.simtime = 0;
                end;
                l_v1760_0.simtime = l_v1760_0.simtime + l_frametime_1;
                return true;
            else
                if v1909 > 0 then
                    if l_v1761_0 > 0 then
                        l_v1761_0 = l_v1761_0 - l_frametime_1;
                        return false;
                    else
                        l_v1761_0 = v1909;
                    end;
                end;
                if not v1855(v1905) then
                    return false;
                else
                    local l_m_fFlags_0 = v1906.m_fFlags;
                    if bit.band(l_m_fFlags_0, l_v1167_3) == 0 then
                        return false;
                    elseif v1906.m_vecVelocity:length2dsqr() > 6400 then
                        return false;
                    else
                        local v1919 = entity.get_threat();
                        if v1919 == nil or v1919:is_dormant() then
                            return false;
                        else
                            local l_m_iHealth_4 = v1919.m_iHealth;
                            if v1910 >= 100 then
                                v1910 = v1910 + l_m_iHealth_4 - 100;
                            end;
                            local v1921 = v1847(v1911, v1906, v1907, v1919, v1910);
                            if v1887(v1906, v1919, v1906:get_eye_position(), v1921, v1910) then
                                return false;
                            else
                                local v1922 = nil;
                                local v1923 = nil;
                                local v1924 = v1906:get_origin();
                                local v1925 = (v1919:get_origin() - v1924):angles().y + 180;
                                v1922 = v1925 - 90;
                                v1923 = v1925 + 90;
                                v1924 = v1905.view_angles:clone();
                                local l_forwardmove_0 = v1905.forwardmove;
                                local l_sidemove_0 = v1905.sidemove;
                                local l_in_duck_0 = v1905.in_duck;
                                v1925 = v1905.in_jump;
                                local l_in_speed_0 = v1905.in_speed;
                                v1905.forwardmove = 450;
                                v1905.sidemove = 0;
                                v1905.in_duck = false;
                                v1905.in_jump = false;
                                v1905.in_speed = false;
                                local v1930 = v1867(v1906);
                                local v1931 = v1867(v1906);
                                local v1932 = 0;
                                local v1933 = 0;
                                for v1934 = 1, v1818() do
                                    if v1932 ~= -1 then
                                        v1932 = v1934;
                                        local v1935, v1936 = v1904(v1905, v1906, v1919, v1930, v1922, v1921, v1910);
                                        if v1935 == nil then
                                            v1932 = -1;
                                        end;
                                        if v1936 then
                                            l_v1760_0 = v1865(v1935, v1919);
                                            break;
                                        end;
                                    end;
                                    if v1933 ~= -1 then
                                        v1933 = v1934;
                                        local v1937, v1938 = v1904(v1905, v1906, v1919, v1931, v1923, v1921, v1910);
                                        if v1937 == nil then
                                            v1933 = -1;
                                        end;
                                        if v1938 then
                                            l_v1760_0 = v1865(v1937, v1919);
                                            break;
                                        end;
                                    end;
                                end;
                                v1905.view_angles.y = v1924.y;
                                v1905.forwardmove = l_forwardmove_0;
                                v1905.sidemove = l_sidemove_0;
                                v1905.in_duck = l_in_duck_0;
                                v1905.in_jump = v1925;
                                v1905.in_speed = l_in_speed_0;
                                return l_v1760_0 ~= nil;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
    local function v1947(v1940, v1941, v1942)
        local v1943 = v1942 - v1941:get_origin();
        local v1944 = v1943:length2dsqr();
        if v1944 < 25 then
            local l_m_vecVelocity_1 = v1941.m_vecVelocity;
            local v1946 = l_m_vecVelocity_1:length();
            v1940.move_yaw = l_m_vecVelocity_1:angles().y;
            v1940.forwardmove = -v1946;
            v1940.sidemove = 0;
            return true, v1944;
        else
            v1940.move_yaw = v1943:angles().y;
            v1940.forwardmove = 450;
            v1940.sidemove = 0;
            return false, v1944;
        end;
    end;
    local function v1949(v1948)
        v1948.in_duck = false;
        v1948.in_jump = false;
        v1948.in_speed = false;
        v1948.in_forward = true;
        v1948.in_back = false;
        v1948.in_moveleft = false;
        v1948.in_moveright = false;
    end;
    local function v1969(v1950, v1951, v1952, v1953)
        -- upvalues: v1861 (ref), v1939 (ref), l_v1760_0 (ref), v1815 (ref), l_v1762_0 (ref), v1819 (ref), v1947 (ref), l_v1161_3 (ref), v1949 (ref), v1795 (ref), v45 (ref), l_v1765_0 (ref), v25 (ref), v1790 (ref)
        local v1954 = v1861(v1951, v1952, v1953);
        local v1955 = v1939(v1950, v1951, v1952);
        if l_v1760_0 == nil then
            return;
        else
            if v1815() < l_v1760_0.simtime then
                v1955 = false;
            end;
            if v1953.weapon_type == 5 and not v1951.m_bIsScoped then
                v1955 = false;
            end;
            if l_v1760_0.retreat <= 0 and v1955 then
                local l_ctx_1 = l_v1760_0.ctx;
                if l_v1762_0 == nil then
                    local v1957 = v1951:get_origin();
                    local v1958 = l_ctx_1.origin - v1957;
                    v1958:normalize();
                    local v1959 = l_ctx_1.origin - v1958 * v1819();
                    l_v1762_0 = utils.trace_hull(v1957, v1959, l_ctx_1.obb_mins, l_ctx_1.obb_maxs, v1951, 33636363, 0).end_pos;
                end;
                local v1960, _ = v1947(v1950, v1951, l_ctx_1.origin);
                local v1962 = l_v1161_3.color:get();
                v1949(v1950);
                v1795();
                l_v1760_0.retreat = 0;
                if v1960 then
                    l_v1760_0.retreat = 1;
                end;
                v45.box_new(l_ctx_1.origin, l_ctx_1.obb_mins, l_ctx_1.obb_maxs, vector(), color(0, 0, 0, 0), v1962, globals.tickinterval * 2);
                return;
            elseif not v1954 then
                l_v1765_0();
                return;
            elseif l_v1760_0.ctx == nil or l_v1760_0.retreat == -1 then
                return;
            else
                l_v1760_0.retreat = l_v1760_0.retreat + 1;
                local v1963, _ = v1947(v1950, v1951, l_v1762_0);
                local v1965 = v1951:get_origin();
                local l_m_vecVelocity_2 = v1951.m_vecVelocity;
                local v1967 = (l_v1762_0 - v1965):angles() - l_m_vecVelocity_2:angles();
                local v1968 = l_m_vecVelocity_2:length2dsqr();
                v1949(v1950);
                v1795();
                if v1968 > 1600 and math.abs(v1967.y) < 20 then
                    rage.exploit:force_teleport();
                    v25.ragebot.main.double_tap[1]:override(false);
                end;
                if v1954 and v1963 then
                    l_v1765_0();
                    v1790();
                end;
                return;
            end;
        end;
    end;
    local function v1975(v1970)
        -- upvalues: v25 (ref), l_v1765_0 (ref), v1790 (ref), v1830 (ref), v1857 (ref), v1969 (ref)
        if not v25.ragebot.main.peek_assist[1]:get() then
            l_v1765_0();
            v1790();
            return;
        else
            local v1971 = entity.get_local_player();
            if v1971 == nil then
                return;
            else
                local v1972 = v1971:get_player_weapon();
                if v1972 == nil then
                    return;
                else
                    local v1973 = v1972:get_weapon_info();
                    if v1973 == nil then
                        return;
                    else
                        local v1974 = v1830(v1972, v1973);
                        if not v1857(v1974) then
                            l_v1765_0();
                            v1790();
                            return;
                        else
                            v1969(v1970, v1971, v1972, v1973);
                            return;
                        end;
                    end;
                end;
            end;
        end;
    end;
    local v1976 = v21("smart_peek.on_aim_fire", function()
        -- upvalues: l_v1760_0 (ref), l_v1765_0 (ref)
        if l_v1760_0 == nil then
            return nil;
        else
            l_v1765_0();
            return;
        end;
    end);
    v1975 = v21("smart_peek.on_createmove", v1975);
    local _ = nil;
    local function v1980(v1978)
        -- upvalues: l_v1765_0 (ref), v1790 (ref), v1976 (ref), v1975 (ref)
        local v1979 = v1978:get();
        if not v1979 then
            l_v1765_0();
            v1790();
        end;
        events.aim_fire(v1976, v1979);
        events.createmove(v1975, v1979);
    end;
    l_v1161_3.enabled:set_callback(v1980, true);
end;
v5("ragebot_dormant_aimbot");
v1161 = nil;
v1167 = v151.ragebot.dormant_aimbot;
v1201 = ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot");
v1202 = 5;
l_match_0 = nil;
v1289 = nil;
l_angles_0 = nil;
v1291 = nil;
v1301 = nil;
v1302 = false;
v1303 = false;
v1305 = 1;
v1308 = 0;
v1742 = {
    [0] = "Generic", 
    [1] = "Head", 
    [2] = "Chest", 
    [3] = "Stomach", 
    [4] = "Chest", 
    [5] = "Chest", 
    [6] = "Legs", 
    [7] = "Legs", 
    [8] = "Head", 
    [9] = nil, 
    [10] = "Gear"
};
v1743 = {
    Legs = 4, 
    Stomach = 3, 
    Chest = 2, 
    Head = 1
};
v1744 = {
    [1] = {
        hitbox = "Stomach", 
        scale = 5, 
        vec = vector(0, 0, 40)
    }, 
    [2] = {
        hitbox = "Chest", 
        scale = 6, 
        vec = vector(0, 0, 50)
    }, 
    [3] = {
        hitbox = "Head", 
        scale = 3, 
        vec = vector(0, 0, 58)
    }, 
    [4] = {
        hitbox = "Legs", 
        scale = 4, 
        vec = vector(0, 0, 20)
    }
};
v1745 = function(v1981, v1982)
    for v1983 = 1, #v1981 do
        if v1981[v1983] == v1982 then
            return true;
        end;
    end;
    return false;
end;
v1746 = function(v1984)
    return v1984 >= 1 and v1984 <= 6;
end;
v1747 = function()
    local v1985 = {};
    local v1986 = entity.get_player_resource();
    for v1987 = 1, globals.max_players do
        local v1988 = entity.get(v1987);
        if v1988 ~= nil and v1986.m_bConnected[v1987] and v1988:is_enemy() and v1988:is_dormant() then
            table.insert(v1985, v1988);
        end;
    end;
    return v1985;
end;
v1748 = function(v1989, v1990, v1991)
    local v1992 = v1989:to(v1990):angles();
    local v1993 = math.rad(v1992.y + 90);
    local v1994 = vector(math.cos(v1993), math.sin(v1993), 0) * v1991;
    return {
        [1] = {
            text = "Middle", 
            vec = v1990
        }, 
        [2] = {
            text = "Left", 
            vec = v1990 + v1994
        }, 
        [3] = {
            text = "Right", 
            vec = v1990 - v1994
        }
    };
end;
v1749 = function(v1995, v1996, v1997, v1998)
    local v1999, v2000 = utils.trace_bullet(v1995, v1996, v1997, v1998);
    if v2000 ~= nil then
        local l_entity_0 = v2000.entity;
        if l_entity_0 == nil then
            return 0, v2000;
        elseif l_entity_0:is_player() and not l_entity_0:is_enemy() then
            return 0, v2000;
        end;
    end;
    return v1999, v2000;
end;
do
    local l_v1167_4, l_v1201_3, l_v1202_3, l_l_match_0_3, l_v1289_2, l_l_angles_0_2, l_v1291_1, l_v1301_2, l_v1302_2, l_v1303_4, l_v1305_5, l_v1308_5, l_v1742_0, l_v1743_1, l_v1744_0, l_v1745_1, l_v1746_0, l_v1747_1, l_v1748_1, l_v1749_1, l_v1750_1, l_v1751_0, l_v1752_0, l_v1753_0 = v1167, v1201, v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753;
    l_v1750_1 = function(v2026)
        -- upvalues: l_v1201_3 (ref), l_v1308_5 (ref), l_v1746_0 (ref), l_v1747_1 (ref), l_v1167_4 (ref), l_v1305_5 (ref), v25 (ref), l_v1744_0 (ref), l_v1743_1 (ref), l_v1745_1 (ref), l_v1748_1 (ref), l_v1749_1 (ref), l_l_match_0_3 (ref), l_l_angles_0_2 (ref), l_v1291_1 (ref), l_v1289_2 (ref), l_v1301_2 (ref), l_v1202_3 (ref), l_v1303_4 (ref)
        l_v1201_3:override(false);
        local v2027 = entity.get_local_player();
        if v2027 == nil then
            return;
        else
            local v2028 = v2027:get_player_weapon();
            if v2028 == nil then
                return;
            else
                local v2029 = v2028:get_weapon_info();
                if v2029 == nil then
                    return;
                else
                    local v2030 = v2028:get_inaccuracy();
                    if v2030 == nil then
                        return;
                    else
                        local l_tickcount_2 = globals.tickcount;
                        local v2032 = v2027:get_eye_position();
                        local l_current_0 = v2027:get_simulation_time().current;
                        local v2034 = bit.band(v2027.m_fFlags, bit.lshift(1, 0)) ~= 0;
                        if l_tickcount_2 < l_v1308_5 then
                            return;
                        elseif v2026.in_jump and not v2034 then
                            return;
                        else
                            local l_weapon_type_3 = v2029.weapon_type;
                            if not l_v1746_0(l_weapon_type_3) or v2028.m_iClip1 <= 0 then
                                return false;
                            else
                                local v2036 = l_v1747_1();
                                local v2037 = l_v1167_4.hitboxes:get();
                                if l_tickcount_2 % #v2036 ~= 0 then
                                    l_v1305_5 = l_v1305_5 + 1;
                                else
                                    l_v1305_5 = 1;
                                end;
                                local v2038 = v2036[l_v1305_5];
                                if v2038 == nil then
                                    return;
                                else
                                    local v2039 = v2038:get_bbox();
                                    local v2040 = v2038:get_origin();
                                    local l_m_flDuckAmount_0 = v2038.m_flDuckAmount;
                                    local v2042 = l_v1167_4.alpha_modifier:get();
                                    local v2043 = l_v1167_4.minimum_damage:get();
                                    if v2043 == 0 then
                                        v2043 = v25.ragebot.selection.min_damage:get();
                                    end;
                                    if v2043 >= 100 then
                                        v2043 = v2043 - 100 + v2038.m_iHealth;
                                    end;
                                    local v2044 = {};
                                    for v2045 = 1, #l_v1744_0 do
                                        local v2046 = l_v1744_0[v2045];
                                        local l_vec_0 = v2046.vec;
                                        local l_scale_0 = v2046.scale;
                                        local l_hitbox_0 = v2046.hitbox;
                                        if l_hitbox_0 == "Head" then
                                            l_vec_0 = l_vec_0 - vector(0, 0, 10 * l_m_flDuckAmount_0);
                                        end;
                                        if l_hitbox_0 == "Chest" then
                                            l_vec_0 = l_vec_0 - vector(0, 0, 4 * l_m_flDuckAmount_0);
                                        end;
                                        if #v2037 ~= 0 then
                                            local v2050 = l_v1743_1[l_hitbox_0];
                                            if l_v1745_1(v2037, v2050) then
                                                table.insert(v2044, {
                                                    vec = l_vec_0, 
                                                    scale = l_scale_0, 
                                                    hitbox = l_hitbox_0
                                                });
                                            end;
                                        else
                                            table.insert(v2044, 1, {
                                                vec = l_vec_0, 
                                                scale = l_scale_0, 
                                                hitbox = l_hitbox_0
                                            });
                                        end;
                                    end;
                                    if not (v2029.is_revolver and not (v2028.m_flNextPrimaryAttack >= l_current_0) or math.max(v2027.m_flNextAttack, v2028.m_flNextPrimaryAttack, v2028.m_flNextSecondaryAttack) < l_current_0) then
                                        return;
                                    else
                                        local v2051 = nil;
                                        local v2052 = nil;
                                        if math.floor(v2039.alpha * 100) + 5 <= v2042 then
                                            return;
                                        else
                                            for v2053 = 1, #v2044 do
                                                local v2054 = v2044[v2053];
                                                local v2055 = l_v1748_1(v2032, v2040 + v2054.vec, v2054.scale);
                                                for v2056 = 1, #v2055 do
                                                    local v2057 = v2055[v2056];
                                                    local l_vec_1 = v2057.vec;
                                                    local v2060, v2061 = l_v1749_1(v2027, v2032, l_vec_1, function(v2059)
                                                        -- upvalues: v2038 (ref)
                                                        return v2059 == v2038;
                                                    end);
                                                    if (v2061 == nil or not v2061:is_visible()) and v2060 ~= 0 and v2043 < v2060 then
                                                        v2051 = l_vec_1;
                                                        v2052 = v2060;
                                                        l_l_match_0_3 = v2038;
                                                        l_l_angles_0_2 = v2054.hitbox;
                                                        l_v1291_1 = v2060;
                                                        l_v1289_2 = v2057.text;
                                                        l_v1301_2 = v2039.alpha;
                                                        break;
                                                    end;
                                                end;
                                                if v2051 and v2052 then
                                                    break;
                                                end;
                                            end;
                                            if not v2051 or not v2052 then
                                                return;
                                            else
                                                local v2062 = v2032:to(v2051):angles();
                                                v2026.block_movement = 1;
                                                local v2063 = not v2026.in_jump and v2034;
                                                local v2064 = v2027.m_bIsScoped or v2027.m_bResumeZoom;
                                                local v2065 = v2029.weapon_type == l_v1202_3;
                                                if not v2064 and v2065 and v2063 then
                                                    v2026.in_attack2 = true;
                                                end;
                                                if v2030 < 0.01 then
                                                    v2026.view_angles = v2062;
                                                    v2026.in_attack = true;
                                                    l_v1303_4 = true;
                                                end;
                                                return;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
    l_v1751_0 = function(v2066)
        -- upvalues: l_v1303_4 (ref), l_v1302_2 (ref), l_l_match_0_3 (ref), l_l_angles_0_2 (ref), l_v1291_1 (ref), l_v1289_2 (ref), l_v1301_2 (ref)
        utils.execute_after(0.03, function()
            -- upvalues: v2066 (ref), l_v1303_4 (ref), l_v1302_2 (ref), l_l_match_0_3 (ref), l_l_angles_0_2 (ref), l_v1291_1 (ref), l_v1289_2 (ref), l_v1301_2 (ref)
            if entity.get(v2066.userid, true) == entity.get_local_player() then
                if l_v1303_4 and not l_v1302_2 then
                    events.dormant_miss:call({
                        userid = l_l_match_0_3, 
                        aim_hitbox = l_l_angles_0_2, 
                        aim_damage = l_v1291_1, 
                        aim_point = l_v1289_2, 
                        accuracy = l_v1301_2
                    });
                end;
                l_v1302_2 = false;
                l_v1303_4 = false;
                l_l_match_0_3 = nil;
                l_l_angles_0_2 = nil;
                l_v1291_1 = nil;
                l_v1289_2 = nil;
                l_v1301_2 = nil;
            end;
        end);
    end;
    l_v1752_0 = function(v2067)
        -- upvalues: l_v1303_4 (ref), l_v1302_2 (ref), l_v1742_0 (ref), l_v1289_2 (ref), l_l_angles_0_2 (ref), l_v1291_1 (ref)
        local v2068 = entity.get_local_player();
        local v2069 = entity.get(v2067.userid, true);
        local v2070 = entity.get(v2067.attacker, true);
        if v2069 == nil or v2070 ~= v2068 then
            return;
        else
            local v2071 = v2069:get_bbox();
            if v2071 == nil then
                return;
            else
                if v2069:is_dormant() and l_v1303_4 == true then
                    l_v1302_2 = true;
                    events.dormant_hit:call({
                        userid = v2069, 
                        attacker = v2070, 
                        health = v2067.health, 
                        armor = v2067.armor, 
                        weapon = v2067.weapon, 
                        dmg_health = v2067.dmg_health, 
                        dmg_armor = v2067.dmg_armor, 
                        hitgroup = v2067.hitgroup, 
                        accuracy = v2071.alpha, 
                        hitbox = l_v1742_0[v2067.hitgroup], 
                        aim_point = l_v1289_2, 
                        aim_hitbox = l_l_angles_0_2, 
                        aim_damage = l_v1291_1
                    });
                end;
                return;
            end;
        end;
    end;
    l_v1753_0 = v21("dormant_aimbot.on_shutdown", function()
        -- upvalues: l_v1201_3 (ref)
        l_v1201_3:override();
    end);
    l_v1750_1 = v21("dormant_aimbot.on_createmove", l_v1750_1);
    l_v1751_0 = v21("dormant_aimbot.on_weapon_fire", l_v1751_0);
    l_v1752_0 = v21("dormant_aimbot.on_player_hurt", l_v1752_0);
    v1754 = nil;
    v1755 = function(v2072)
        -- upvalues: l_v1201_3 (ref), l_v1753_0 (ref), l_v1750_1 (ref), l_v1751_0 (ref), l_v1752_0 (ref)
        local v2073 = v2072:get();
        if not v2073 then
            l_v1201_3:override();
        end;
        events.shutdown(l_v1753_0, v2073);
        events.createmove(l_v1750_1, v2073);
        events.weapon_fire(l_v1751_0, v2073);
        events.player_hurt(l_v1752_0, v2073);
    end;
    l_v1167_4.enabled:set_callback(v1755, true);
end;
v5("ragebot_aimbot_logs");
v1167 = nil;
v1201 = v151.ragebot.aimbot_logs;
v1202 = v137.load_font("museo500", 16, "a");
l_match_0 = {
    knife = "Knifed", 
    inferno = "Burned", 
    hegrenade = "Naded"
};
v1289 = {
    [0] = "generic", 
    [1] = "head", 
    [2] = "chest", 
    [3] = "stomach", 
    [4] = "left arm", 
    [5] = "right arm", 
    [6] = "left leg", 
    [7] = "right leg", 
    [8] = "neck", 
    [9] = nil, 
    [10] = "gear"
};
l_angles_0 = {};
v1291 = function(v2074, v2075)
    return string.format("\a%s%s\aDEFAULT", v2075, v2074);
end;
do
    local l_v1201_4, l_v1202_4, l_l_match_0_4, l_v1289_3, l_l_angles_0_3, l_v1291_2, l_v1301_3, l_v1302_3, l_v1303_5, l_v1305_6, l_v1308_6, l_v1742_1, l_v1743_2, l_v1744_1, l_v1745_2, l_v1746_1, l_v1747_2, l_v1748_2, l_v1749_2, l_v1750_2, l_v1751_1, l_v1752_1, l_v1753_1, l_v1754_0, l_v1755_1 = v1201, v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v1755;
    l_v1301_3 = function(v2101, v2102)
        -- upvalues: l_v1291_2 (ref)
        local v2103 = v2102.prefix_brackets:sub(1, 1);
        local v2104 = v2102.prefix_brackets:sub(2, 2);
        local l_prefix_0 = v2102.prefix;
        if v2102.has_prefix_brackets then
            l_prefix_0 = v2103 .. l_prefix_0 .. v2104;
        end;
        if v2102.has_prefix_color then
            l_prefix_0 = l_v1291_2(l_prefix_0, v2101);
        end;
        return l_prefix_0;
    end;
    l_v1302_3 = function()
        -- upvalues: l_v1201_4 (ref)
        if not l_v1201_4.customize:get() then
            return color(168, 201, 228, 255);
        else
            return l_v1201_4.render_colors:get("Hit")[1];
        end;
    end;
    l_v1303_5 = function()
        -- upvalues: l_v1201_4 (ref)
        if not l_v1201_4.customize:get() then
            return color(227, 168, 168, 255);
        else
            return l_v1201_4.render_colors:get("Miss")[1];
        end;
    end;
    l_v1305_6 = function(v2106)
        local v2107 = {};
        local v2108 = {};
        local v2109 = 1;
        local v2110 = #v2106;
        local v2111 = false;
        while v2109 <= v2110 do
            local v2112 = v2106:sub(v2109, v2109);
            if v2112 == "\"" then
                v2111 = not v2111;
            end;
            if v2112 == " " and not v2111 then
                if #v2108 > 0 then
                    table.insert(v2107, table.concat(v2108, ""));
                    for v2113 = 1, #v2108 do
                        v2108[v2113] = nil;
                    end;
                end;
            else
                table.insert(v2108, v2112);
            end;
            v2109 = v2109 + 1;
        end;
        if next(v2108) ~= nil then
            table.insert(v2107, table.concat(v2108, ""));
        end;
        return v2107;
    end;
    l_v1308_6 = function(v2114)
        -- upvalues: l_v1305_6 (ref)
        local v2115 = {
            has_spread_in_events = false, 
            prefix_brackets = "[]", 
            has_history = true, 
            has_mismatch = true, 
            has_brackets = true, 
            has_percentage = true, 
            has_prefix = true, 
            has_color = true, 
            spread_limiter = ": ", 
            backtrack_limiter = ": ", 
            hitchance_limiter = ": ", 
            damage_limiter = ": ", 
            has_hitchance = true, 
            hitchance_name = "hc", 
            has_color_in_hitchance = true, 
            backtrack_name = "backtrack", 
            hit_name = "Hit", 
            backtrack_ms = false, 
            brackets = "()", 
            has_prefix_color = true, 
            has_prefix_brackets = true, 
            prefix = "frost"
        };
        local v2116 = l_v1305_6(v2114);
        for v2117 = 1, #v2116 do
            local v2118 = v2116[v2117];
            local v2119 = v2118:match("^pr=\"([^\"]+)\"");
            local v2120 = v2118:match("^hit=\"([^\"]+)\"");
            local v2121 = v2118:match("^backtrack=\"([^\"]+)\"");
            local v2122 = v2118:match("^hitchance=\"([^\"]+)\"");
            local v2123 = v2118:match("^limiter=\"([^\"]+)\"");
            if v2118 == "prbr=()" then
                v2115.prefix_brackets = "()";
            end;
            if v2119 ~= nil then
                v2115.prefix = v2119;
            end;
            if v2120 ~= nil then
                v2115.hit_name = v2120;
            end;
            if v2121 ~= nil then
                v2115.backtrack_name = v2121;
            end;
            if v2122 ~= nil then
                v2115.hitchance_name = v2122;
            end;
            if v2123 ~= nil then
                v2115.damage_limiter = v2123;
                v2115.hitchance_limiter = v2123;
                v2115.backtrack_limiter = v2123;
                v2115.spread_limiter = v2123;
            end;
            if v2118 == "rprc" then
                v2115.has_prefix_color = false;
            end;
            if v2118 == "rc" then
                v2115.has_color = false;
            end;
            if v2118 == "rp" then
                v2115.has_prefix = false;
            end;
            if v2118 == "rb" then
                v2115.has_brackets = false;
            end;
            if v2118 == "rpb" then
                v2115.has_prefix_brackets = false;
            end;
            if v2118 == "rm" then
                v2115.has_mismatch = false;
            end;
            if v2118 == "rch" then
                v2115.has_color_in_hitchance = false;
            end;
            if v2118 == "rhc" then
                v2115.has_hitchance = false;
            end;
            if v2118 == "rbt" then
                v2115.has_history = false;
            end;
            if v2118 == "btms" then
                v2115.backtrack_ms = true;
            end;
            if v2118 == "spr" then
                v2115.has_spread_in_events = true;
            end;
        end;
        return v2115;
    end;
    l_v1742_1 = function(v2124, v2125, v2126)
        -- upvalues: l_v1291_2 (ref), l_v1301_3 (ref)
        local v2127 = {};
        local v2128 = " ";
        local v2129 = "";
        local v2130 = " ";
        local l_name_1 = v2125.name;
        local l_damage_1 = v2125.damage;
        local l_hitgroup_0 = v2125.hitgroup;
        local l_hitchance_0 = v2125.hitchance;
        local v2135 = string.format("%d", v2125.backtrack);
        if v2124.backtrack_ms then
            v2135 = string.format("%dms", to_time(v2125.backtrack) * 1000);
        end;
        if v2124.has_color then
            l_name_1 = l_v1291_2(l_name_1, v2126);
            l_damage_1 = l_v1291_2(l_damage_1, v2126);
            l_hitgroup_0 = l_v1291_2(l_hitgroup_0, v2126);
            if v2124.has_color_in_hitchance then
                l_hitchance_0 = l_v1291_2(l_hitchance_0, v2126);
            end;
            v2135 = l_v1291_2(v2135, v2126);
            v2130 = l_v1291_2(v2130, v2126);
        end;
        if v2124.has_percentage then
            local v2136 = "%";
            if v2124.has_color then
                v2136 = l_v1291_2(v2136, v2126);
            end;
            l_hitchance_0 = l_hitchance_0 .. v2136;
        end;
        if v2124.has_brackets and #v2124.brackets > 1 then
            v2128 = v2124.brackets:sub(1, 1);
            v2129 = v2124.brackets:sub(2, 2);
        end;
        if v2124.has_mismatch and v2125.hitgroup ~= v2125.wanted_hitgroup then
            local l_hitgroup_1 = v2125.hitgroup;
            local l_wanted_hitgroup_0 = v2125.wanted_hitgroup;
            if v2124.has_color then
                l_hitgroup_1 = l_v1291_2(l_hitgroup_1, v2126);
                l_wanted_hitgroup_0 = l_v1291_2(l_wanted_hitgroup_0, v2126);
            end;
            l_hitgroup_0 = l_hitgroup_1 .. v2128 .. l_wanted_hitgroup_0 .. v2129;
        end;
        table.insert(v2127, string.format("%s %s in the %s", v2124.hit_name, l_name_1, l_hitgroup_0));
        local l_backtrack_name_0 = v2124.backtrack_name;
        if v2124.has_hitchance then
            table.insert(v2127, string.format("(%s%s%s)", v2124.hitchance_name, v2124.hitchance_limiter, l_hitchance_0));
        end;
        table.insert(v2127, string.format("(%s%s%s)", "damage", v2124.damage_limiter, l_damage_1));
        if v2124.has_history then
            table.insert(v2127, string.format("(%s%s%s)", l_backtrack_name_0, v2124.backtrack_limiter, v2135));
        end;
        if v2125.spread ~= nil then
            local v2140 = string.format("%.2f\194\176", v2125.spread);
            if v2124.has_color then
                v2140 = l_v1291_2(v2140, v2126);
            end;
            table.insert(v2127, string.format("(spread%s%s)", v2124.spread_limiter, v2140));
        end;
        local v2141 = table.concat(v2127, v2130);
        if v2124.has_prefix then
            local v2142 = l_v1301_3(v2126, v2124);
            v2141 = string.format("%s %s", v2142, v2141);
        end;
        return v2141;
    end;
    l_v1743_2 = function(v2143, v2144, v2145)
        -- upvalues: l_v1291_2 (ref), l_v1301_3 (ref)
        local v2146 = {};
        local v2147 = "";
        local v2148 = "";
        local v2149 = " ";
        local l_name_2 = v2144.name;
        local l_damage_2 = v2144.damage;
        local l_reason_0 = v2144.reason;
        local l_hitgroup_2 = v2144.hitgroup;
        local l_hitchance_1 = v2144.hitchance;
        local v2155 = string.format("%d", v2144.backtrack);
        if v2143.has_brackets and #v2143.brackets > 1 then
            v2147 = v2143.brackets:sub(1, 1);
            v2148 = v2143.brackets:sub(2, 2);
        end;
        if v2143.backtrack_ms then
            v2155 = string.format("%dms", to_time(v2144.backtrack) * 1000);
        end;
        if v2143.has_color then
            l_name_2 = l_v1291_2(l_name_2, v2145);
            l_damage_2 = l_v1291_2(l_damage_2, v2145);
            l_reason_0 = l_v1291_2(l_reason_0, v2145);
            l_hitgroup_2 = l_v1291_2(l_hitgroup_2, v2145);
            if v2143.has_color_in_hitchance then
                l_hitchance_1 = l_v1291_2(l_hitchance_1, v2145);
            end;
            v2155 = l_v1291_2(v2155, v2145);
            v2149 = l_v1291_2(v2149, v2145);
        end;
        if v2143.has_percentage then
            local v2156 = "%";
            if v2143.has_color then
                v2156 = l_v1291_2(v2156, v2145);
            end;
            l_hitchance_1 = l_hitchance_1 .. v2156;
        end;
        table.insert(v2146, string.format("Missed %s in the %s due to %s", l_name_2, l_hitgroup_2, l_reason_0));
        local l_backtrack_name_1 = v2143.backtrack_name;
        if v2143.has_hitchance then
            table.insert(v2146, string.format("(%s%s%s)", v2143.hitchance_name, v2143.hitchance_limiter, l_hitchance_1));
        end;
        table.insert(v2146, string.format("(%s%s%s)", "damage", v2143.damage_limiter, l_damage_2));
        if v2143.has_history then
            table.insert(v2146, string.format("(%s%s%s)", l_backtrack_name_1, v2143.backtrack_limiter, v2155));
        end;
        if v2144.spread ~= nil then
            local v2158 = string.format("%.2f\194\176", v2144.spread);
            if v2143.has_color then
                v2158 = l_v1291_2(v2158, v2145);
            end;
            table.insert(v2146, string.format("(%s%s%s)", "spread", v2143.spread_limiter, v2158));
        end;
        local v2159 = table.concat(v2146, v2149);
        if v2143.has_prefix then
            local v2160 = l_v1301_3(v2145, v2143);
            v2159 = string.format("%s %s", v2160, v2159);
        end;
        return v2159;
    end;
    l_v1744_1 = function(v2161, v2162, v2163)
        -- upvalues: l_v1291_2 (ref), l_v1301_3 (ref)
        local v2164 = {};
        local v2165 = " ~ ";
        local l_name_3 = v2162.name;
        local l_damage_3 = v2162.damage;
        local l_action_0 = v2162.action;
        if v2161.has_color then
            l_name_3 = l_v1291_2(l_name_3, v2163);
            l_damage_3 = l_v1291_2(l_damage_3, v2163);
            v2165 = l_v1291_2(v2165, v2163);
        end;
        table.insert(v2164, string.format("%s %s for %s damage", l_action_0, l_name_3, l_damage_3));
        local v2169 = table.concat(v2164, v2165);
        if v2161.has_prefix then
            local v2170 = l_v1301_3(v2163, v2161);
            v2169 = string.format("%s %s", v2170, v2169);
        end;
        return v2169;
    end;
    l_v1745_2 = function()
        -- upvalues: l_l_angles_0_3 (ref)
        for v2171 = 1, #l_l_angles_0_3 do
            l_l_angles_0_3[v2171] = nil;
        end;
    end;
    l_v1746_1 = function(v2172, v2173, v2174)
        return {
            type = v2172, 
            text = v2173, 
            color = v2174, 
            alpha = 0, 
            liferemaining = 4
        };
    end;
    l_v1747_2 = function(v2175, v2176, v2177)
        -- upvalues: l_v1746_1 (ref), l_l_angles_0_3 (ref)
        local v2178 = l_v1746_1(v2175, v2176, v2177);
        table.insert(l_l_angles_0_3, v2178);
        if #l_l_angles_0_3 > 6 then
            table.remove(l_l_angles_0_3, 1);
        end;
    end;
    l_v1748_2 = function()
        -- upvalues: l_v1201_4 (ref)
        if l_v1201_4.customize:get() then
            return l_v1201_4.padding:get();
        else
            return 6;
        end;
    end;
    l_v1749_2 = function(v2179, v2180)
        -- upvalues: l_v1201_4 (ref), l_v1748_2 (ref)
        if l_v1201_4.customize:get() and l_v1201_4.radius:get() == "Semi-circle" then
            return math.abs(v2180.y - v2179.y) / 2;
        else
            return l_v1748_2() + 2;
        end;
    end;
    l_v1750_2 = function(v2181, v2182, v2183, v2184)
        -- upvalues: l_v1749_2 (ref), v137 (ref)
        local v2185 = v2183:clone();
        local v2186 = l_v1749_2(v2181, v2182);
        v2185.r = v2185.r * 0.1;
        v2185.g = v2185.g * 0.1;
        v2185.b = v2185.b * 0.1;
        v2185.a = 80 * v2184;
        v137.blur(v2181, v2182, 1.8, v2184, v2186);
        v137.rect(v2181, v2182, v2185, v2186);
    end;
    l_v1751_1 = function()
        -- upvalues: l_v1748_2 (ref), l_v1202_4 (ref), v137 (ref), v24 (ref), l_v1201_4 (ref), l_l_angles_0_3 (ref), l_play_0 (ref), v22 (ref), l_v1302_3 (ref), l_v1291_2 (ref), l_v1746_1 (ref), l_v1303_5 (ref), l_v1750_2 (ref)
        local _ = 6;
        local v2188 = l_v1748_2() + 4;
        local v2189 = l_v1748_2();
        local l_l_v1202_4_0 = l_v1202_4;
        local v2191 = "";
        local l_frametime_2 = globals.frametime;
        local v2193 = v137.screen_size();
        local v2194 = vector(v2193.x * 0.5, v24.lerp(v2193.y * 0.5 + 50, v2193.y - 200, l_v1201_4.offset_y:get() * 0.01));
        local v2195 = {};
        for v2196 = #l_l_angles_0_3, 1, -1 do
            local v2197 = l_l_angles_0_3[v2196];
            v2197.liferemaining = v2197.liferemaining - l_frametime_2;
            if v2197.liferemaining <= 0 then
                v2197.alpha = l_play_0.interp(v2197.alpha, 0, 0.075);
                if v2197.alpha <= 0 then
                    table.remove(l_l_angles_0_3, v2196);
                end;
            else
                v2197.alpha = l_play_0.interp(v2197.alpha, 1, 0.075);
            end;
        end;
        for v2198 = 1, #l_l_angles_0_3 do
            table.insert(v2195, l_l_angles_0_3[v2198]);
        end;
        local v2199 = ui.get_alpha();
        if v2199 > 0 and next(v2195) == nil then
            local l_user_0 = v22.user;
            local v2201 = 89;
            local v2202 = "stomach";
            local v2203 = 285;
            local v2204 = "head";
            local v2205 = "spread";
            local _ = nil;
            local v2207 = l_v1302_3();
            local v2208 = v2207:clone();
            v2208.a = v2208.a * 0.5;
            local v2209 = v2207:to_hex();
            local v2210 = v2208:to_hex();
            local v2211 = l_v1291_2(l_user_0, v2209);
            local v2212 = l_v1291_2(v2201, v2209);
            local v2213 = l_v1291_2(v2202, v2209);
            if v2201 ~= v2203 then
                v2212 = string.format("%s(%s)", l_v1291_2(v2201, v2209), l_v1291_2(v2203, v2210));
            end;
            if v2202 ~= v2204 then
                v2213 = string.format("%s(%s)", l_v1291_2(v2202, v2209), l_v1291_2(v2204, v2210));
            end;
            local v2214 = string.format("Hit %s's %s for %s damage", v2211, v2213, v2212);
            local v2215 = l_v1746_1("hit", v2214, v2207);
            v2215.alpha = v2199;
            table.insert(v2195, v2215);
            v2207 = nil;
            v2208 = l_v1303_5();
            v2209 = v2208:to_hex();
            v2210 = l_v1291_2(l_user_0, v2209);
            v2211 = l_v1291_2(v2202, v2209);
            v2212 = l_v1291_2(v2205, v2209);
            v2213 = string.format("Miss in %s's %s due to %s", v2210, v2211, v2212);
            v2214 = l_v1746_1("miss", v2213, v2208);
            v2214.alpha = v2199;
            table.insert(v2195, v2214);
        end;
        for v2216 = 1, #v2195 do
            local v2217 = v2195[v2216];
            local l_text_0 = v2217.text;
            local l_color_0 = v2217.color;
            local l_alpha_0 = v2217.alpha;
            l_text_0 = string.format("\a%s\226\128\162  \aDEFAULT%s", l_color_0:to_hex(), l_text_0);
            local l_type_0 = v2217.type;
            local v2222 = v137.measure_text(l_l_v1202_4_0, v2191, l_type_0);
            local v2223 = v137.measure_text(l_l_v1202_4_0, v2191, l_text_0);
            local v2224 = vector(v2223.x, math.max(v2222.y, v2223.y)) + vector(v2188 * 2, v2189 * 2);
            local v2225 = v2194 - v2224 * 0.5;
            local v2226 = v2225 + vector(v2188, v2189);
            local v2227 = l_color_0:clone();
            v2227.a = v2227.a * l_alpha_0;
            l_v1750_2(v2225, v2225 + v2224, l_color_0, l_alpha_0);
            v137.text(l_l_v1202_4_0, v2226, color(255, 255, 255, 255 * l_alpha_0), v2191, l_text_0);
            v2194.y = v2194.y - (v2224.y + 8) * l_alpha_0;
        end;
    end;
    l_v1752_1 = function(v2228)
        -- upvalues: l_v1289_3 (ref), l_v1201_4 (ref), l_v1308_6 (ref), l_v1742_1 (ref), l_v1302_3 (ref), l_v1291_2 (ref), l_v1747_2 (ref)
        local l_target_1 = v2228.target;
        if l_target_1 == nil then
            return;
        else
            local v2230 = l_target_1:get_name();
            local v2231 = v2228.hitchance or 0;
            local v2232 = v2228.backtrack or 0;
            local v2233 = v2228.damage or 0;
            local v2234 = l_v1289_3[v2228.hitgroup] or "?";
            local v2235 = v2228.wanted_damage or 0;
            local v2236 = l_v1289_3[v2228.wanted_hitgroup] or "?";
            local v2237 = l_v1201_4.default_colors:get("Hit")[1];
            if l_v1201_4.output:get("Console") then
                local v2238 = v2237:to_hex();
                local v2239 = nil;
                local v2240 = {
                    name = v2230, 
                    damage = v2233, 
                    wanted_damage = v2235, 
                    hitgroup = v2234, 
                    wanted_hitgroup = v2236, 
                    hitchance = v2231, 
                    backtrack = v2232
                };
                if v2228.spread ~= nil then
                    v2240.spread = v2228.spread;
                end;
                local v2241 = l_v1308_6(l_v1201_4.custom_prefix:get());
                v2239 = l_v1742_1(v2241, v2240, v2238);
                print_raw(v2239);
            end;
            if l_v1201_4.output:get("Events") then
                local v2242 = v2237:to_hex();
                local v2243 = nil;
                local v2244 = {
                    name = v2230, 
                    damage = v2233, 
                    wanted_damage = v2235, 
                    hitgroup = v2234, 
                    wanted_hitgroup = v2236, 
                    hitchance = v2231, 
                    backtrack = v2232
                };
                local v2245 = l_v1308_6(l_v1201_4.custom_prefix:get());
                if v2245.has_spread_in_events and v2228.spread ~= nil then
                    v2244.spread = v2228.spread;
                end;
                v2243 = l_v1742_1(v2245, v2244, v2242);
                print_dev(v2243);
            end;
            if l_v1201_4.output:get("Render") then
                local v2246 = l_v1302_3();
                local v2247 = v2246:clone();
                v2247.a = v2247.a * 0.5;
                local v2248 = v2246:to_hex();
                local v2249 = v2247:to_hex();
                local v2250 = l_v1291_2(v2230, v2248);
                local v2251 = l_v1291_2(v2233, v2248);
                local v2252 = l_v1291_2(v2234, v2248);
                if v2233 ~= v2235 then
                    v2251 = string.format("%s(%s)", l_v1291_2(v2233, v2248), l_v1291_2(v2235, v2249));
                end;
                if v2234 ~= v2236 then
                    v2252 = string.format("%s(%s)", l_v1291_2(v2234, v2248), l_v1291_2(v2236, v2249));
                end;
                local v2253 = string.format("Hit %s's %s for %s damage", v2250, v2252, v2251);
                l_v1747_2("hit", v2253, v2246);
            end;
            return;
        end;
    end;
    l_v1753_1 = function(v2254)
        -- upvalues: l_v1289_3 (ref), l_v1201_4 (ref), l_v1308_6 (ref), l_v1743_2 (ref), l_v1303_5 (ref), l_v1291_2 (ref), l_v1747_2 (ref)
        local l_target_2 = v2254.target;
        if l_target_2 == nil then
            return;
        else
            local v2256 = l_target_2:get_name();
            local v2257 = v2254.hitchance or 0;
            local v2258 = v2254.backtrack or 0;
            local v2259 = v2254.state or "?";
            local v2260 = v2254.wanted_damage or 0;
            local v2261 = l_v1289_3[v2254.wanted_hitgroup] or "?";
            local v2262 = l_v1201_4.default_colors:get("Miss")[1];
            if l_v1201_4.output:get("Console") then
                local v2263 = v2262:to_hex();
                local v2264 = nil;
                local v2265 = {
                    name = v2256, 
                    damage = v2260, 
                    reason = v2259, 
                    hitgroup = v2261, 
                    hitchance = v2257, 
                    backtrack = v2258
                };
                if v2254.spread ~= nil then
                    v2265.spread = v2254.spread;
                end;
                local v2266 = l_v1308_6(l_v1201_4.custom_prefix:get());
                v2264 = l_v1743_2(v2266, v2265, v2263);
                print_raw(v2264);
            end;
            if l_v1201_4.output:get("Events") then
                local v2267 = v2262:to_hex();
                local v2268 = nil;
                local v2269 = {
                    name = v2256, 
                    damage = v2260, 
                    reason = v2259, 
                    hitgroup = v2261, 
                    hitchance = v2257, 
                    backtrack = v2258
                };
                local v2270 = l_v1308_6(l_v1201_4.custom_prefix:get());
                if v2270.has_spread_in_events and v2254.spread ~= nil then
                    v2269.spread = v2254.spread;
                end;
                v2268 = l_v1743_2(v2270, v2269, v2267);
                print_dev(v2268);
            end;
            if l_v1201_4.output:get("Render") then
                local v2271 = l_v1303_5();
                local v2272 = v2271:to_hex();
                local v2273 = l_v1291_2(v2256, v2272);
                local v2274 = l_v1291_2(v2261, v2272);
                local v2275 = l_v1291_2(v2259, v2272);
                local v2276 = string.format("Miss in %s's %s due to %s", v2273, v2274, v2275);
                l_v1747_2("miss", v2276, v2271);
            end;
            return;
        end;
    end;
    l_v1754_0 = function(v2277)
        -- upvalues: l_v1752_1 (ref), l_v1753_1 (ref)
        if v2277.state == nil then
            l_v1752_1(v2277);
        else
            l_v1753_1(v2277);
        end;
    end;
    l_v1755_1 = function(v2278)
        -- upvalues: l_l_match_0_4 (ref), l_v1201_4 (ref), l_v1308_6 (ref), l_v1744_1 (ref), l_v1302_3 (ref), l_v1291_2 (ref), l_v1747_2 (ref)
        local v2279 = entity.get_local_player();
        local v2280 = entity.get(v2278.userid, true);
        local v2281 = entity.get(v2278.attacker, true);
        if v2279 == v2280 or v2279 ~= v2281 then
            return;
        else
            local v2282 = l_l_match_0_4[v2278.weapon];
            if v2282 == nil then
                return;
            else
                local l_dmg_health_0 = v2278.dmg_health;
                local v2284 = v2280:get_name();
                local v2285 = l_v1201_4.default_colors:get("Hit")[1]:to_hex();
                if l_v1201_4.output:get("Console") then
                    local v2286 = {
                        name = v2284, 
                        damage = l_dmg_health_0, 
                        action = v2282
                    };
                    local v2287 = l_v1308_6(l_v1201_4.custom_prefix:get());
                    local v2288 = l_v1744_1(v2287, v2286, v2285);
                    print_raw(v2288);
                end;
                if l_v1201_4.output:get("Events") then
                    local v2289 = {
                        name = v2284, 
                        damage = l_dmg_health_0, 
                        action = v2282
                    };
                    local v2290 = l_v1308_6(l_v1201_4.custom_prefix:get());
                    local v2291 = l_v1744_1(v2290, v2289, v2285);
                    print_dev(v2291);
                end;
                if l_v1201_4.output:get("Render") then
                    local v2292 = l_v1302_3();
                    local v2293 = v2292:to_hex();
                    local v2294 = l_v1291_2(v2284, v2293);
                    local v2295 = l_v1291_2(l_dmg_health_0, v2293);
                    local v2296 = string.format("%s %s for %s damage", v2282, v2294, v2295);
                    l_v1747_2("hit", v2296, v2292);
                end;
                return;
            end;
        end;
    end;
    l_v1751_1 = v21("ragebot_hitchance_modifier.on_render", l_v1751_1);
    l_v1754_0 = v21("ragebot_hitchance_modifier.on_aim_ack", l_v1754_0);
    l_v1755_1 = v21("ragebot_hitchance_modifier.on_player_hurt", l_v1755_1);
    v1756 = nil;
    v1757 = function(v2297)
        -- upvalues: l_v1745_2 (ref), l_v1751_1 (ref)
        local v2298 = v2297:get("Render");
        if not v2298 then
            l_v1745_2();
        end;
        events.render(l_v1751_1, v2298);
    end;
    do
        local l_v1757_1 = v1757;
        v1758 = function(v2300)
            -- upvalues: l_v1745_2 (ref), l_v1751_1 (ref), l_v1201_4 (ref), l_v1757_1 (ref), l_v1754_0 (ref), l_v1755_1 (ref)
            local v2301 = v2300:get();
            if not v2301 then
                l_v1745_2();
                events.render(l_v1751_1, false);
            end;
            if v2301 then
                l_v1201_4.output:set_callback(l_v1757_1, true);
            else
                l_v1201_4.output:unset_callback(l_v1757_1);
            end;
            events.aim_ack(l_v1754_0, v2301);
            events.player_hurt(l_v1755_1, v2301);
        end;
        l_v1201_4.enabled:set_callback(v1758, true);
    end;
end;
v5("ragebot_hitchance_modifier");
v1201 = nil;
v1202 = v151.ragebot.hitchance_modifier;
l_match_0 = v148.hitchance;
v1289 = 40;
l_angles_0 = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance");
v1291 = {};
for v2302 = 1, #v1202.list do
    v1308 = v1202.list[v2302];
    v1291[v1308] = {
        hitchance = ui.find("Aimbot", "Ragebot", "Selection", v1308, "Hit Chance"), 
        auto_scope = ui.find("Aimbot", "Ragebot", "Accuracy", v1308, "Auto Scope")
    };
end;
do
    local l_v1202_5, l_l_match_0_5, l_l_angles_0_4, l_v1291_3, l_v1301_4, l_v1302_4, l_v1303_6, l_v1305_7, l_v1308_7, l_v1742_2, l_v1743_3 = v1202, l_match_0, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742, v1743;
    l_v1301_4 = function()
        -- upvalues: l_l_angles_0_4 (ref)
        local v2314 = ui.get_binds(true);
        for v2315 = 1, #v2314 do
            local v2316 = v2314[v2315];
            local l_value_0 = v2316.value;
            local l_reference_0 = v2316.reference;
            if l_reference_0:get() == l_value_0 and l_reference_0:id() == l_l_angles_0_4:id() then
                return true;
            end;
        end;
        return false;
    end;
    l_v1302_4 = function(v2319, v2320, v2321)
        -- upvalues: v24 (ref)
        if v2319.m_bIsScoped or v2320 == nil then
            return false;
        elseif v2321 == 1001 then
            return true;
        else
            local v2322 = v2319:get_origin();
            local v2323 = v2320:get_origin() - v2322;
            return v24.to_foot(v2323:length()) <= v2321 * 0.1;
        end;
    end;
    l_v1303_6 = function(v2324)
        local v2325 = v2324:get_weapon_index();
        local l_weapon_type_4 = v2324:get_weapon_info().weapon_type;
        if l_weapon_type_4 == 1 then
            if v2325 == 1 then
                return "Desert Eagle";
            elseif v2325 == 64 then
                return "R8 Revolver";
            end;
        end;
        if l_weapon_type_4 == 5 then
            if v2325 == 9 then
                return "AWP";
            elseif v2325 == 40 then
                return "SSG-08";
            else
                return "AutoSnipers";
            end;
        else
            return nil;
        end;
    end;
    l_v1305_7 = function()
        -- upvalues: l_v1202_5 (ref), l_v1291_3 (ref)
        for v2327 = 1, #l_v1202_5.list do
            local v2328 = l_v1291_3[l_v1202_5.list[v2327]];
            if v2328 ~= nil then
                v2328.hitchance:override();
                v2328.auto_scope:override();
            end;
        end;
    end;
    l_v1308_7 = function()
        -- upvalues: l_v1301_4 (ref), l_v1303_6 (ref), l_v1291_3 (ref), l_v1202_5 (ref), v152 (ref), l_v1302_4 (ref), l_l_match_0_5 (ref)
        if l_v1301_4() then
            return;
        else
            local v2329 = entity.get_local_player();
            if v2329 == nil then
                return;
            else
                local v2330 = v2329:get_player_weapon();
                if v2330 == nil then
                    return;
                else
                    local v2331 = l_v1303_6(v2330);
                    if v2331 == nil then
                        return;
                    else
                        local v2332 = l_v1291_3[v2331];
                        if v2332 == nil then
                            return;
                        else
                            local v2333 = l_v1202_5[v2331];
                            if v2333 == nil then
                                return;
                            else
                                local v2334 = nil;
                                local v2335 = v2333["In Air"];
                                local v2336 = v2333["No Scope"];
                                if v2335 ~= nil and v2335.enabled:get() then
                                    local v2337 = v2335.value:get();
                                    if v2337 ~= -1 and not v152.is_onground then
                                        v2334 = v2337;
                                    end;
                                end;
                                if v2336 ~= nil and v2336.enabled:get() then
                                    local v2338 = entity.get_threat();
                                    local v2339 = v2336.value:get();
                                    local v2340 = v2336.distance:get();
                                    if v2339 ~= -1 and l_v1302_4(v2329, v2338, v2340) then
                                        v2334 = v2339;
                                        v2332.auto_scope:override(false);
                                    end;
                                end;
                                if v2334 ~= nil then
                                    v2332.hitchance:override(v2334);
                                    l_l_match_0_5.updated_this_tick = true;
                                end;
                                return;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
    l_v1742_2 = function()
        -- upvalues: l_v1305_7 (ref)
        l_v1305_7();
    end;
    l_v1743_3 = function()
        -- upvalues: l_l_match_0_5 (ref), l_v1305_7 (ref), l_v1308_7 (ref)
        l_l_match_0_5.updated_this_tick = false;
        l_v1305_7();
        l_v1308_7();
    end;
    l_v1742_2 = v21("ragebot_hitchance_modifier.on_shutdown", l_v1742_2);
    l_v1743_3 = v21("ragebot_hitchance_modifier.on_createmove", l_v1743_3);
    v1744 = nil;
    v1745 = function(v2341)
        -- upvalues: l_v1305_7 (ref), l_v1742_2 (ref), l_v1743_3 (ref)
        local v2342 = v2341:get();
        if not v2342 then
            l_v1305_7();
        end;
        events.shutdown(l_v1742_2, v2342);
        events.createmove(l_v1743_3, v2342);
    end;
    l_v1202_5.enabled:set_callback(v1745, true);
end;
v5("begin_visuals");
v1158 = nil;
v5("visuals_watermark");
v1161 = nil;
v1167 = v151.visuals.watermark;
do
    local l_v1167_5, l_v1201_5, l_v1202_6, l_l_match_0_6, l_v1289_4, l_l_angles_0_5 = v1167, v1201, v1202, l_match_0, v1289, l_angles_0;
    l_v1201_5 = function()
        -- upvalues: l_v1167_5 (ref), v24 (ref)
        local v2349, v2350 = l_v1167_5.color:get();
        if type(v2350) ~= "table" then
            v2350 = {
                [1] = v2350
            };
        end;
        for v2351 = 1, #v2350 do
            v2350[v2351].a = v24.lerp(50, 255, v2350[v2351].a / 255);
        end;
        return v2349, v2350;
    end;
    l_v1202_6 = {};
    l_l_match_0_6 = string.format("%s.lua", string.lower(v22.name));
    do
        local l_l_l_match_0_6_0 = l_l_match_0_6;
        l_v1202_6.on_render = function()
            -- upvalues: v137 (ref), l_l_l_match_0_6_0 (ref), l_v1201_5 (ref), l_v1167_5 (ref), v147 (ref)
            local v2353 = v137.screen_size();
            local v2354 = vector(v2353.x * 0.5, v2353.y - 8);
            local v2355 = 1;
            local v2356 = "";
            local l_l_l_l_match_0_6_0_0 = l_l_l_match_0_6_0;
            local v2358, v2359 = l_v1201_5();
            if l_v1167_5.pulse:get() then
                for v2360 = 1, #v2359 do
                    v2359[v2360].a = v2359[v2360].a * math.abs(globals.realtime % 2 - 1);
                end;
            end;
            if v2358 == "Gradient" then
                local v2361 = globals.realtime * (l_v1167_5.speed:get() * 0.1);
                l_l_l_l_match_0_6_0_0 = v147.gradient(l_l_l_l_match_0_6_0_0, v2361, v2359[1], v2359[2]);
            end;
            local v2362 = v137.measure_text(v2355, v2356, l_l_l_l_match_0_6_0_0);
            v2354.x = v2354.x - v2362.x / 2;
            v2354.y = v2354.y - v2362.y;
            v137.text(v2355, v2354, v2359[1], v2356, l_l_l_l_match_0_6_0_0);
        end;
    end;
    l_l_match_0_6 = {};
    l_v1289_4 = common.get_username();
    l_l_angles_0_5 = string.lower(v22.name);
    v1291 = string.lower(v22.build);
    do
        local l_l_v1289_4_0, l_l_l_angles_0_5_0, l_v1291_4 = l_v1289_4, l_l_angles_0_5, v1291;
        l_l_match_0_6.on_render = function()
            -- upvalues: v137 (ref), l_v1201_5 (ref), l_l_l_angles_0_5_0 (ref), l_v1291_4 (ref), l_l_v1289_4_0 (ref)
            local v2366 = v137.screen_size();
            local v2367 = vector(v2366.x - 8, 8);
            local v2368 = 1;
            local v2369 = "";
            local _, v2371 = l_v1201_5();
            local v2372 = {};
            local v2373 = v2371[1] or color();
            local v2374 = v2371[2] or color();
            local v2375 = string.format("\a%s%s\a%s", v2373:to_hex(), l_l_l_angles_0_5_0, v2374:to_hex());
            table.insert(v2372, string.format("%s ~ %s : username: %s", v2375, l_v1291_4, l_l_v1289_4_0));
            for v2376 = 1, #v2372 do
                local v2377 = v2372[v2376];
                local v2378 = v137.measure_text(v2368, v2369, v2377);
                local v2379 = vector(v2367.x - v2378.x, v2367.y);
                local _ = nil;
                local v2381 = vector(v2379.x, v2379.y + 1);
                local v2382 = v2381 + vector(-8, -2);
                local v2383 = v2381 + v2378 + vector(8, 2);
                local v2384 = (v2382 + v2383) * 0.5;
                local v2385 = color(0, 0, 0, 0);
                local v2386 = color(0, 0, 0, 100);
                v137.gradient(v2382, vector(v2384.x, v2383.y), v2385, v2386, v2385, v2386);
                v137.gradient(v2383, vector(v2384.x, v2382.y), v2385, v2386, v2385, v2386);
                v137.text(v2368, v2379, color(), v2369, v2377);
                v2367.y = v2367.y + v2378.y + 4;
            end;
        end;
    end;
    l_v1289_4 = {};
    l_l_angles_0_5 = 8;
    v1291 = 12;
    v1301 = 1;
    v1302 = 14;
    v1303 = v137.load_font("museo500", 16, "a");
    v1305 = string.format("%s.lua", v22.name:lower());
    v1308 = common.get_username();
    v1742 = 1;
    v1743 = 0;
    v1744 = vector(18, 18);
    v1745 = nil;
    v1746 = string.format("https://en.neverlose.cc/static/avatars/%s.png", v1308);
    v1747 = {};
    do
        local l_l_l_angles_0_5_1, l_v1291_5, l_v1301_5, l_v1302_5, l_v1303_7, l_v1305_8, l_v1308_8, l_v1742_3, l_v1743_4, l_v1744_2, l_v1745_3, l_v1746_2, l_v1747_3, l_v1748_3, l_v1749_3, l_v1750_3, l_v1751_2 = l_l_angles_0_5, v1291, v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751;
        l_v1748_3 = function(v2404)
            -- upvalues: v137 (ref), l_v1744_2 (ref), l_v1745_3 (ref)
            if v2404 == nil then
                return;
            else
                local v2405 = v137.load_image(v2404, l_v1744_2);
                if v2405 == nil then
                    return;
                else
                    l_v1745_3 = v2405;
                    return;
                end;
            end;
        end;
        network.get(l_v1746_2, l_v1747_3, l_v1748_3);
        l_v1746_2 = nil;
        l_v1747_3 = v137.screen_size();
        l_v1748_3 = vector();
        if l_v1747_3.x ~= 0 and l_v1747_3.y ~= 0 then
            l_v1748_3.x = l_v1747_3.x - 32;
            l_v1748_3.y = 32;
        end;
        l_v1749_3 = vector(0, 0);
        l_v1746_2 = v146.new("new_watermark", l_v1748_3, l_v1749_3, {
            border = {
                [1] = vector(), 
                [2] = l_v1747_3
            }
        });
        l_v1747_3 = function(v2406)
            -- upvalues: l_v1167_5 (ref)
            if l_v1167_5.radius:get() == "Smooth" then
                return l_v1167_5.padding:get() + 2;
            else
                return v2406.y / 2;
            end;
        end;
        l_v1748_3 = function()
            -- upvalues: l_v1742_3 (ref)
            return string.format("%d", 1 / l_v1742_3);
        end;
        l_v1749_3 = function()
            local v2407 = common.get_system_time();
            return string.format("%02d:%02d", v2407.hours, v2407.minutes);
        end;
        l_v1750_3 = function()
            -- upvalues: l_v1743_4 (ref), l_v1742_3 (ref)
            local l_frametime_3 = globals.frametime;
            l_v1743_4 = l_v1743_4 - l_frametime_3;
            if l_v1743_4 <= 0 then
                l_v1743_4 = 1;
                l_v1742_3 = l_frametime_3;
            end;
        end;
        l_v1751_2 = function(v2409, v2410, v2411)
            -- upvalues: v137 (ref)
            if v2409 ~= nil then
                v137.texture(v2409, v2410, v2411, color(), "f");
            else
                v137.rect(v2410, v2410 + v2411, color(20, 20, 20, 255), math.max(v2411.x, v2411.y) / 2);
            end;
        end;
        l_v1289_4.on_render = function()
            -- upvalues: l_v1167_5 (ref), l_v1746_2 (ref), l_v1303_7 (ref), l_v1201_5 (ref), l_v1308_8 (ref), l_v1745_3 (ref), l_v1750_3 (ref), l_v1748_3 (ref), l_v1749_3 (ref), l_v1305_8 (ref), v137 (ref), l_l_l_angles_0_5_1 (ref), v147 (ref), l_v1747_3 (ref), l_v1291_5 (ref), l_v1301_5 (ref), l_v1302_5 (ref), l_v1751_2 (ref)
            local v2412 = l_v1167_5.padding:get();
            local v2413 = l_v1167_5.padding:get() + 4;
            local v2414 = l_v1746_2:get_drag_position();
            local l_l_v1303_7_0 = l_v1303_7;
            local v2416 = "";
            local v2417, v2418 = l_v1201_5();
            local v2419 = v2418[1]:clone();
            v2419.r = v2419.r * 0.1;
            v2419.g = v2419.g * 0.1;
            v2419.b = v2419.b * 0.1;
            v2419.a = 80;
            local v2420 = {};
            if l_v1167_5.display:get("User") then
                table.insert(v2420, {
                    text = l_v1308_8, 
                    texture = l_v1745_3
                });
            end;
            if l_v1167_5.display:get("FPS") then
                l_v1750_3();
                table.insert(v2420, {
                    text = l_v1748_3(), 
                    icon = ui.get_icon("layer-group")
                });
            end;
            if l_v1167_5.display:get("Time") then
                table.insert(v2420, {
                    text = l_v1749_3(), 
                    icon = ui.get_icon("clock")
                });
            end;
            local v2421 = vector();
            local _ = nil;
            local l_l_v1305_8_0 = l_v1305_8;
            local v2424 = ui.get_icon("code");
            local v2425 = v2418[1]:clone();
            local v2426 = v137.measure_text(l_l_v1303_7_0, v2416, v2424);
            local v2427 = v137.measure_text(l_l_v1303_7_0, v2416, l_l_v1305_8_0);
            local v2428 = vector(v2426.x + v2427.x + l_l_l_angles_0_5_1, math.max(v2426.y, v2427.y)) + vector(v2413 * 2, v2412 * 2);
            if v2417 == "Gradient" then
                local v2429 = v2418[1] or color();
                local v2430 = v2418[2] or color();
                l_l_v1305_8_0 = v147.gradient(l_l_v1305_8_0, globals.realtime, v2429, v2430);
            end;
            local v2431 = v2414:clone();
            local v2432 = l_v1747_3(v2428);
            v137.blur(v2431, v2431 + v2428, 1.8, 1, v2432);
            v137.rect(v2431, v2431 + v2428, v2419, v2432);
            local v2433 = v2431 + vector(v2413, v2412);
            v137.text(l_l_v1303_7_0, v2433, v2425, v2416, v2424);
            v2433.x = v2433.x + v2426.x + l_l_l_angles_0_5_1;
            v137.text(l_l_v1303_7_0, v2433, v2425, v2416, l_l_v1305_8_0);
            v2421.x = v2421.x + v2428.x;
            v2421.y = math.max(v2421.y, v2428.y);
            v2414.x = v2414.x + v2428.x;
            if next(v2420) ~= nil then
                v2414.x = v2414.x + 10;
                v2421.x = v2421.x + 10;
                l_l_v1305_8_0 = {};
                for v2434 = 1, #v2420 do
                    local v2435 = v2420[v2434];
                    v2428 = {};
                    v2431 = v2435.text;
                    v2432 = v2435.icon;
                    v2433 = v2435.texture;
                    if v2431 ~= nil then
                        v2428.text_size = v137.measure_text(l_l_v1303_7_0, v2416, v2431);
                    end;
                    if v2432 ~= nil then
                        v2428.icon_size = v137.measure_text(l_l_v1303_7_0, v2416, v2432);
                    end;
                    if v2433 ~= nil then
                        v2428.texture_size = vector(v2433.width, v2433.height);
                    end;
                    l_l_v1305_8_0[v2434] = v2428;
                end;
                v2424 = color(255, 255, 255, 255);
                v2425 = color(255, 255, 255, 155);
                v2426 = vector(0, l_v1303_7.height);
                for v2436 = 1, #l_l_v1305_8_0 do
                    if v2436 ~= 1 then
                        v2426.x = v2426.x + l_v1291_5 + l_v1301_5 + l_v1291_5;
                    end;
                    v2432 = 0;
                    v2433 = l_l_v1305_8_0[v2436];
                    if v2433.text_size ~= nil then
                        v2432 = v2432 + 1;
                        v2426.x = v2426.x + v2433.text_size.x;
                    end;
                    if v2433.icon_size ~= nil then
                        v2432 = v2432 + 1;
                        v2426.x = v2426.x + v2433.icon_size.x;
                    end;
                    if v2433.texture_size ~= nil then
                        v2432 = v2432 + 1;
                        v2426.x = v2426.x + v2433.texture_size.x;
                    end;
                    v2426.x = v2426.x + (v2432 - 1) * l_l_l_angles_0_5_1;
                end;
                v2427 = v2426 + vector(v2413 * 2, v2412 * 2);
                local v2437 = v2414:clone();
                v2428 = l_v1747_3(v2427);
                v137.blur(v2437, v2437 + v2427, 1.8, 1, v2428);
                v137.rect(v2437, v2437 + v2427, v2419, v2428);
                v2431 = v2437 + vector(v2413, v2412);
                for v2438 = 1, #v2420 do
                    local v2439 = v2420[v2438];
                    local v2440 = l_l_v1305_8_0[v2438];
                    if v2438 ~= 1 then
                        v2431.x = v2431.x + l_v1291_5;
                        local v2441 = vector(v2431.x, v2437.y + v2427.y / 2 + 1);
                        v137.rect(v2441 + vector(0, -l_v1302_5 / 2), v2441 + vector(l_v1301_5, l_v1302_5 / 2), v2425);
                        v2431.x = v2431.x + l_v1301_5 + l_v1291_5;
                    end;
                    if v2439.texture ~= nil then
                        local v2442 = v2431 + vector(0, (v2426.y - v2440.texture_size.y) / 2);
                        l_v1751_2(v2439.texture, v2442, v2440.texture_size);
                        v2431.x = v2431.x + v2440.texture_size.x + l_l_l_angles_0_5_1;
                    end;
                    if v2439.icon ~= nil then
                        v137.text(l_l_v1303_7_0, v2431, v2425, v2416, v2439.icon);
                        v2431.x = v2431.x + v2440.icon_size.x + l_l_l_angles_0_5_1;
                    end;
                    if v2439.text ~= nil then
                        v137.text(l_l_v1303_7_0, v2431, v2424, v2416, v2439.text);
                        v2431.x = v2431.x + v2440.text_size.x;
                    end;
                end;
                v2421.x = v2421.x + v2427.x;
                v2421.y = math.max(v2421.y, v2427.y);
            end;
            l_v1746_2.size = v2421:clone();
            l_v1746_2();
        end;
    end;
    l_l_angles_0_5 = {};
    v1291 = {
        Console = 3, 
        Default = 1, 
        Bold = 4, 
        Pixel = 2
    };
    v1301 = nil;
    v1302 = v137.screen_size();
    v1303 = vector(v1302.x, 0);
    if v1302.x ~= 0 and v1302.y ~= 0 then
        v1303.x = v1303.x - 35;
        v1303.y = v1303.y + 10;
    end;
    v1305 = vector(0, 12);
    v1301 = v146.new("custom_watermark", v1303, v1305, {
        border = {
            [1] = vector(), 
            [2] = v1302
        }
    });
    v1302 = function(v2443, v2444)
        -- upvalues: l_v1167_5 (ref)
        if not v2444 then
            v2444 = 0;
        end;
        if l_v1167_5.animation:get("Encoded") and globals.realtime % 5 < 1 then
            local v2445 = {};
            for v2446 = 1, #v2443 do
                if v2443:sub(v2446, v2446) == " " then
                    table.insert(v2445, " ");
                else
                    local v2447 = math.floor(globals.realtime * 24);
                    table.insert(v2445, string.char(49 + (v2444 + v2446 * 9 + v2447) % 60));
                end;
            end;
            return table.concat(v2445, "");
        else
            return v2443;
        end;
    end;
    do
        local l_v1291_6, l_v1301_6, l_v1302_6, l_v1303_8, l_v1305_9, l_v1308_9, l_v1742_4, l_v1743_5, l_v1744_3 = v1291, v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744;
        l_v1303_8 = function()
            -- upvalues: l_v1291_6 (ref), l_v1167_5 (ref)
            return l_v1291_6[l_v1167_5.font:get()] or 1;
        end;
        l_v1305_9 = function(v2457, v2458)
            -- upvalues: l_v1167_5 (ref), v147 (ref)
            local v2459, v2460 = l_v1167_5.custom_colors[v2457]:get();
            if v2459 == "Single" then
                v2458 = string.format("\a%s%s", v2460:to_hex(), v2458);
            end;
            if v2459 == "Gradient" then
                v2458 = v147.gradient(v2458, -globals.realtime, v2460[1], v2460[2]);
            end;
            return v2458;
        end;
        l_v1308_9 = function(v2461, v2462, v2463)
            -- upvalues: l_v1167_5 (ref), v137 (ref)
            local v2464 = l_v1167_5.position:get();
            if v2464 == "Custom" then
                return v2461:get_drag_position(), true;
            else
                local v2465 = vector();
                local v2466 = v137.screen_size();
                if v2464 == "Left" then
                    v2465.x = 8;
                    v2465.y = (v2466.y - v2463) / 2;
                end;
                if v2464 == "Bottom" then
                    v2465.x = (v2466.x - v2462) / 2;
                    v2465.y = v2466.y - v2463 - 8;
                end;
                if v2464 == "Right" then
                    v2465.x = v2466.x - v2462 - 8;
                    v2465.y = (v2466.y - v2463) / 2;
                end;
                return v2465, false;
            end;
        end;
        l_v1742_4 = function(v2467)
            local v2468 = {};
            local v2469 = {};
            local v2470 = 1;
            local v2471 = #v2467;
            local v2472 = false;
            while v2470 <= v2471 do
                local v2473 = v2467:sub(v2470, v2470);
                if v2473 == "\"" then
                    v2472 = not v2472;
                end;
                if v2473 == " " and not v2472 then
                    if #v2469 > 0 then
                        table.insert(v2468, table.concat(v2469, ""));
                        for v2474 = 1, #v2469 do
                            v2469[v2474] = nil;
                        end;
                    end;
                else
                    table.insert(v2469, v2473);
                end;
                v2470 = v2470 + 1;
            end;
            if next(v2469) ~= nil then
                table.insert(v2468, table.concat(v2469, ""));
            end;
            return v2468;
        end;
        l_v1743_5 = function(v2475)
            -- upvalues: v22 (ref), l_v1742_4 (ref)
            local v2476 = {
                has_main = true, 
                pre = "F R O S T", 
                has_brackets = true, 
                main = "L U A", 
                has_prefix = true, 
                post = v22.build:upper()
            };
            local v2477 = l_v1742_4(v2475);
            for v2478 = 1, #v2477 do
                local v2479 = v2477[v2478];
                local v2480 = v2479:match("^pre=\"([^\"]+)\"");
                local v2481 = v2479:match("^main=\"([^\"]+)\"");
                local v2482 = v2479:match("^post=\"([^\"]+)\"");
                local v2483 = v2479:match("^pre_icon=\"([^\"]+)\"");
                local v2484 = v2479:match("^post_icon=\"([^\"]+)\"");
                if v2479 == "nobr" then
                    v2476.has_brackets = false;
                end;
                if v2479 == "nomn" then
                    v2476.has_main = false;
                end;
                if v2479 == "nopr" then
                    v2476.has_prefix = false;
                end;
                if v2480 ~= nil then
                    v2476.pre = v2480;
                end;
                if v2481 ~= nil then
                    v2476.main = v2481;
                end;
                if v2482 ~= nil then
                    v2476.post = v2482;
                end;
                if v2483 ~= nil then
                    v2476.pre_icon = v2483;
                end;
                if v2484 ~= nil then
                    v2476.post_icon = v2484;
                end;
            end;
            if v2476.has_main or v2476.has_prefix then
                v2476.pre = v2476.pre .. " ";
            end;
            return v2476;
        end;
        l_v1744_3 = function(v2485)
            -- upvalues: l_v1305_9 (ref), l_v1302_6 (ref)
            local v2486 = {};
            local l_pre_icon_0 = v2485.pre_icon;
            local l_post_icon_0 = v2485.post_icon;
            local l_pre_0 = v2485.pre;
            local l_main_0 = v2485.main;
            local l_post_0 = v2485.post;
            if l_pre_icon_0 ~= nil then
                local v2492 = ui.get_icon(l_pre_icon_0);
                if v2492 ~= nil then
                    table.insert(v2486, "\aDEFAULT" .. v2492 .. " ");
                end;
            end;
            if l_pre_0 ~= nil then
                table.insert(v2486, l_v1305_9("Pre", l_v1302_6(l_pre_0)));
            end;
            if l_main_0 ~= nil and v2485.has_main then
                table.insert(v2486, l_v1305_9("Main", l_v1302_6(l_main_0, 10)));
            end;
            if l_post_0 ~= nil and v2485.has_prefix then
                if v2485.has_brackets then
                    l_post_0 = "[" .. l_v1302_6(l_post_0, 20) .. "]";
                end;
                local v2493 = l_v1305_9("Post", l_post_0);
                if v2485.has_main then
                    v2493 = " " .. v2493;
                end;
                table.insert(v2486, v2493);
            end;
            if l_post_icon_0 ~= nil then
                local v2494 = ui.get_icon(l_post_icon_0);
                if v2494 ~= nil then
                    table.insert(v2486, " " .. "\aDEFAULT" .. v2494);
                end;
            end;
            return table.concat(v2486, "");
        end;
        l_l_angles_0_5.on_render = function()
            -- upvalues: l_v1743_5 (ref), l_v1167_5 (ref), l_v1744_3 (ref), l_v1303_8 (ref), v137 (ref), l_v1301_6 (ref), l_v1308_9 (ref), v24 (ref)
            local v2495 = "";
            local v2496 = l_v1743_5(l_v1167_5.text:get());
            local v2497 = l_v1744_3(v2496);
            local v2498 = l_v1303_8();
            if v2498 == 2 then
                v2497 = v2497:upper();
            end;
            local v2499 = v137.measure_text(v2498, v2495, v2497);
            l_v1301_6.size = v2499:clone();
            local v2500, v2501 = l_v1308_9(l_v1301_6, v2499.x, v2499.y);
            local v2502 = color();
            if l_v1167_5.animation:get("Pulse") then
                v2502.a = v24.lerp(50, 255, math.abs(globals.realtime % 2 - 1));
            end;
            v137.text(v2498, v2500, v2502, v2495, v2497);
            if not v2501 then
                l_v1301_6:set_position(v2500.x, v2500.y);
            end;
            if v2501 then
                l_v1301_6();
            end;
        end;
    end;
    l_v1202_6.on_render = v21("watemark.default.on_render", l_v1202_6.on_render);
    l_l_match_0_6.on_render = v21("watemark.alternative.on_render", l_l_match_0_6.on_render);
    l_v1289_4.on_render = v21("watemark.new.on_render", l_v1289_4.on_render);
    l_l_angles_0_5.on_render = v21("watemark.custom.on_render", l_l_angles_0_5.on_render);
    v1291 = nil;
    v1301 = function(v2503)
        -- upvalues: l_v1202_6 (ref), l_l_match_0_6 (ref), l_v1289_4 (ref), l_l_angles_0_5 (ref)
        local v2504 = v2503:get();
        events.render(l_v1202_6.on_render, v2504 == "Default");
        events.render(l_l_match_0_6.on_render, v2504 == "Alternative");
        events.render(l_v1289_4.on_render, v2504 == "New");
        events.render(l_l_angles_0_5.on_render, v2504 == "Custom");
    end;
    l_v1167_5.style:set_callback(v1301, true);
end;
v5("visuals_screen_indicators");
v1167 = nil;
v1201 = v151.visuals.screen_indicators;
v1202 = ui.find("Aimbot", "Ragebot", "Main", "Double Tap");
l_match_0 = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots");
v1289 = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim");
l_angles_0 = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage");
v1291 = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance");
v1301 = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding");
v1302 = function(v2505)
    local v2506 = v2505:get_override();
    if v2506 ~= nil then
        return v2506;
    else
        return v2505:get();
    end;
end;
v1303 = {};
v1305 = string.format("%s.%s", "FROST", "LUA");
v1308 = {
    [1] = {
        [1] = "\226\157\133", 
        [2] = -7, 
        [3] = 6, 
        [4] = 0.7
    }, 
    [2] = {
        [1] = "\226\157\133", 
        [2] = -2, 
        [3] = 10, 
        [4] = 0.5
    }, 
    [3] = {
        [1] = "\226\139\134", 
        [2] = -4, 
        [3] = 2, 
        [4] = 0.2
    }, 
    [4] = {
        [1] = "\226\139\134", 
        [2] = 0, 
        [3] = 9, 
        [4] = 0.2
    }, 
    [5] = {
        [1] = "\226\157\134", 
        [2] = -4, 
        [3] = 5, 
        [4] = 0.4
    }, 
    [6] = {
        [1] = "\226\157\133", 
        [2] = 0, 
        [3] = 6, 
        [4] = 0.7
    }, 
    [7] = {
        [1] = "\226\139\134", 
        [2] = -2, 
        [3] = 2, 
        [4] = 0.3
    }, 
    [8] = {
        [1] = "\226\157\134", 
        [2] = -3, 
        [3] = 8, 
        [4] = 0.4
    }
};
v1742 = l_smoothy_0.new(0);
v1743 = l_smoothy_0.new(0);
v1744 = l_smoothy_0.new(0);
v1745 = l_smoothy_0.new(0);
v1746 = l_smoothy_0.new(0);
v1747 = l_smoothy_0.new(0);
v1748 = function(v2507)
    local v2508 = v2507:get_weapon_info();
    if v2508 == nil then
        return false;
    else
        return v2508.weapon_type == 9;
    end;
end;
do
    local l_v1201_6, l_v1202_7, l_l_match_0_7, l_v1289_5, l_l_angles_0_6, l_v1291_7, l_v1301_7, l_v1302_7, l_v1303_9, l_v1305_10, l_v1308_10, l_v1742_5 = v1201, v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742;
    v1749 = function()
        -- upvalues: v151 (ref), l_v1302_7 (ref), l_v1301_7 (ref), v152 (ref), v25 (ref)
        local v2521 = v151.antiaim.settings.manual_yaw.select:get();
        if v2521 ~= nil and v2521 ~= "Off" then
            local v2522 = v2521:upper();
            return string.format("MANUAL %s", v2522);
        elseif l_v1302_7(l_v1301_7) and rage.antiaim:get_target(true) ~= nil then
            return "FREESTAND";
        elseif not v152.is_onground then
            if v152.is_crouched then
                return "AIR-CROUCH";
            else
                return "AIR";
            end;
        elseif v152.is_crouched then
            if v152.is_moving then
                return "CROUCH-MOVE";
            else
                return "CROUCH";
            end;
        elseif v152.is_moving then
            if v25.antiaim.misc.slow_walk:get() then
                return "SLOWING";
            else
                return "MOVING";
            end;
        else
            return "STANDING";
        end;
    end;
    do
        local l_l_v1305_10_0, l_l_v1308_10_0, l_l_v1742_5_0, l_v1743_6, l_v1744_4, l_v1745_4, l_v1746_3, l_v1747_4, l_v1748_4, l_v1749_4, l_v1750_4, l_v1751_3, l_v1752_2, l_v1753_2, l_v1754_1, l_v1755_2, l_v1756_0, l_v1757_2, l_v1758_0 = l_v1305_10, l_v1308_10, l_v1742_5, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v1755, v1756, v1757, v1758;
        l_v1750_4 = function(v2542, v2543, v2544)
            -- upvalues: l_l_v1308_10_0 (ref), v137 (ref), v17 (ref), l_v1743_6 (ref), v147 (ref)
            local v2545 = "";
            local v2546 = -globals.realtime;
            local v2547 = v2542.x + 4;
            local l_y_1 = v2542.y;
            local v2549 = {};
            local v2550 = #l_l_v1308_10_0;
            local v2551 = 0;
            local v2552 = 0;
            for v2553 = 1, v2550 do
                local v2554 = l_l_v1308_10_0[v2553];
                local v2555 = v137.measure_text(1, v2545, v2554[1]);
                v2551 = v2551 + (v2555.x + v2554[2]);
                v2552 = math.max(v2552, v2555.y + v2554[3]);
                v2549[v2553] = v2555;
            end;
            v2547 = v17(v2547 - v2551 * 0.5 * (1 - l_v1743_6.value));
            local v2556 = 0;
            local v2557 = 1 / (v2550 - 1);
            for v2558 = 1, v2550 do
                local v2559 = l_l_v1308_10_0[v2558];
                local v2560 = v2549[v2558];
                local v2561 = v2559[1];
                local v2562 = v2559[2];
                local v2563 = v2559[3];
                local v2564 = v2559[4];
                local v2565 = (math.sin(v2546 * v2564) * 0.5 + 0.5) * 0.5 + 0.3;
                v2561 = v147.gradient(v2561, (v2546 + v2556) * 1.25, v2543, v2544);
                local v2566 = vector(v2547 + v2562, l_y_1 + v2563);
                local v2567 = color(200, 200, 200, v2543.a);
                v2567.a = v2567.a * v2565;
                v137.text(1, v2566, v2567, v2545, v2561);
                v2547 = v2547 + v2560.x + v2562;
                v2556 = v2556 + v2557;
            end;
            v2542.y = v2542.y + v2552 * 0.75;
        end;
        l_v1751_3 = function(v2568, v2569, v2570)
            -- upvalues: l_v1749_4 (ref), v137 (ref), v17 (ref), l_v1743_6 (ref)
            local v2571 = 2;
            local v2572 = "";
            local v2573 = l_v1749_4();
            local v2574 = v137.measure_text(v2571, v2572, v2573);
            local v2575 = v2568:clone();
            v2575.x = v17(v2575.x - v2574.x * 0.5 * (1 - l_v1743_6.value));
            local v2576 = v2569:clone();
            v2576.a = v2576.a * v2570;
            v137.text(v2571, v2575, v2576, v2572, v2573);
            v2568.y = v2568.y + (v2574.y - 2);
        end;
        l_v1752_2 = function(v2577, v2578, v2579)
            -- upvalues: l_v1201_6 (ref), l_l_v1305_10_0 (ref), v137 (ref), v147 (ref), v17 (ref), l_v1743_6 (ref)
            local v2580 = l_v1201_6.animation:get();
            local v2581 = 2;
            local v2582 = "";
            local l_l_l_v1305_10_0_0 = l_l_v1305_10_0;
            local v2584 = v137.measure_text(v2581, v2582, l_l_l_v1305_10_0_0);
            local v2585 = -globals.realtime;
            if not v2580 then
                l_l_l_v1305_10_0_0 = string.format("\a%sFROST\aDEFAULT.LUA", v2578:to_hex());
            end;
            if v2580 then
                l_l_l_v1305_10_0_0 = v147.gradient(l_l_l_v1305_10_0_0, v2585 * 1.25, v2578, v2579);
            end;
            local v2586 = v2577:clone();
            v2586.x = v17(v2586.x - v2584.x * 0.5 * (1 - l_v1743_6.value));
            v137.text(v2581, v2586, v2579, v2582, l_l_l_v1305_10_0_0);
            v2577.y = v2577.y + v17(v2584.y - 2);
        end;
        l_v1753_2 = function(v2587, v2588, v2589, v2590)
            -- upvalues: v137 (ref), v17 (ref), l_v1743_6 (ref)
            local v2591 = 2;
            local v2592 = "";
            local v2593 = "DT";
            local v2594 = v137.measure_text(v2591, v2592, v2593);
            local v2595 = v2587:clone();
            v2595.x = v17(v2595.x - v2594.x * 0.5 * (1 - l_v1743_6.value));
            local v2596 = color(255, 0, 50, 255):lerp(v2588, rage.exploit:get());
            v2596.a = v2596.a * v2589 * v2590;
            v137.text(v2591, v2595, v2596, v2592, v2593);
            v2587.y = v2587.y + v17((v2594.y - 2) * v2589);
        end;
        l_v1754_1 = function(v2597, v2598, v2599, v2600)
            -- upvalues: v137 (ref), v17 (ref), l_v1743_6 (ref)
            local v2601 = 2;
            local v2602 = "";
            local v2603 = "OSAA";
            local v2604 = v137.measure_text(v2601, v2602, v2603);
            local v2605 = v2597:clone();
            v2605.x = v17(v2605.x - v2604.x * 0.5 * (1 - l_v1743_6.value));
            local v2606 = v2598:clone();
            v2606.a = v2606.a * v2599 * v2600;
            v137.text(v2601, v2605, v2606, v2602, v2603);
            v2597.y = v2597.y + v17((v2604.y - 2) * v2599);
        end;
        l_v1755_2 = function(v2607, v2608, v2609, v2610)
            -- upvalues: v137 (ref), v17 (ref), l_v1743_6 (ref)
            local v2611 = 2;
            local v2612 = "";
            local v2613 = "BODY";
            local v2614 = v137.measure_text(v2611, v2612, v2613);
            local v2615 = v2607:clone();
            v2615.x = v17(v2615.x - v2614.x * 0.5 * (1 - l_v1743_6.value));
            local v2616 = v2608:clone();
            v2616.a = v2616.a * v2609 * v2610;
            v137.text(v2611, v2615, v2616, v2612, v2613);
            v2607.y = v2607.y + v17((v2614.y - 2) * v2609);
        end;
        l_v1756_0 = function(v2617, v2618, v2619, v2620)
            -- upvalues: v137 (ref), v17 (ref), l_v1743_6 (ref)
            local v2621 = 2;
            local v2622 = "";
            local v2623 = "HC";
            local v2624 = v137.measure_text(v2621, v2622, v2623);
            local v2625 = v2617:clone();
            v2625.x = v17(v2625.x - v2624.x * 0.5 * (1 - l_v1743_6.value));
            local v2626 = v2618:clone();
            v2626.a = v2626.a * v2619 * v2620;
            v137.text(v2621, v2625, v2626, v2622, v2623);
            v2617.y = v2617.y + v17((v2624.y - 2) * v2619);
        end;
        l_v1757_2 = function(v2627)
            -- upvalues: l_v1302_7 (ref), l_v1202_7 (ref), l_l_match_0_7 (ref), v509 (ref), l_v1291_7 (ref), l_v1289_5 (ref), l_v1748_4 (ref), l_l_v1742_5_0 (ref), l_v1743_6 (ref), l_v1744_4 (ref), l_v1745_4 (ref), l_v1746_3 (ref), l_v1747_4 (ref)
            local v2628 = v2627:is_alive();
            local l_m_bIsScoped_0 = v2627.m_bIsScoped;
            local v2630 = l_v1302_7(l_v1202_7);
            local v2631 = l_v1302_7(l_l_match_0_7);
            local v2632 = v509.get(l_v1291_7);
            local v2633 = v2632 ~= nil and v2632.active;
            local v2634 = l_v1289_5:get() == "Force";
            local v2635 = 0;
            if v2628 then
                v2635 = 1;
                local v2636 = v2627:get_player_weapon();
                if l_m_bIsScoped_0 or v2636 ~= nil and l_v1748_4(v2636) then
                    v2635 = 0.5;
                end;
            end;
            l_l_v1742_5_0(0.05, v2635);
            l_v1743_6(0.05, l_m_bIsScoped_0);
            l_v1744_4(0.05, v2634);
            l_v1745_4(0.05, v2633);
            l_v1746_3(0.05, v2630);
            l_v1747_4(0.05, v2631);
        end;
        l_v1758_0 = function()
            -- upvalues: v137 (ref), l_v1201_6 (ref), l_v1743_6 (ref), l_l_v1742_5_0 (ref), l_v1750_4 (ref), l_v1752_2 (ref), l_v1751_3 (ref), l_v1753_2 (ref), l_v1746_3 (ref), l_v1754_1 (ref), l_v1747_4 (ref), l_v1755_2 (ref), l_v1744_4 (ref), l_v1756_0 (ref), l_v1745_4 (ref)
            local v2637 = v137.screen_size() * 0.5;
            local v2638 = l_v1201_6.color:get("Accent")[1]:clone();
            local v2639 = l_v1201_6.color:get("Secondary")[1]:clone();
            v2637.x = v2637.x + math.floor(0.5 + 10 * l_v1743_6.value);
            v2637.y = v2637.y + l_v1201_6.offset:get();
            v2638.a = v2638.a * l_l_v1742_5_0.value;
            v2639.a = v2639.a * l_l_v1742_5_0.value;
            l_v1750_4(v2637, v2638, v2639);
            l_v1752_2(v2637, v2638, v2639);
            l_v1751_3(v2637, color(250, 250, 250, 125), l_l_v1742_5_0.value);
            l_v1753_2(v2637, color(250, 250, 250, 175), l_v1746_3.value, l_l_v1742_5_0.value);
            l_v1754_1(v2637, color(250, 250, 250, 175), l_v1747_4.value, l_l_v1742_5_0.value);
            l_v1755_2(v2637, color(250, 250, 250, 175), l_v1744_4.value, l_l_v1742_5_0.value);
            l_v1756_0(v2637, color(250, 250, 250, 175), l_v1745_4.value, l_l_v1742_5_0.value);
        end;
        l_v1303_9.on_render = function()
            -- upvalues: l_v1757_2 (ref), l_l_v1742_5_0 (ref), l_v1758_0 (ref)
            local v2640 = entity.get_local_player();
            if v2640 == nil then
                return;
            else
                l_v1757_2(v2640);
                if l_l_v1742_5_0.value > 0 then
                    l_v1758_0();
                end;
                return;
            end;
        end;
    end;
    l_v1305_10 = {};
    l_v1308_10 = v137.load_font("museo500", 16, "ad");
    l_v1742_5 = v137.load_font("museo500", 14, "ad");
    v1743 = string.format("%s.%s", v22.name:lower(), "lua");
    v1744 = {
        [1] = {
            [1] = "\226\157\133", 
            [2] = -7, 
            [3] = 6, 
            [4] = 0.7
        }, 
        [2] = {
            [1] = "\226\157\133", 
            [2] = -2, 
            [3] = 10, 
            [4] = 0.5
        }, 
        [3] = {
            [1] = "\226\139\134", 
            [2] = -4, 
            [3] = 2, 
            [4] = 0.2
        }, 
        [4] = {
            [1] = "\226\139\134", 
            [2] = 0, 
            [3] = 9, 
            [4] = 0.2
        }, 
        [5] = {
            [1] = "\226\157\134", 
            [2] = -4, 
            [3] = 5, 
            [4] = 0.4
        }, 
        [6] = {
            [1] = "\226\157\133", 
            [2] = 0, 
            [3] = 6, 
            [4] = 0.7
        }, 
        [7] = {
            [1] = "\226\139\134", 
            [2] = -2, 
            [3] = 2, 
            [4] = 0.3
        }, 
        [8] = {
            [1] = "\226\157\134", 
            [2] = -3, 
            [3] = 8, 
            [4] = 0.4
        }
    };
    v1745 = l_smoothy_0.new(0);
    v1746 = l_smoothy_0.new(0);
    v1747 = l_smoothy_0.new(0);
    v1748 = l_smoothy_0.new(0);
    v1749 = l_smoothy_0.new(0);
    v1750 = function(v2641)
        local v2642 = v2641:get_weapon_info();
        if v2642 == nil then
            return false;
        else
            return v2642.weapon_type == 9;
        end;
    end;
    v1751 = function()
        -- upvalues: v152 (ref), v25 (ref)
        if not v152.is_onground then
            return "air";
        elseif v152.is_crouched then
            return "crouch";
        elseif v152.is_moving then
            if v25.antiaim.misc.slow_walk:get() then
                return "slowing";
            else
                return "moving";
            end;
        else
            return "stand";
        end;
    end;
    do
        local l_l_v1308_10_1, l_l_v1742_5_1, l_v1743_7, l_v1744_5, l_v1745_5, l_v1746_4, l_v1747_5, l_v1748_5, l_v1749_5, l_v1750_5, l_v1751_4, l_v1752_3, l_v1753_3, l_v1754_2, l_v1755_3, l_v1759_1, l_v1760_1 = l_v1308_10, l_v1742_5, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v1755, v1759, v1760;
        l_v1752_3 = function(v2660, v2661, v2662)
            -- upvalues: l_v1744_5 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref), v147 (ref)
            local v2663 = "";
            local v2664 = -globals.realtime;
            local v2665 = v2660.x + 4;
            local l_y_2 = v2660.y;
            local v2667 = {};
            local v2668 = #l_v1744_5;
            local v2669 = 0;
            local v2670 = 0;
            for v2671 = 1, v2668 do
                local v2672 = l_v1744_5[v2671];
                local v2673 = v137.measure_text(1, v2663, v2672[1]);
                v2669 = v2669 + (v2673.x + v2672[2]);
                v2670 = math.max(v2670, v2673.y + v2672[3]);
                v2667[v2671] = v2673;
            end;
            v2665 = v17(v2665 - v2669 * 0.5 * (1 - l_v1746_4.value));
            local v2674 = 0;
            local v2675 = 1 / (v2668 - 1);
            for v2676 = 1, v2668 do
                local v2677 = l_v1744_5[v2676];
                local v2678 = v2667[v2676];
                local v2679 = v2677[1];
                local v2680 = v2677[2];
                local v2681 = v2677[3];
                local v2682 = v2677[4];
                local v2683 = (math.sin(v2664 * v2682) * 0.5 + 0.5) * 0.5 + 0.3;
                v2679 = v147.gradient(v2679, (v2664 + v2674) * 1.25, v2661, v2662);
                local v2684 = vector(v2665 + v2680, l_y_2 + v2681);
                local v2685 = color(200, 200, 200, v2661.a);
                v2685.a = v2685.a * v2683;
                v137.text(1, v2684, v2685, v2663, v2679);
                v2665 = v2665 + v2678.x + v2680;
                v2674 = v2674 + v2675;
            end;
            v2660.y = v2660.y + v2670;
        end;
        l_v1753_3 = function(v2686, v2687, v2688, v2689)
            -- upvalues: l_l_v1308_10_1 (ref), l_v1743_7 (ref), v137 (ref), l_v1201_6 (ref), v17 (ref), l_v1746_4 (ref), v147 (ref)
            local l_l_l_v1308_10_1_0 = l_l_v1308_10_1;
            local v2691 = "";
            local l_l_v1743_7_0 = l_v1743_7;
            local v2693 = v137.measure_text(l_l_l_v1308_10_1_0, v2691, l_l_v1743_7_0);
            local v2694 = v2693 + vector(l_v1201_6.padding:get() + 6, l_v1201_6.padding:get());
            local v2695 = v2686:clone();
            v2695.x = v17(v2695.x - v2694.x * 0.5 * (1 - l_v1746_4.value));
            local v2696 = v2686:clone();
            v2696.x = v17(v2696.x - v2693.x * 0.5 * (1 - l_v1746_4.value));
            local v2697 = v2688:clone();
            if l_v1201_6.animation:get() then
                l_l_v1743_7_0 = v147.gradient(l_l_v1743_7_0, -globals.realtime * 1.25, v2687, v2688);
            end;
            local v2698 = v2687:clone();
            local v2699 = 8;
            v2698.r = v2698.r * 0.1;
            v2698.g = v2698.g * 0.1;
            v2698.b = v2698.b * 0.1;
            v2698.a = 80 * v2689;
            v137.blur(v2695, v2695 + v2694, 1.8, v2689, v2699);
            v137.rect(v2695, v2695 + v2694, v2698, v2699);
            v137.text(l_l_l_v1308_10_1_0, v2695 + (v2694 - v2693) / 2, v2697, v2691, l_l_v1743_7_0);
            v2686.y = v2686.y + v17(v2694.y - 1);
        end;
        l_v1754_2 = function(v2700, v2701, v2702)
            -- upvalues: l_l_v1742_5_1 (ref), l_v1751_4 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref)
            local l_l_l_v1742_5_1_0 = l_l_v1742_5_1;
            local v2704 = "";
            local v2705 = l_v1751_4();
            local v2706 = v137.measure_text(l_l_l_v1742_5_1_0, v2704, v2705);
            local v2707 = "\226\151\159";
            local v2708 = "\226\151\158";
            local v2709 = v137.measure_text(l_l_l_v1742_5_1_0, v2704, v2707);
            local v2710 = v137.measure_text(l_l_l_v1742_5_1_0, v2704, v2708);
            local v2711 = v2706:clone();
            v2711.x = v2711.x + v2709.x;
            v2711.x = v2711.x + v2710.x;
            local v2712 = v2700:clone();
            v2712.x = v17(v2712.x - v2711.x * 0.5 * (1 - l_v1746_4.value));
            local v2713 = v2701:clone();
            v2713.a = v2713.a * v2702;
            v137.text(l_l_l_v1742_5_1_0, v2712 + vector(0, -2), v2713, v2704, v2707);
            v2712.x = v2712.x + v2709.x;
            v137.text(l_l_l_v1742_5_1_0, v2712, v2713, v2704, v2705);
            v2712.x = v2712.x + v2706.x;
            v137.text(l_l_l_v1742_5_1_0, v2712 + vector(0, -2), v2713, v2704, v2708);
            v2700.y = v2700.y + v2711.y + 2;
        end;
        l_v1755_3 = function(v2714, v2715, v2716, v2717, v2718, v2719)
            -- upvalues: l_l_v1742_5_1 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref)
            local l_l_l_v1742_5_1_1 = l_l_v1742_5_1;
            local v2721 = "";
            local v2722 = 6;
            local v2723 = "dmg";
            local v2724 = "dt";
            local v2725 = "hs";
            local v2726 = v137.measure_text(l_l_l_v1742_5_1_1, v2721, v2723);
            local v2727 = v137.measure_text(l_l_l_v1742_5_1_1, v2721, v2724);
            local v2728 = v137.measure_text(l_l_l_v1742_5_1_1, v2721, v2725);
            local v2729 = vector(math.max(v2726.x + v2722 + v2727.x, v2728.x), math.max(v2726.y, v2727.y) + v2728.y);
            local v2730 = v2714:clone();
            local v2731 = v2714:clone();
            v2730.x = v17(v2730.x - v2729.x * 0.5 * (1 - l_v1746_4.value));
            v2731.x = v17(v2731.x - v2728.x * 0.5 * (1 - l_v1746_4.value));
            local v2732 = color(250, 250, 250, 175);
            local v2733 = color(250, 250, 250, 175);
            local v2734 = color(250, 250, 250, 175);
            local v2735 = color(255, 0, 50, 255):lerp(v2715, rage.exploit:get());
            v2732 = v2732:lerp(v2715, v2716);
            v2733 = v2733:lerp(v2735, v2717);
            v2734 = v2734:lerp(v2715, v2718);
            v2732.a = v2732.a * v2719;
            v2733.a = v2733.a * v2719;
            v2734.a = v2734.a * v2719;
            v137.text(l_l_l_v1742_5_1_1, v2730, v2732, v2721, v2723);
            v2730.x = v2730.x + v2726.x + v2722;
            v137.text(l_l_l_v1742_5_1_1, v2730, v2733, v2721, v2724);
            v2731.y = v2731.y + math.max(v2726.y, v2727.y);
            v137.text(l_l_l_v1742_5_1_1, v2731, v2734, v2721, v2725);
            v2714.y = v2714.y + v2729.y;
        end;
        v1756 = function(v2736, v2737, v2738, v2739)
            -- upvalues: l_l_v1742_5_1 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref)
            local l_l_l_v1742_5_1_2 = l_l_v1742_5_1;
            local v2741 = "";
            local v2742 = "dmg";
            local v2743 = v137.measure_text(l_l_l_v1742_5_1_2, v2741, v2742);
            local v2744 = v2736:clone();
            v2744.x = v17(v2744.x - v2743.x * 0.5 * (1 - l_v1746_4.value));
            local v2745 = v2737:clone();
            v2745.a = v2745.a * v2738 * v2739;
            v137.text(l_l_l_v1742_5_1_2, v2744, v2745, v2741, v2742);
            v2736.y = v2736.y + v17((v2743.y - 1) * v2738);
        end;
        v1757 = function(v2746, v2747, v2748, v2749)
            -- upvalues: l_l_v1742_5_1 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref)
            local l_l_l_v1742_5_1_3 = l_l_v1742_5_1;
            local v2751 = "";
            local v2752 = "dt";
            local v2753 = v137.measure_text(l_l_l_v1742_5_1_3, v2751, v2752);
            local v2754 = v2746:clone();
            v2754.x = v17(v2754.x - v2753.x * 0.5 * (1 - l_v1746_4.value));
            local v2755 = color(255, 0, 50, 255):lerp(v2747, rage.exploit:get());
            v2755.a = v2755.a * v2748 * v2749;
            v137.text(l_l_l_v1742_5_1_3, v2754, v2755, v2751, v2752);
            v2746.y = v2746.y + v17((v2753.y - 1) * v2748);
        end;
        v1758 = function(v2756, v2757, v2758, v2759)
            -- upvalues: l_l_v1742_5_1 (ref), v137 (ref), v17 (ref), l_v1746_4 (ref)
            local l_l_l_v1742_5_1_4 = l_l_v1742_5_1;
            local v2761 = "";
            local v2762 = "hs";
            local v2763 = v137.measure_text(l_l_l_v1742_5_1_4, v2761, v2762);
            local v2764 = v2756:clone();
            v2764.x = v17(v2764.x - v2763.x * 0.5 * (1 - l_v1746_4.value));
            local v2765 = v2757:clone();
            v2765.a = v2765.a * v2758 * v2759;
            v137.text(l_l_l_v1742_5_1_4, v2764, v2765, v2761, v2762);
            v2756.y = v2756.y + v17((v2763.y - 1) * v2758);
        end;
        l_v1759_1 = function(v2766)
            -- upvalues: l_v1302_7 (ref), l_v1202_7 (ref), l_l_match_0_7 (ref), v509 (ref), l_l_angles_0_6 (ref), l_v1750_5 (ref), l_v1745_5 (ref), l_v1746_4 (ref), l_v1747_5 (ref), l_v1748_5 (ref), l_v1749_5 (ref)
            local v2767 = v2766:is_alive();
            local l_m_bIsScoped_1 = v2766.m_bIsScoped;
            local v2769 = l_v1302_7(l_v1202_7);
            local v2770 = l_v1302_7(l_l_match_0_7);
            local v2771 = v509.get(l_l_angles_0_6);
            local v2772 = v2771 ~= nil and v2771.active;
            local v2773 = 0;
            if v2767 then
                v2773 = 1;
                local v2774 = v2766:get_player_weapon();
                if l_m_bIsScoped_1 or v2774 ~= nil and l_v1750_5(v2774) then
                    v2773 = 0.5;
                end;
            end;
            l_v1745_5(0.05, v2773);
            l_v1746_4(0.05, l_m_bIsScoped_1);
            l_v1747_5(0.05, v2772);
            l_v1748_5(0.05, v2769);
            l_v1749_5(0.05, v2770);
        end;
        l_v1760_1 = function()
            -- upvalues: v137 (ref), l_v1201_6 (ref), l_v1746_4 (ref), l_v1745_5 (ref), l_v1752_3 (ref), l_v1753_3 (ref), l_v1754_2 (ref), l_v1755_3 (ref), l_v1747_5 (ref), l_v1748_5 (ref), l_v1749_5 (ref)
            local v2775 = v137.screen_size() * 0.5;
            local v2776 = l_v1201_6.color:get("Accent")[1]:clone();
            local v2777 = l_v1201_6.color:get("Secondary")[1]:clone();
            v2775.x = v2775.x + math.floor(0.5 + 10 * l_v1746_4.value);
            v2775.y = v2775.y + l_v1201_6.offset:get();
            v2776.a = v2776.a * l_v1745_5.value;
            v2777.a = v2777.a * l_v1745_5.value;
            l_v1752_3(v2775, v2776, v2777);
            l_v1753_3(v2775, v2776, v2777, l_v1745_5.value);
            l_v1754_2(v2775, color(250, 250, 250, 125), l_v1745_5.value);
            l_v1755_3(v2775, v2776, l_v1747_5.value, l_v1748_5.value, l_v1749_5.value, l_v1745_5.value);
        end;
        l_v1305_10.on_render = function()
            -- upvalues: l_v1759_1 (ref), l_v1745_5 (ref), l_v1760_1 (ref)
            local v2778 = entity.get_local_player();
            if v2778 == nil then
                return;
            else
                l_v1759_1(v2778);
                if l_v1745_5.value > 0 then
                    l_v1760_1();
                end;
                return;
            end;
        end;
    end;
    l_v1308_10 = {};
    l_v1742_5 = string.format("%s.%s", v22.name:upper(), "LUA");
    v1743 = {
        [1] = {
            [1] = "\226\157\133", 
            [2] = -7, 
            [3] = 6, 
            [4] = 0.7
        }, 
        [2] = {
            [1] = "\226\157\133", 
            [2] = -2, 
            [3] = 10, 
            [4] = 0.5
        }, 
        [3] = {
            [1] = "\226\139\134", 
            [2] = -4, 
            [3] = 2, 
            [4] = 0.2
        }, 
        [4] = {
            [1] = "\226\139\134", 
            [2] = 0, 
            [3] = 9, 
            [4] = 0.2
        }, 
        [5] = {
            [1] = "\226\157\134", 
            [2] = -4, 
            [3] = 5, 
            [4] = 0.4
        }, 
        [6] = {
            [1] = "\226\157\133", 
            [2] = 0, 
            [3] = 6, 
            [4] = 0.7
        }, 
        [7] = {
            [1] = "\226\139\134", 
            [2] = -2, 
            [3] = 2, 
            [4] = 0.3
        }, 
        [8] = {
            [1] = "\226\157\134", 
            [2] = -3, 
            [3] = 8, 
            [4] = 0.4
        }
    };
    v1744 = l_smoothy_0.new(0);
    v1745 = l_smoothy_0.new(0);
    v1746 = l_smoothy_0.new(0);
    v1747 = l_smoothy_0.new(0);
    v1748 = l_smoothy_0.new(0);
    v1749 = function(v2779)
        local v2780 = v2779:get_weapon_info();
        if v2780 == nil then
            return false;
        else
            return v2780.weapon_type == 9;
        end;
    end;
    v1750 = function()
        -- upvalues: v152 (ref), v25 (ref)
        if not v152.is_onground then
            return "AIR";
        elseif v152.is_crouched then
            return "CROUCH";
        elseif v152.is_moving then
            if v25.antiaim.misc.slow_walk:get() then
                return "SLOWING";
            else
                return "MOVING";
            end;
        else
            return "STAND";
        end;
    end;
    do
        local l_l_v1742_5_2, l_v1743_8, l_v1744_6, l_v1745_6, l_v1746_5, l_v1747_6, l_v1748_6, l_v1749_6, l_v1750_6, l_v1751_5, l_v1752_4, l_v1753_4, l_v1754_3, l_v1755_4, l_v1756_1 = l_v1742_5, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v1755, v1756;
        l_v1751_5 = function(v2796, v2797, v2798)
            -- upvalues: l_v1743_8 (ref), v137 (ref), v17 (ref), l_v1745_6 (ref), v147 (ref)
            local v2799 = "";
            local v2800 = -globals.realtime;
            local v2801 = v2796.x + 4;
            local l_y_3 = v2796.y;
            local v2803 = {};
            local v2804 = #l_v1743_8;
            local v2805 = 0;
            local v2806 = 0;
            for v2807 = 1, v2804 do
                local v2808 = l_v1743_8[v2807];
                local v2809 = v137.measure_text(1, v2799, v2808[1]);
                v2805 = v2805 + (v2809.x + v2808[2]);
                v2806 = math.max(v2806, v2809.y + v2808[3]);
                v2803[v2807] = v2809;
            end;
            v2801 = v17(v2801 - v2805 * 0.5 * (1 - l_v1745_6.value));
            local v2810 = 0;
            local v2811 = 1 / (v2804 - 1);
            for v2812 = 1, v2804 do
                local v2813 = l_v1743_8[v2812];
                local v2814 = v2803[v2812];
                local v2815 = v2813[1];
                local v2816 = v2813[2];
                local v2817 = v2813[3];
                local v2818 = v2813[4];
                local v2819 = (math.sin(v2800 * v2818) * 0.5 + 0.5) * 0.5 + 0.3;
                v2815 = v147.gradient(v2815, (v2800 + v2810) * 1.25, v2797, v2798);
                local v2820 = vector(v2801 + v2816, l_y_3 + v2817);
                local v2821 = color(200, 200, 200, v2797.a);
                v2821.a = v2821.a * v2819;
                v137.text(1, v2820, v2821, v2799, v2815);
                v2801 = v2801 + v2814.x + v2816;
                v2810 = v2810 + v2811;
            end;
            v2796.y = v2796.y + v2806 * 0.95;
        end;
        l_v1752_4 = function(v2822, v2823, v2824, _)
            -- upvalues: l_l_v1742_5_2 (ref), v137 (ref), v17 (ref), l_v1745_6 (ref), l_v1201_6 (ref), v147 (ref)
            local v2826 = 2;
            local v2827 = "";
            local l_l_l_v1742_5_2_0 = l_l_v1742_5_2;
            local v2829 = v137.measure_text(v2826, v2827, l_l_l_v1742_5_2_0);
            local v2830 = v2822:clone();
            v2830.x = v17(v2830.x - v2829.x * 0.5 * (1 - l_v1745_6.value));
            local v2831 = v2824:clone();
            if l_v1201_6.animation:get() then
                l_l_l_v1742_5_2_0 = v147.gradient(l_l_l_v1742_5_2_0, -globals.realtime * 1.25, v2823, v2824);
            end;
            v137.text(v2826, v2830, v2831, v2827, l_l_l_v1742_5_2_0);
            v2822.y = v2822.y + v17(v2829.y - 1);
        end;
        l_v1753_4 = function(v2832, v2833, v2834)
            -- upvalues: l_v1750_6 (ref), v137 (ref), v17 (ref), l_v1745_6 (ref)
            local v2835 = 2;
            local v2836 = "";
            local v2837 = l_v1750_6();
            local v2838 = v137.measure_text(v2835, v2836, v2837);
            local v2839 = "\226\140\158";
            local v2840 = "\226\140\159";
            local v2841 = v137.measure_text(v2835, v2836, v2839);
            local v2842 = v137.measure_text(v2835, v2836, v2840);
            local v2843 = v2838:clone();
            v2843.x = v2843.x + v2841.x;
            v2843.x = v2843.x + v2842.x;
            local v2844 = v2832:clone();
            v2844.x = v17(v2844.x - v2843.x * 0.5 * (1 - l_v1745_6.value));
            local v2845 = v2833:clone();
            v2845.a = v2845.a * v2834;
            v137.text(v2835, v2844 + vector(0, -1), v2845, v2836, v2839);
            v2844.x = v2844.x + v2841.x;
            v137.text(v2835, v2844, v2845, v2836, v2837);
            v2844.x = v2844.x + v2838.x;
            v137.text(v2835, v2844 + vector(0, -1), v2845, v2836, v2840);
            v2832.y = v2832.y + v2843.y + 2;
        end;
        l_v1754_3 = function(v2846, v2847, v2848, v2849, v2850, v2851)
            -- upvalues: v137 (ref), v17 (ref), l_v1745_6 (ref)
            local v2852 = 2;
            local v2853 = "";
            local v2854 = 1;
            local v2855 = "DMG";
            local v2856 = "DT";
            local v2857 = "HS";
            local v2858 = v137.measure_text(v2852, v2853, v2855);
            local v2859 = v137.measure_text(v2852, v2853, v2856);
            local v2860 = v137.measure_text(v2852, v2853, v2857);
            local v2861 = vector(v2858.x + v2854 + v2859.x + v2854 + v2860.x, math.max(v2858.y, v2859.y, v2860.y));
            local v2862 = v2846:clone();
            v2862.x = v17(v2862.x - v2861.x * 0.5 * (1 - l_v1745_6.value));
            local v2863 = color(250, 250, 250, 175);
            local v2864 = color(250, 250, 250, 175);
            local v2865 = color(250, 250, 250, 175);
            local v2866 = color(255, 0, 50, 255):lerp(v2847, rage.exploit:get());
            v2863 = v2863:lerp(v2847, v2848);
            v2864 = v2864:lerp(v2866, v2849);
            v2865 = v2865:lerp(v2847, v2850);
            v2863.a = v2863.a * v2851;
            v2864.a = v2864.a * v2851;
            v2865.a = v2865.a * v2851;
            v137.text(v2852, v2862, v2863, v2853, v2855);
            v2862.x = v2862.x + v2858.x + v2854;
            v137.text(v2852, v2862, v2864, v2853, v2856);
            v2862.x = v2862.x + v2859.x + v2854;
            v137.text(v2852, v2862, v2865, v2853, v2857);
            v2846.y = v2846.y + v2861.y;
        end;
        l_v1755_4 = function(v2867)
            -- upvalues: l_v1302_7 (ref), l_v1202_7 (ref), l_l_match_0_7 (ref), v509 (ref), l_l_angles_0_6 (ref), l_v1749_6 (ref), l_v1744_6 (ref), l_v1745_6 (ref), l_v1746_5 (ref), l_v1747_6 (ref), l_v1748_6 (ref)
            local v2868 = v2867:is_alive();
            local l_m_bIsScoped_2 = v2867.m_bIsScoped;
            local v2870 = l_v1302_7(l_v1202_7);
            local v2871 = l_v1302_7(l_l_match_0_7);
            local v2872 = v509.get(l_l_angles_0_6);
            local v2873 = v2872 ~= nil and v2872.active;
            local v2874 = 0;
            if v2868 then
                v2874 = 1;
                local v2875 = v2867:get_player_weapon();
                if l_m_bIsScoped_2 or v2875 ~= nil and l_v1749_6(v2875) then
                    v2874 = 0.5;
                end;
            end;
            l_v1744_6(0.05, v2874);
            l_v1745_6(0.05, l_m_bIsScoped_2);
            l_v1746_5(0.05, v2873);
            l_v1747_6(0.05, v2870);
            l_v1748_6(0.05, v2871);
        end;
        l_v1756_1 = function()
            -- upvalues: v137 (ref), l_v1201_6 (ref), l_v1745_6 (ref), l_v1744_6 (ref), l_v1751_5 (ref), l_v1752_4 (ref), l_v1753_4 (ref), l_v1754_3 (ref), l_v1746_5 (ref), l_v1747_6 (ref), l_v1748_6 (ref)
            local v2876 = v137.screen_size() * 0.5;
            local v2877 = l_v1201_6.color:get("Accent")[1]:clone();
            local v2878 = l_v1201_6.color:get("Secondary")[1]:clone();
            v2876.x = v2876.x + math.floor(0.5 + 10 * l_v1745_6.value);
            v2876.y = v2876.y + l_v1201_6.offset:get();
            v2877.a = v2877.a * l_v1744_6.value;
            v2878.a = v2878.a * l_v1744_6.value;
            l_v1751_5(v2876, v2877, v2878);
            l_v1752_4(v2876, v2877, v2878, l_v1744_6.value);
            l_v1753_4(v2876, color(250, 250, 250, 125), l_v1744_6.value);
            l_v1754_3(v2876, v2877, l_v1746_5.value, l_v1747_6.value, l_v1748_6.value, l_v1744_6.value);
        end;
        l_v1308_10.on_render = function()
            -- upvalues: l_v1755_4 (ref), l_v1744_6 (ref), l_v1756_1 (ref)
            local v2879 = entity.get_local_player();
            if v2879 == nil then
                return;
            else
                l_v1755_4(v2879);
                if l_v1744_6.value > 0 then
                    l_v1756_1();
                end;
                return;
            end;
        end;
    end;
    l_v1303_9.on_render = v21("screen_indicators.alternative.on_render", l_v1303_9.on_render);
    l_v1305_10.on_render = v21("screen_indicators.new.on_render", l_v1305_10.on_render);
    l_v1308_10.on_render = v21("screen_indicators.modern.on_render", l_v1308_10.on_render);
    l_v1742_5 = function(v2880)
        -- upvalues: l_v1303_9 (ref), l_v1305_10 (ref), l_v1308_10 (ref)
        events.render(l_v1303_9.on_render, v2880 == "Alternative");
        events.render(l_v1305_10.on_render, v2880 == "New");
        events.render(l_v1308_10.on_render, v2880 == "Modern");
    end;
    v1743 = nil;
    v1744 = function(v2881)
        -- upvalues: l_v1742_5 (ref)
        l_v1742_5(v2881:get());
    end;
    do
        local l_v1744_7 = v1744;
        v1745 = function(v2883)
            -- upvalues: l_v1742_5 (ref), l_v1201_6 (ref), l_v1744_7 (ref)
            local v2884 = v2883:get();
            if not v2884 then
                l_v1742_5(nil);
            end;
            if v2884 then
                l_v1201_6.style:set_callback(l_v1744_7, true);
            else
                l_v1201_6.style:unset_callback(l_v1744_7);
            end;
        end;
        l_v1201_6.enabled:set_callback(v1745, true);
    end;
end;
v5("visuals_manual_arrows");
v1201 = nil;
v1202 = v151.visuals.manual_arrows;
l_match_0 = v151.antiaim.settings.manual_yaw;
v1289 = 40;
l_angles_0 = function()
    return math.abs(globals.realtime % 2 - 1);
end;
do
    local l_v1202_8, l_l_match_0_8, l_v1289_6, l_l_angles_0_7, l_v1291_8, l_v1301_8, l_v1302_8, l_v1303_10, l_v1305_11, l_v1308_11, l_v1742_6 = v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742;
    l_v1291_8 = function()
        -- upvalues: l_l_match_0_8 (ref)
        return l_l_match_0_8.select:get();
    end;
    l_v1301_8 = function(v2896)
        -- upvalues: l_v1202_8 (ref), v24 (ref), l_l_angles_0_7 (ref)
        local v2897 = l_v1202_8.color:get("Active")[1];
        if v2896 ~= false and l_v1202_8.animation:get() then
            v2897.a = v2897.a * v24.lerp(0.33, 1, l_l_angles_0_7());
        end;
        return v2897;
    end;
    l_v1302_8 = function()
        -- upvalues: l_v1202_8 (ref)
        return l_v1202_8.color:get("Inactive")[1];
    end;
    l_v1303_10 = {};
    l_v1305_11 = v137.load_font("Verdana", 20, "abd");
    do
        local l_l_v1305_11_0 = l_v1305_11;
        l_v1303_10.render = function()
            -- upvalues: v137 (ref), l_v1291_8 (ref), l_v1301_8 (ref), l_v1302_8 (ref), l_l_v1305_11_0 (ref), l_v1289_6 (ref)
            local v2899 = entity.get_local_player();
            if v2899 == nil or not v2899:is_alive() then
                return;
            else
                local v2900 = v137.screen_size();
                local v2901 = l_v1291_8();
                local v2902 = l_v1301_8();
                local v2903 = l_v1302_8();
                local _ = nil;
                local v2905 = "r";
                local v2906 = "<";
                local v2907 = v137.measure_text(l_l_v1305_11_0, v2905, v2906);
                local v2908 = vector(v2900.x * 0.5 - l_v1289_6 + 1, v2900.y * 0.5 - v2907.y * 0.5 - 1);
                local v2909 = v2901 == "Left" and v2902 or v2903;
                v137.text(l_l_v1305_11_0, v2908, v2909, v2905, v2906);
                v2905 = nil;
                v2906 = "";
                v2907 = ">";
                v2908 = v137.measure_text(l_l_v1305_11_0, v2906, v2907);
                v2909 = vector(v2900.x * 0.5 + l_v1289_6, v2900.y * 0.5 - v2908.y * 0.5 - 1);
                local v2910 = v2901 == "Right" and v2902 or v2903;
                v137.text(l_l_v1305_11_0, v2909, v2910, v2906, v2907);
                return;
            end;
        end;
    end;
    l_v1305_11 = {};
    l_v1308_11 = v137.load_font("Verdana", 27, "ab");
    do
        local l_l_v1308_11_0 = l_v1308_11;
        l_v1305_11.render = function()
            -- upvalues: v137 (ref), l_v1291_8 (ref), l_v1301_8 (ref), l_v1302_8 (ref), l_l_v1308_11_0 (ref), l_v1289_6 (ref)
            local v2912 = entity.get_local_player();
            if v2912 == nil or not v2912:is_alive() then
                return;
            else
                local v2913 = v137.screen_size();
                local v2914 = l_v1291_8();
                local v2915 = l_v1301_8();
                local v2916 = l_v1302_8();
                local _ = nil;
                local v2918 = "r";
                local v2919 = "\226\174\156";
                local v2920 = l_l_v1308_11_0.height + 4;
                local v2921 = v137.measure_text(l_l_v1308_11_0, v2918, v2919);
                local v2922 = vector(v2913.x * 0.5 - l_v1289_6 + 1, v2913.y * 0.5 - v2921.y * 0.5 - 1);
                local v2923 = vector(v2922.x - v2921.x * 0.5, v2913.y * 0.5);
                local v2924 = v2914 == "Left" and v2915 or v2916;
                local v2925 = v2914 == "Left" and v2915 or v2916;
                v137.shadow(v2923, v2923, v2925, v2920);
                v137.text(l_l_v1308_11_0, v2922, v2924, v2918, v2919);
                v2918 = nil;
                v2919 = "";
                v2920 = "\226\174\158";
                v2921 = l_l_v1308_11_0.height + 4;
                v2922 = v137.measure_text(l_l_v1308_11_0, v2919, v2920);
                v2923 = vector(v2913.x * 0.5 + l_v1289_6, v2913.y * 0.5 - v2922.y * 0.5 - 1);
                v2924 = vector(v2923.x + v2922.x * 0.5, v2913.y * 0.5);
                v2925 = v2914 == "Right" and v2915 or v2916;
                local v2926 = v2914 == "Right" and v2915 or v2916;
                v137.shadow(v2924, v2924, v2926, v2921);
                v137.text(l_l_v1308_11_0, v2923, v2925, v2919, v2920);
                return;
            end;
        end;
    end;
    l_v1308_11 = {
        render = function()
            -- upvalues: v137 (ref), l_v1291_8 (ref), l_v1301_8 (ref), l_v1302_8 (ref), l_v1289_6 (ref)
            local v2927 = entity.get_local_player();
            if v2927 == nil or not v2927:is_alive() then
                return;
            else
                local v2928 = v137.screen_size();
                local v2929 = l_v1291_8();
                local v2930 = l_v1301_8();
                local v2931 = l_v1302_8();
                local _ = nil;
                local v2933 = vector(v2928.x * 0.5 - l_v1289_6 + 1, v2928.y * 0.5);
                local v2934 = vector(v2933.x, v2933.y - 8);
                local v2935 = vector(v2933.x - 10, v2933.y);
                local v2936 = vector(v2933.x, v2933.y + 8);
                local v2937 = v2929 == "Left" and v2930 or v2931;
                v137.poly(v2937, v2934, v2935, v2936);
                v2933 = nil;
                v2934 = vector(v2928.x * 0.5 + l_v1289_6, v2928.y * 0.5);
                v2935 = vector(v2934.x, v2934.y - 8);
                v2936 = vector(v2934.x + 10, v2934.y);
                v2937 = vector(v2934.x, v2934.y + 8);
                local v2938 = v2929 == "Right" and v2930 or v2931;
                v137.poly(v2938, v2935, v2936, v2937);
                return;
            end;
        end
    };
    l_v1303_10.render = v21("manual_arrows.classic.render", l_v1303_10.render);
    l_v1305_11.render = v21("manual_arrows.modern.render", l_v1305_11.render);
    l_v1308_11.render = v21("manual_arrows.triangle.render", l_v1308_11.render);
    l_v1742_6 = function(v2939)
        -- upvalues: l_v1303_10 (ref), l_v1305_11 (ref), l_v1308_11 (ref)
        events.render(l_v1303_10.render, v2939 == "Classic");
        events.render(l_v1305_11.render, v2939 == "Modern");
        events.render(l_v1308_11.render, v2939 == "Triangle");
    end;
    v1743 = nil;
    v1744 = function(v2940)
        -- upvalues: l_v1742_6 (ref)
        l_v1742_6(v2940:get());
    end;
    do
        local l_v1744_8 = v1744;
        v1745 = function(v2942)
            -- upvalues: l_v1742_6 (ref), l_v1202_8 (ref), l_v1744_8 (ref)
            local v2943 = v2942:get();
            if not v2943 then
                l_v1742_6(nil);
            end;
            if v2943 then
                l_v1202_8.style:set_callback(l_v1744_8, true);
            else
                l_v1202_8.style:unset_callback(l_v1744_8);
            end;
        end;
        l_v1202_8.enabled:set_callback(v1745, true);
    end;
end;
v5("visuals_damage_indicator");
v1202 = nil;
l_match_0 = v151.visuals.damage_indicator;
v1289 = {
    Default = 1, 
    Bold = 4, 
    Pixel = 2
};
l_angles_0 = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage");
v1291 = 0;
v1301 = l_angles_0:get();
v1302 = "";
v1303 = nil;
v1305 = v137.screen_size();
v1308 = v1305 * 0.5;
v1742 = vector(10, 10);
v1743 = v1308 + vector(8, -8 - v1742.y);
v1303 = v146.new("damage_indicator", v1743, v1742, {
    border = {
        vector(0, 0), 
        v1305:clone()
    }
});
do
    local l_l_match_0_9, l_v1289_7, l_l_angles_0_8, l_v1291_9, l_v1301_9, l_v1302_9, l_v1303_11, l_v1305_12, l_v1308_12 = l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308;
    l_v1303_11.update = function(_)
        -- upvalues: l_v1291_9 (ref)
        return l_v1291_9;
    end;
    l_v1305_12 = function()
        -- upvalues: l_l_angles_0_8 (ref), l_l_match_0_9 (ref), l_v1301_9 (ref), l_play_0 (ref), v17 (ref)
        local v2954 = l_l_angles_0_8:get();
        if v2954 == 0 then
            return "AUTO";
        else
            if l_l_match_0_9.animation:get() then
                l_v1301_9 = l_play_0.interp(l_v1301_9, v2954, 0.035);
                v2954 = v17(l_v1301_9);
            end;
            if v2954 > 100 then
                return string.format("+%d", v2954 - 100);
            else
                return v2954;
            end;
        end;
    end;
    l_v1308_12 = v21("visuals_damage_indicator.on_render", function()
        -- upvalues: l_v1289_7 (ref), l_l_match_0_9 (ref), v509 (ref), l_l_angles_0_8 (ref), l_v1291_9 (ref), l_play_0 (ref), l_v1302_9 (ref), l_v1305_12 (ref), l_v1303_11 (ref), v137 (ref)
        local v2955 = entity.get_local_player();
        if v2955 == nil or not v2955:is_alive() then
            return;
        else
            local v2956 = l_v1289_7[l_l_match_0_9.font:get()];
            if v2956 == nil then
                return;
            else
                local v2957 = l_l_match_0_9.color:get();
                local v2958 = true;
                local v2959 = true;
                if l_l_match_0_9.when_active:get() then
                    local v2960 = v509.get(l_l_angles_0_8);
                    v2958 = v2960 ~= nil and v2960.active;
                    if not v2958 then
                        v2959 = false;
                    end;
                end;
                l_v1291_9 = l_play_0.interp(l_v1291_9, v2958, 0.05);
                if l_v1291_9 <= 0 then
                    return;
                else
                    v2957.a = v2957.a * l_v1291_9;
                    if v2959 then
                        l_v1302_9 = l_v1305_12();
                    end;
                    local v2961 = l_v1303_11:get_drag_position();
                    local v2962 = "";
                    local l_l_v1302_9_0 = l_v1302_9;
                    local v2964 = v137.measure_text(v2956, v2962, l_l_v1302_9_0);
                    v137.text(v2956, v2961 + vector(1, 0), v2957, v2962, l_l_v1302_9_0);
                    l_v1303_11.size = v2964:clone();
                    l_v1303_11();
                    return;
                end;
            end;
        end;
    end);
    v1742 = nil;
    v1743 = function(v2965)
        -- upvalues: l_v1308_12 (ref)
        events.render(l_v1308_12, v2965:get());
    end;
    l_l_match_0_9.enabled:set_callback(v1743, true);
end;
v5("visuals_hitchance_indicator");
l_match_0 = nil;
v1289 = v151.visuals.hitchance_indicator;
l_angles_0 = {
    Default = 1, 
    Bold = 4, 
    Pixel = 2
};
v1291 = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance");
v1301 = v1291:get();
v1302 = nil;
v1303 = v137.screen_size();
v1305 = v1303 * 0.5;
v1308 = vector(10, 10);
v1742 = v1305 + vector(-8 - v1308.x, -8 - v1308.y);
v1302 = v146.new("hitchance_indicator", v1742, v1308, {
    border = {
        vector(0, 0), 
        v1303:clone()
    }
});
do
    local l_v1289_8, l_l_angles_0_9, l_v1291_10, l_v1301_10, l_v1302_10, l_v1303_12, l_v1305_13, l_v1308_13 = v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308;
    l_v1303_12 = function()
        -- upvalues: l_v1291_10 (ref)
        local v2974 = l_v1291_10:get_override();
        if v2974 == nil then
            v2974 = l_v1291_10:get();
        end;
        return v2974;
    end;
    l_v1305_13 = function()
        -- upvalues: l_v1303_12 (ref), l_v1289_8 (ref), l_v1301_10 (ref), l_play_0 (ref), v17 (ref)
        local v2975 = l_v1303_12();
        if l_v1289_8.animation:get() then
            l_v1301_10 = l_play_0.interp(l_v1301_10, v2975, 0.035);
            v2975 = v17(l_v1301_10);
        end;
        return v2975;
    end;
    l_v1308_13 = v21("visuals_hitchance_indicator.on_render", function()
        -- upvalues: l_l_angles_0_9 (ref), l_v1289_8 (ref), l_v1302_10 (ref), l_v1305_13 (ref), v137 (ref)
        local v2976 = entity.get_local_player();
        if v2976 == nil or not v2976:is_alive() then
            return;
        else
            local v2977 = l_l_angles_0_9[l_v1289_8.font:get()];
            if v2977 == nil then
                return;
            else
                local v2978 = l_v1289_8.color:get();
                local v2979 = l_v1302_10:get_drag_position();
                local v2980 = "";
                local v2981 = l_v1305_13();
                local v2982 = v137.measure_text(v2977, v2980, v2981);
                v137.text(v2977, v2979, v2978, v2980, v2981);
                l_v1302_10.size = v2982:clone();
                l_v1302_10();
                return;
            end;
        end;
    end);
    v1742 = nil;
    v1743 = function(v2983)
        -- upvalues: l_v1308_13 (ref)
        events.render(l_v1308_13, v2983:get());
    end;
    l_v1289_8.enabled:set_callback(v1743, true);
end;
v5("visuals_velocity_warning");
v1289 = nil;
l_angles_0 = v151.visuals.velocity_warning;
v1291 = nil;
v1301 = vector(0.5, 0.2);
v1291 = v49.new("velocity_warning", v1301:unpack());
v1291:set_anchor(vector(0.5, 0.5));
v1301 = function(v2984)
    if v2984 == nil or not v2984:is_alive() then
        return 1;
    else
        return v2984.m_flVelocityModifier;
    end;
end;
v1302 = {};
v1303 = v137.load_font("museo500", 16, "a");
v1305 = 10;
v1308 = 10;
v1742 = 8;
v1743 = 0;
do
    local l_l_angles_0_10, l_v1291_11, l_v1301_11, l_v1302_11 = l_angles_0, v1291, v1301, v1302;
    v1744 = function(v2989)
        -- upvalues: l_l_angles_0_10 (ref)
        local v2990 = color();
        local v2991 = l_l_angles_0_10.color:get();
        local v2992 = "velocity";
        local v2993 = string.format("%d%%", v2989 * 100);
        return string.format("\a%s%s", v2990:to_hex(), v2992) .. "   " .. string.format("\a%s%s", v2991:to_hex(), v2993);
    end;
    v1745 = function(v2994)
        if v2994 <= 0.33 then
            return color(230, 127, 127, 255);
        elseif v2994 <= 0.5 then
            return color(230, 170, 127, 255);
        else
            return color(255, 255, 255, 255);
        end;
    end;
    do
        local l_v1303_13, l_v1305_14, l_v1742_7, l_v1743_9, l_v1744_9, l_v1745_7 = v1303, v1305, v1742, v1743, v1744, v1745;
        l_v1302_11.on_render = function()
            -- upvalues: l_v1291_11 (ref), l_v1301_11 (ref), l_v1744_9 (ref), l_v1743_9 (ref), l_play_0 (ref), v137 (ref), l_v1303_13 (ref), l_v1305_14 (ref), l_v1742_7 (ref), l_l_angles_0_10 (ref), l_v1745_7 (ref)
            local v3001 = entity.get_local_player();
            local v3002 = l_v1291_11.pos:clone();
            local v3003 = l_v1301_11(v3001);
            local v3004 = l_v1744_9(v3003);
            local v3005 = v3003 < 1 or ui.get_alpha() > 0;
            l_v1743_9 = l_play_0.interp(l_v1743_9, v3005, 0.05);
            if l_v1743_9 <= 0 then
                return;
            else
                local v3006 = ui.get_icon("triangle-exclamation");
                local v3007 = v137.measure_text(l_v1303_13, nil, v3006);
                local v3008 = v137.measure_text(l_v1303_13, nil, v3004);
                local v3009 = vector(36, 36);
                local v3010 = vector(v3008.x + l_v1305_14 * 2, 36);
                local v3011 = vector(v3009.x + v3010.x + l_v1742_7, math.max(v3009.y, v3010.y));
                local v3012 = 10;
                local v3013 = l_l_angles_0_10.color:get();
                local v3014 = l_v1745_7(v3003);
                local v3015 = color(255, 255, 255, 255);
                v3013.r = v3013.r * 0.1;
                v3013.g = v3013.g * 0.1;
                v3013.b = v3013.b * 0.1;
                v3013.a = 80 * l_v1743_9;
                v3014.a = v3014.a * l_v1743_9;
                v3015.a = v3015.a * l_v1743_9;
                v137.blur(v3002, v3002 + v3009, 1.8, l_v1743_9, v3012);
                v137.rect(v3002, v3002 + v3009, v3013, v3012);
                v137.text(l_v1303_13, v3002 + (v3009 - v3007) / 2, v3014, nil, v3006);
                v3002.x = v3002.x + v3009.x + l_v1742_7;
                v137.blur(v3002, v3002 + v3010, 1.8, l_v1743_9, v3012);
                v137.rect(v3002, v3002 + v3010, v3013, v3012);
                local _ = nil;
                local v3017 = v3002:clone();
                local v3018 = vector(v3010.x, v3012);
                v3017.y = v3017.y + v3010.y - v3018.y;
                local v3019 = l_l_angles_0_10.color:get();
                v3019.a = v3019.a * l_v1743_9;
                local v3020 = vector(v3017.x, v3017.y + v3018.y - 3);
                local v3021 = vector(v3017.x + v3018.x * v3003, v3017.y + v3018.y);
                v137.push_clip_rect(v3020, v3021);
                v137.rect(v3017, v3017 + v3018, v3019, {
                    [1] = 0, 
                    [2] = 0, 
                    [3] = v3012, 
                    [4] = v3012
                });
                v137.pop_clip_rect();
                v137.text(l_v1303_13, v3002 + (v3010 - v3008) / 2, v3015, nil, v3004);
                l_v1291_11:set_size(v3011);
                l_v1291_11:update();
                return;
            end;
        end;
    end;
    l_v1302_11.on_render = v21("visuals_velocity_warning.new.on_render", l_v1302_11.on_render);
    v1303 = nil;
    v1305 = function(v3022)
        -- upvalues: l_v1302_11 (ref)
        events.render(l_v1302_11.on_render, v3022:get());
    end;
    l_l_angles_0_10.enabled:set_callback(v1305, true);
end;
v5("visuals_aspect_ratio");
l_angles_0 = nil;
v1291 = v151.visuals.aspect_ratio;
v1301 = cvar.r_aspectratio;
do
    local l_v1291_12, l_v1301_12, l_v1302_12, l_v1303_14, l_v1305_15 = v1291, v1301, v1302, v1303, v1305;
    l_v1302_12 = function()
        -- upvalues: l_v1301_12 (ref)
        l_v1301_12:float(tonumber(l_v1301_12:string()), true);
    end;
    l_v1303_14 = function(v3028)
        -- upvalues: l_v1301_12 (ref)
        l_v1301_12:float(v3028, true);
    end;
    l_v1305_15 = v21("visuals_aspect_ratio.on_shutdown", function()
        -- upvalues: l_v1302_12 (ref)
        l_v1302_12();
    end);
    v1308 = nil;
    v1742 = function(v3029)
        -- upvalues: l_v1303_14 (ref)
        l_v1303_14(v3029:get() * 0.01);
    end;
    do
        local l_v1742_8 = v1742;
        v1743 = function(v3031)
            -- upvalues: l_v1302_12 (ref), l_v1291_12 (ref), l_v1742_8 (ref), l_v1305_15 (ref)
            local v3032 = v3031:get();
            if not v3032 then
                l_v1302_12();
            end;
            if v3032 then
                l_v1291_12.value:set_callback(l_v1742_8, true);
            else
                l_v1291_12.value:unset_callback(l_v1742_8);
            end;
            events.shutdown(l_v1305_15, v3032);
        end;
        l_v1291_12.enabled:set_callback(v1743, true);
    end;
end;
v5("visuals_viewmodel");
v1291 = nil;
v1301 = v151.visuals.viewmodel;
v1302 = 0;
v1303 = cvar.cl_righthand;
v1305 = cvar.viewmodel_fov;
v1308 = cvar.viewmodel_offset_x;
v1742 = cvar.viewmodel_offset_y;
v1743 = cvar.viewmodel_offset_z;
v1744 = nil;
v1745 = function(v3033)
    return tonumber(v3033:string());
end;
do
    local l_v1301_13, l_v1302_13, l_v1303_15, l_v1305_16, l_v1308_14, l_v1742_9, l_v1743_10, l_v1744_10, l_v1745_8, l_v1746_6, l_v1747_7, l_v1748_7, l_v1749_7, l_v1750_7 = v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750;
    l_v1746_6 = function(v3048)
        -- upvalues: l_v1303_15 (ref)
        if l_v1303_15:string() == "1" then
            l_v1303_15:int(v3048 and 0 or 1, true);
        else
            l_v1303_15:int(v3048 and 1 or 0, true);
        end;
    end;
    l_v1747_7 = function()
        -- upvalues: l_v1305_16 (ref), l_v1745_8 (ref), l_v1308_14 (ref), l_v1742_9 (ref), l_v1743_10 (ref), l_v1303_15 (ref)
        l_v1305_16:float(l_v1745_8(l_v1305_16), false);
        l_v1308_14:float(l_v1745_8(l_v1308_14), false);
        l_v1742_9:float(l_v1745_8(l_v1742_9), false);
        l_v1743_10:float(l_v1745_8(l_v1743_10), false);
        l_v1303_15:int(l_v1303_15:string() == "1" and 1 or 0, false);
    end;
    l_v1748_7 = function()
        -- upvalues: l_v1747_7 (ref)
        l_v1747_7();
    end;
    l_v1749_7 = v21("visuals_viewmodel.on_pre_render", function()
        -- upvalues: l_v1744_10 (ref), l_v1302_13 (ref), l_v1746_6 (ref)
        local v3049 = entity.get_local_player();
        if v3049 == nil then
            return;
        else
            local v3050 = v3049:get_player_weapon();
            if v3050 == nil then
                return;
            else
                local v3051 = v3050:get_weapon_index();
                if l_v1744_10 ~= v3051 then
                    l_v1744_10 = v3051;
                    local v3052 = v3050:get_weapon_info();
                    if v3052 == nil then
                        return;
                    else
                        local v3053 = v3052.weapon_type == l_v1302_13;
                        l_v1746_6(v3053);
                    end;
                end;
                return;
            end;
        end;
    end);
    l_v1748_7 = v21("visuals_viewmodel.on_shutdown", l_v1748_7);
    l_v1750_7 = function(v3054)
        -- upvalues: l_v1747_7 (ref), l_v1749_7 (ref), l_v1748_7 (ref)
        if not v3054 then
            l_v1747_7();
        end;
        if not v3054 then
            events.pre_render(l_v1749_7, v3054);
        end;
        events.shutdown(l_v1748_7, v3054);
    end;
    v1751 = nil;
    v1752 = function(v3055)
        -- upvalues: l_v1305_16 (ref)
        l_v1305_16:float(v3055:get() * 0.01, true);
    end;
    v1753 = function(v3056)
        -- upvalues: l_v1308_14 (ref)
        l_v1308_14:float(v3056:get() * 0.01, true);
    end;
    v1754 = function(v3057)
        -- upvalues: l_v1742_9 (ref)
        l_v1742_9:float(v3057:get() * 0.01, true);
    end;
    v1755 = function(v3058)
        -- upvalues: l_v1743_10 (ref)
        l_v1743_10:float(v3058:get() * 0.01, true);
    end;
    v1756 = function(v3059)
        -- upvalues: l_v1303_15 (ref), l_v1744_10 (ref), l_v1749_7 (ref)
        local v3060 = v3059:get();
        if not v3060 then
            l_v1303_15:int(l_v1303_15:string() == "1" and 1 or 0, false);
        else
            l_v1744_10 = nil;
        end;
        events.pre_render(l_v1749_7, v3060);
    end;
    do
        local l_v1752_5, l_v1753_5, l_v1754_4, l_v1755_5, l_v1756_2 = v1752, v1753, v1754, v1755, v1756;
        v1757 = function(v3066)
            -- upvalues: l_v1301_13 (ref), l_v1752_5 (ref), l_v1753_5 (ref), l_v1754_4 (ref), l_v1755_5 (ref), l_v1756_2 (ref), l_v1750_7 (ref)
            local v3067 = v3066:get();
            if v3067 then
                l_v1301_13.fov:set_callback(l_v1752_5, true);
                l_v1301_13.offset_x:set_callback(l_v1753_5, true);
                l_v1301_13.offset_y:set_callback(l_v1754_4, true);
                l_v1301_13.offset_z:set_callback(l_v1755_5, true);
                l_v1301_13.opposite_knife_hand:set_callback(l_v1756_2, true);
            else
                l_v1301_13.fov:unset_callback(l_v1752_5);
                l_v1301_13.offset_x:unset_callback(l_v1753_5);
                l_v1301_13.offset_y:unset_callback(l_v1754_4);
                l_v1301_13.offset_z:unset_callback(l_v1755_5);
                l_v1301_13.opposite_knife_hand:unset_callback(l_v1756_2);
            end;
            l_v1750_7(v3067);
        end;
        l_v1301_13.enabled:set_callback(v1757, true);
    end;
end;
v5("visuals_custom_scope");
v1301 = nil;
v1302 = v151.visuals.custom_scope;
v1303 = 9.25925925925926E-4;
v1305 = ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay");
v1308 = 0;
do
    local l_v1302_14, l_v1303_16, l_v1305_17, l_v1308_15, l_v1742_10, l_v1743_11, l_v1744_11 = v1302, v1303, v1305, v1308, v1742, v1743, v1744;
    l_v1742_10 = v21("visuals_custom_scope.on_render", function()
        -- upvalues: l_v1308_15 (ref), l_play_0 (ref), v137 (ref), l_v1302_14 (ref), l_v1303_16 (ref), v17 (ref)
        local v3075 = entity.get_local_player();
        if v3075 == nil or not v3075:is_alive() then
            return;
        else
            l_v1308_15 = l_play_0.interp(l_v1308_15, v3075.m_bIsScoped, 0.05);
            if l_v1308_15 == 0 then
                return;
            else
                local v3076 = v137.screen_size();
                local v3077 = v3076 * 0.5;
                local v3078 = l_v1302_14.style:get() == "Rotated";
                local v3079 = l_v1302_14.offset:get() * v3076.y * l_v1303_16;
                local v3080 = l_v1302_14.position:get() * v3076.y * l_v1303_16;
                local v3081 = l_v1302_14.thickness:get();
                local v3082 = l_v1302_14.color:get("Main")[1];
                local v3083 = l_v1302_14.color:get("Edge")[1];
                v3079 = v17(v3079);
                v3080 = v17(v3080);
                v3082.a = v3082.a * l_v1308_15;
                v3083.a = v3083.a * l_v1308_15;
                if v3078 then
                    v137.push_rotation(45);
                end;
                local _ = nil;
                local v3085 = vector(v3077.x + 0.5 - v3081 * 0.5, v3077.y - v3079 + 1);
                local v3086 = vector(v3077.x + 0.5 + v3081 * 0.5, v3077.y - v3080 + 1);
                v137.gradient(v3085, v3086, v3082, v3082, v3083, v3083);
                v3085 = nil;
                v3086 = vector(v3077.x + 0.5 - v3081 * 0.5, v3077.y + v3079);
                local v3087 = vector(v3077.x + 0.5 + v3081 * 0.5, v3077.y + v3080);
                v137.gradient(v3086, v3087, v3082, v3082, v3083, v3083);
                v3086 = nil;
                v3087 = vector(v3077.x - v3079 + 1, v3077.y + 0.5 - v3081 * 0.5);
                local v3088 = vector(v3077.x - v3080 + 1, v3077.y + 0.5 + v3081 * 0.5);
                v137.gradient(v3087, v3088, v3082, v3083, v3082, v3083);
                v3087 = nil;
                v3088 = vector(v3077.x + v3079, v3077.y + 0.5 - v3081 * 0.5);
                local v3089 = vector(v3077.x + v3080, v3077.y + 0.5 + v3081 * 0.5);
                v137.gradient(v3088, v3089, v3082, v3083, v3082, v3083);
                if v3078 then
                    v137.pop_rotation();
                end;
                return;
            end;
        end;
    end);
    on_shutdown = v21("visuals_custom_scope.on_shutdown", on_shutdown);
    l_v1743_11 = function()
        -- upvalues: l_v1305_17 (ref)
        l_v1305_17:override();
    end;
    l_v1744_11 = function(v3090)
        -- upvalues: l_v1305_17 (ref), l_v1742_10 (ref), l_v1743_11 (ref)
        if not v3090 then
            l_v1305_17:override();
        end;
        events.render(l_v1742_10, v3090);
        events.shutdown(l_v1743_11, v3090);
    end;
    v1745 = nil;
    v1746 = function(v3091)
        -- upvalues: l_v1305_17 (ref), l_v1744_11 (ref)
        local v3092 = v3091:get();
        if v3092 then
            l_v1305_17:override("Remove All");
        end;
        l_v1744_11(v3092);
    end;
    l_v1302_14.enabled:set_callback(v1746, true);
end;
v5("visuals_grenade_radius");
v1302 = nil;
v1303 = v151.visuals.grenade_radius;
v1305 = {};
v1308 = {};
v1742 = function(v3093)
    for v3094 in pairs(v3093) do
        v3093[v3094] = nil;
    end;
end;
do
    local l_v1303_17, l_v1305_18, l_v1308_16, l_v1742_11, l_v1743_12, l_v1744_12, l_v1745_9 = v1303, v1305, v1308, v1742, v1743, v1744, v1745;
    l_v1743_12 = function()
        -- upvalues: l_v1305_18 (ref)
        local v3102 = entity.get_entities("CSmokeGrenadeProjectile");
        local v3103 = {};
        for v3104 = 1, #v3102 do
            local v3105 = v3102[v3104];
            if v3105.m_bDidSmokeEffect then
                local v3106 = v3105:get_index();
                if l_v1305_18[v3106] == nil then
                    local v3107 = v3105:get_origin();
                    l_v1305_18[v3106] = {
                        alpha = 0, 
                        radius = 125, 
                        index = v3106, 
                        origin = v3107
                    };
                end;
                v3103[v3106] = true;
            end;
        end;
        for v3108 in pairs(l_v1305_18) do
            if v3103[v3108] == nil then
                l_v1305_18[v3108] = nil;
            end;
        end;
    end;
    l_v1744_12 = function()
        -- upvalues: l_v1308_16 (ref)
        local v3109 = entity.get_entities("CInferno");
        local v3110 = {};
        for v3111 = 1, #v3109 do
            local v3112 = v3109[v3111];
            local l_m_fireCount_0 = v3112.m_fireCount;
            if l_m_fireCount_0 ~= 0 then
                local v3114 = v3112:get_index();
                if l_v1308_16[v3114] == nil then
                    local v3115 = v3112:get_origin();
                    l_v1308_16[v3114] = {
                        fire_count = 0, 
                        radius = 0, 
                        alpha = 0, 
                        index = v3114, 
                        origin = v3115
                    };
                end;
                local v3116 = l_v1308_16[v3114];
                if v3116.fire_count < l_m_fireCount_0 then
                    v3116.fire_count = l_m_fireCount_0;
                    local v3117 = 0;
                    local v3118 = nil;
                    local v3119 = nil;
                    local v3120 = {};
                    local v3121 = 0;
                    for v3122 = 0, l_m_fireCount_0 - 1 do
                        if v3112.m_bFireIsBurning[v3122] then
                            local v3123 = vector(v3112.m_fireXDelta[v3122], v3112.m_fireYDelta[v3122], v3112.m_fireZDelta[v3122]);
                            v3121 = v3121 + 1;
                            v3120[v3121] = v3123;
                        end;
                    end;
                    for v3124 = 1, v3121 do
                        for v3125 = 1, v3121 do
                            local v3126 = v3120[v3124];
                            local v3127 = v3120[v3125];
                            local v3128 = (v3127 - v3126):lengthsqr();
                            if v3117 < v3128 then
                                v3117 = v3128;
                                v3118 = v3126;
                                v3119 = v3127;
                            end;
                        end;
                    end;
                    if v3118 ~= nil and v3119 ~= nil then
                        v3116.radius = math.sqrt(v3117) / 2 + 40;
                    end;
                end;
                v3110[v3114] = true;
            end;
        end;
        for v3129 in pairs(l_v1308_16) do
            if v3110[v3129] == nil then
                l_v1308_16[v3129] = nil;
            end;
        end;
    end;
    l_v1745_9 = function()
        -- upvalues: l_v1303_17 (ref), l_v1305_18 (ref), v137 (ref), l_v1308_16 (ref)
        local l_frametime_4 = globals.frametime;
        local v3131 = l_v1303_17.smoke_color:get();
        local v3132 = l_v1303_17.molotov_color:get();
        for _, v3134 in pairs(l_v1305_18) do
            v3134.alpha = math.min(v3134.alpha + l_frametime_4 * 4, 1);
            local v3135 = v3134.radius * v3134.alpha;
            v137.circle_3d_outline(v3134.origin, v3131, v3135, 0, 1, 1);
        end;
        for _, v3137 in pairs(l_v1308_16) do
            v3137.alpha = math.min(v3137.alpha + l_frametime_4 * 4, 1);
            local v3138 = v3137.radius * v3137.alpha;
            v137.circle_3d_outline(v3137.origin, v3132, v3138, 0, 1, 1);
        end;
    end;
    l_v1743_12 = v21("visuals_grenade_radius.update_smoke_data", l_v1743_12);
    l_v1744_12 = v21("visuals_grenade_radius.update_molotov_data", l_v1744_12);
    l_v1745_9 = v21("visuals_grenade_radius.on_render", l_v1745_9);
    v1746 = nil;
    v1747 = function(v3139)
        -- upvalues: l_v1742_11 (ref), l_v1305_18 (ref), l_v1743_12 (ref)
        local v3140 = v3139:get();
        if not v3140 then
            l_v1742_11(l_v1305_18);
        end;
        events.net_update_start(l_v1743_12, v3140);
    end;
    v1748 = function(v3141)
        -- upvalues: l_v1742_11 (ref), l_v1308_16 (ref), l_v1744_12 (ref)
        local v3142 = v3141:get();
        if not v3142 then
            l_v1742_11(l_v1308_16);
        end;
        events.net_update_start(l_v1744_12, v3142);
    end;
    do
        local l_v1747_8, l_v1748_8 = v1747, v1748;
        v1749 = function(v3145)
            -- upvalues: l_v1742_11 (ref), l_v1305_18 (ref), l_v1308_16 (ref), l_v1743_12 (ref), l_v1744_12 (ref), l_v1303_17 (ref), l_v1747_8 (ref), l_v1748_8 (ref), l_v1745_9 (ref)
            local v3146 = v3145:get();
            if not v3146 then
                l_v1742_11(l_v1305_18);
                l_v1742_11(l_v1308_16);
                events.net_update_start(l_v1743_12, false);
                events.net_update_start(l_v1744_12, false);
            end;
            if v3146 then
                l_v1303_17.smoke:set_callback(l_v1747_8, true);
                l_v1303_17.molotov:set_callback(l_v1748_8, true);
            else
                l_v1303_17.smoke:unset_callback(l_v1747_8);
                l_v1303_17.molotov:unset_callback(l_v1748_8);
            end;
            events.render(l_v1745_9, v3146);
        end;
        l_v1303_17.enabled:set_callback(v1749, true);
    end;
end;
v5("misc_clantag");
v1303 = nil;
v1305 = v151.visuals.clantag;
v1308 = ui.find("Miscellaneous", "Main", "In-Game", "Clan Tag");
v1742 = {
    [1] = "\226\157\132", 
    [2] = "\226\157\132 f", 
    [3] = "\226\157\132 fr", 
    [4] = "\226\157\132 fro", 
    [5] = "\226\157\132 fros", 
    [6] = "\226\157\132 frost", 
    [7] = "\226\157\132 frost.", 
    [8] = "\226\157\132 frost.l", 
    [9] = "\226\157\132 frost.lu", 
    [10] = "\226\157\132 frost.lua", 
    [11] = "\226\157\132 frost.lua", 
    [12] = "\226\157\132 frost.lua", 
    [13] = "\226\157\132 frost.lua", 
    [14] = "\226\157\132 frost.lua", 
    [15] = "\226\157\132 rost.lua", 
    [16] = "\226\157\132 ost.lua", 
    [17] = "\226\157\132 st.lua", 
    [18] = "\226\157\132 t.lua", 
    [19] = "\226\157\132 .lua", 
    [20] = "\226\157\132 lua", 
    [21] = "\226\157\132 ua", 
    [22] = "\226\157\132 a", 
    [23] = "\226\157\132"
};
v1743 = nil;
v1744 = v1742;
v1745 = function(v3147)
    local v3148 = {};
    table.insert(v3148, "");
    for v3149 = 1, #v3147 do
        table.insert(v3148, v3147:sub(1, v3149));
    end;
    for _ = 1, 5 do
        table.insert(v3148, v3147);
    end;
    for v3151 = 1, #v3147 do
        table.insert(v3148, v3147:sub(v3151, #v3147));
    end;
    table.insert(v3148, "");
    return v3148;
end;
v1746 = function()
    -- upvalues: v17 (ref)
    return v17(globals.curtime * 2.4);
end;
do
    local l_v1305_19, l_v1308_17, l_v1742_12, l_v1743_13, l_v1744_13, l_v1745_10, l_v1746_7, l_v1747_9, l_v1748_9 = v1305, v1308, v1742, v1743, v1744, v1745, v1746, v1747, v1748;
    l_v1747_9 = function()
        -- upvalues: l_v1743_13 (ref)
        l_v1743_13 = nil;
    end;
    l_v1748_9 = function()
        -- upvalues: l_v1746_7 (ref), l_v1744_13 (ref), l_v1743_13 (ref)
        if not globals.is_in_game then
            return;
        else
            local v3161 = l_v1744_13[l_v1746_7() % #l_v1744_13 + 1] or "";
            if l_v1743_13 ~= v3161 then
                l_v1743_13 = v3161;
                common.set_clan_tag(v3161);
            end;
            return;
        end;
    end;
    l_v1747_9 = v21("misc_clantag.on_level_init", l_v1747_9);
    l_v1748_9 = v21("misc_clantag.on_net_update_end", l_v1748_9);
    v1749 = nil;
    v1750 = function(v3162)
        -- upvalues: l_v1744_13 (ref), l_v1742_12 (ref)
        local v3163 = v3162:get();
        if v3163 ~= "" then
            l_v1744_13 = {
                [1] = v3163
            };
        else
            l_v1744_13 = l_v1742_12;
        end;
    end;
    v1751 = function(v3164)
        -- upvalues: l_v1744_13 (ref), l_v1745_10 (ref), l_v1742_12 (ref)
        local v3165 = v3164:get();
        if v3165 ~= "" then
            l_v1744_13 = l_v1745_10(v3165);
        else
            l_v1744_13 = l_v1742_12;
        end;
    end;
    do
        local l_v1750_8, l_v1751_6, l_v1752_6, l_v1753_6 = v1750, v1751, v1752, v1753;
        l_v1752_6 = function(v3170)
            -- upvalues: l_v1305_19 (ref), l_v1751_6 (ref), l_v1750_8 (ref)
            local v3171 = v3170:get();
            if v3171 == "Static" then
                l_v1305_19.input:unset_callback(l_v1751_6);
                l_v1305_19.input:set_callback(l_v1750_8, true);
            end;
            if v3171 == "Animated" then
                l_v1305_19.input:unset_callback(l_v1750_8);
                l_v1305_19.input:set_callback(l_v1751_6, true);
            end;
        end;
        l_v1753_6 = function(v3172)
            -- upvalues: l_v1744_13 (ref), l_v1742_12 (ref), l_v1305_19 (ref), l_v1752_6 (ref), l_v1750_8 (ref), l_v1751_6 (ref)
            local v3173 = v3172:get();
            if v3173 == "Frost" then
                l_v1744_13 = l_v1742_12;
            end;
            if v3173 == "Custom" then
                l_v1305_19.style:set_callback(l_v1752_6, true);
            else
                l_v1305_19.style:unset_callback(l_v1752_6);
                l_v1305_19.input:unset_callback(l_v1750_8);
                l_v1305_19.input:unset_callback(l_v1751_6);
            end;
        end;
        v1754 = function(v3174)
            -- upvalues: l_v1305_19 (ref), l_v1753_6 (ref), l_v1752_6 (ref), l_v1750_8 (ref), l_v1751_6 (ref), l_v1308_17 (ref), l_v1747_9 (ref), l_v1748_9 (ref)
            local v3175 = v3174:get();
            if not v3175 then
                common.set_clan_tag("");
            end;
            if v3175 then
                l_v1305_19.mode:set_callback(l_v1753_6, true);
            else
                l_v1305_19.mode:unset_callback(l_v1753_6);
                l_v1305_19.style:unset_callback(l_v1752_6);
                l_v1305_19.input:unset_callback(l_v1750_8);
                l_v1305_19.input:unset_callback(l_v1751_6);
            end;
            local l_l_v1308_17_0 = l_v1308_17;
            local l_l_l_v1308_17_0_0 = l_l_v1308_17_0;
            l_l_v1308_17_0 = l_l_v1308_17_0.override;
            if v3175 then

            end;
            l_l_v1308_17_0(l_l_l_v1308_17_0_0, nil);
            events.level_init(l_v1747_9, v3175);
            events.net_update_end(l_v1748_9, v3175);
        end;
        l_v1305_19.enabled:set_callback(v1754, true);
    end;
end;
v5("visuals_hit_markers");
v1305 = nil;
v1308 = v151.visuals.hit_markers;
v1742 = {};
v1743 = {};
do
    local l_v1308_18, l_v1742_13, l_v1743_14, l_v1744_14 = v1308, v1742, v1743, v1744;
    do
        local l_l_v1743_14_0, l_l_v1744_14_0, l_v1745_11 = l_v1743_14, l_v1744_14, v1745;
        l_l_v1744_14_0 = function()
            -- upvalues: l_v1308_18 (ref), l_l_v1743_14_0 (ref), v137 (ref)
            if not globals.is_in_game then
                return;
            else
                local l_realtime_0 = globals.realtime;
                local v3186 = l_v1308_18.kibit.size:get();
                local v3187 = l_v1308_18.kibit.thickness:get();
                local v3188 = l_v1308_18.kibit.color:get("Horizontal")[1];
                local v3189 = l_v1308_18.kibit.color:get("Vertical")[1];
                for v3190 = #l_l_v1743_14_0, 1, -1 do
                    if l_l_v1743_14_0[v3190].time < l_realtime_0 then
                        table.remove(l_l_v1743_14_0, v3190);
                    end;
                end;
                for v3191 = 1, #l_l_v1743_14_0 do
                    local v3192 = l_l_v1743_14_0[v3191];
                    local v3193 = 1;
                    local v3194 = v3192.time - l_realtime_0;
                    if v3194 < 0.7 then
                        v3193 = v3194 / 0.7;
                    end;
                    local v3195 = v137.world_to_screen(v3192.point);
                    if v3195 ~= nil then
                        local v3196 = v3187 * 0.5;
                        local v3197 = v3186 + v3196;
                        local v3198 = vector(v3195.x - v3196, v3195.y - v3197);
                        local v3199 = vector(v3195.x + v3196, v3195.y + v3197);
                        local v3200 = vector(v3195.x - v3197, v3195.y - v3196);
                        local v3201 = vector(v3195.x + v3197, v3195.y + v3196);
                        local v3202 = v3188:clone();
                        local v3203 = v3189:clone();
                        v3202.a = v3202.a * v3193;
                        v3203.a = v3203.a * v3193;
                        v137.rect(v3200, v3201, v3202);
                        v137.rect(v3198, v3199, v3203);
                    end;
                end;
                return;
            end;
        end;
        l_v1745_11 = function(v3204)
            -- upvalues: l_l_v1743_14_0 (ref)
            local v3205 = globals.realtime + 3;
            table.insert(l_l_v1743_14_0, {
                time = v3205, 
                point = v3204.aim
            });
        end;
        l_l_v1744_14_0 = v21("visuals_hit_markers.kibit.on_render", l_l_v1744_14_0);
        l_v1745_11 = v21("visuals_hit_markers.kibit.on_aim_ack", l_v1745_11);
        l_v1742_13.set = function(v3206)
            -- upvalues: l_l_v1743_14_0 (ref), l_l_v1744_14_0 (ref), l_v1745_11 (ref)
            if not v3206 then
                for v3207 = 1, #l_l_v1743_14_0 do
                    l_l_v1743_14_0[v3207] = nil;
                end;
            end;
            events.render(l_l_v1744_14_0, v3206);
            events.aim_ack(l_v1745_11, v3206);
        end;
    end;
    l_v1743_14 = {};
    l_v1744_14 = 0;
    do
        local l_l_v1744_14_1, l_v1745_12, l_v1746_8 = l_v1744_14, v1745, v1746;
        l_v1745_12 = function()
            -- upvalues: l_l_v1744_14_1 (ref), l_v1308_18 (ref), v137 (ref)
            if not globals.is_in_game or l_l_v1744_14_1 <= 0 then
                return;
            else
                local v3211 = 1;
                if l_l_v1744_14_1 < 0.25 then
                    v3211 = l_l_v1744_14_1 / 0.25;
                end;
                local v3212 = l_v1308_18.screen.color:get();
                local v3213 = v137.screen_size() / 2;
                v3212.a = v3212.a * v3211;
                v137.line(vector(v3213.x - 10, v3213.y - 10), vector(v3213.x - 5, v3213.y - 5), v3212);
                v137.line(vector(v3213.x + 10, v3213.y - 10), vector(v3213.x + 5, v3213.y - 5), v3212);
                v137.line(vector(v3213.x + 10, v3213.y + 10), vector(v3213.x + 5, v3213.y + 5), v3212);
                v137.line(vector(v3213.x - 10, v3213.y + 10), vector(v3213.x - 5, v3213.y + 5), v3212);
                l_l_v1744_14_1 = math.max(l_l_v1744_14_1 - globals.frametime, 0);
                return;
            end;
        end;
        l_v1746_8 = function(v3214)
            -- upvalues: l_l_v1744_14_1 (ref)
            local v3215 = entity.get_local_player();
            local v3216 = entity.get(v3214.userid, true);
            local v3217 = entity.get(v3214.attacker, true);
            if v3216 == v3215 or v3217 ~= v3215 then
                return;
            else
                l_l_v1744_14_1 = 0.5;
                return;
            end;
        end;
        l_v1745_12 = v21("visuals_hit_markers.screen.on_render", l_v1745_12);
        l_v1746_8 = v21("visuals_hit_markers.screen.on_player_hurt", l_v1746_8);
        l_v1743_14.set = function(v3218)
            -- upvalues: l_l_v1744_14_1 (ref), l_v1745_12 (ref), l_v1746_8 (ref)
            if not v3218 then
                l_l_v1744_14_1 = 0;
            end;
            events.render(l_v1745_12, v3218);
            events.player_hurt(l_v1746_8, v3218);
        end;
    end;
    l_v1744_14 = {};
    v1745 = {};
    do
        local l_v1745_13, l_v1746_9, l_v1747_10 = v1745, v1746, v1747;
        l_v1746_9 = function()
            -- upvalues: l_v1308_18 (ref), l_v1745_13 (ref), v137 (ref)
            if not globals.is_in_game then
                return;
            else
                local l_realtime_1 = globals.realtime;
                local v3223 = ui.get_icon("snowflake");
                local v3224 = l_v1308_18.world.color:get();
                local v3225 = l_v1308_18.world.add_glow:get();
                for v3226 = #l_v1745_13, 1, -1 do
                    if l_v1745_13[v3226].time < l_realtime_1 then
                        table.remove(l_v1745_13, v3226);
                    end;
                end;
                for v3227 = 1, #l_v1745_13 do
                    local v3228 = l_v1745_13[v3227];
                    local v3229 = 1;
                    local v3230 = v3228.time - l_realtime_1;
                    if v3230 < 0.7 then
                        v3229 = v3230 / 0.7;
                    end;
                    local v3231 = v137.world_to_screen(v3228.point);
                    if v3231 ~= nil then
                        local v3232 = v3224:clone();
                        v3232.a = v3232.a * v3229;
                        if v3225 then
                            v137.shadow(v3231, v3231, v3232, 28);
                        end;
                        v137.text(1, v3231, v3232, "c", v3223);
                    end;
                end;
                return;
            end;
        end;
        l_v1747_10 = function(v3233)
            -- upvalues: l_v1745_13 (ref)
            local v3234 = globals.realtime + 3;
            table.insert(l_v1745_13, {
                time = v3234, 
                point = v3233.aim
            });
        end;
        l_v1746_9 = v21("visuals_hit_markers.world.on_render", l_v1746_9);
        l_v1747_10 = v21("visuals_hit_markers.world.on_aim_ack", l_v1747_10);
        l_v1744_14.set = function(v3235)
            -- upvalues: l_v1745_13 (ref), l_v1746_9 (ref), l_v1747_10 (ref)
            if not v3235 then
                for v3236 = 1, #l_v1745_13 do
                    l_v1745_13[v3236] = nil;
                end;
            end;
            events.render(l_v1746_9, v3235);
            events.aim_ack(l_v1747_10, v3235);
        end;
    end;
    v1745 = nil;
    v1746 = function(v3237)
        -- upvalues: l_v1742_13 (ref)
        l_v1742_13.set(v3237:get());
    end;
    v1747 = function(v3238)
        -- upvalues: l_v1743_14 (ref)
        l_v1743_14.set(v3238:get());
    end;
    v1748 = function(v3239)
        -- upvalues: l_v1744_14 (ref)
        l_v1744_14.set(v3239:get());
    end;
    do
        local l_v1746_10, l_v1747_11, l_v1748_10 = v1746, v1747, v1748;
        v1749 = function(v3243)
            -- upvalues: l_v1742_13 (ref), l_v1743_14 (ref), l_v1744_14 (ref), l_v1308_18 (ref), l_v1746_10 (ref), l_v1747_11 (ref), l_v1748_10 (ref)
            local v3244 = v3243:get();
            if not v3244 then
                l_v1742_13.set(false);
                l_v1743_14.set(false);
                l_v1744_14.set(false);
            end;
            if v3244 then
                l_v1308_18.kibit.enabled:set_callback(l_v1746_10, true);
                l_v1308_18.screen.enabled:set_callback(l_v1747_11, true);
                l_v1308_18.world.enabled:set_callback(l_v1748_10, true);
            else
                l_v1308_18.kibit.enabled:unset_callback(l_v1746_10);
                l_v1308_18.screen.enabled:unset_callback(l_v1747_11);
                l_v1308_18.world.enabled:unset_callback(l_v1748_10);
            end;
        end;
        l_v1308_18.enabled:set_callback(v1749, true);
    end;
end;
v5("visuals_skeet_indicators");
v1308 = nil;
v1742 = v151.visuals.skeet_indicators;
v1743 = 480;
v1744 = 8;
v1745 = 24;
v1746 = 4;
v1747 = 3;
v1748 = v137.load_font("C:\\Windows\\Fonts\\calibrib.ttf", vector(25, 23.5, 0), "a");
v1749 = ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot");
v1750 = ui.find("Aimbot", "Ragebot", "Main", "Double Tap");
v1751 = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots");
v1752 = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim");
v1753 = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points");
v1754 = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage");
v1755 = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck");
v1756 = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding");
v1757 = ui.find("Miscellaneous", "Main", "Other", "Fake Latency");
v1758 = 0;
v1759 = 0;
v1760 = 100;
v1761 = {};
v1761.__index = v1761;
v1761.new = function(v3245, v3246, v3247)
    return setmetatable({
        id = v3246, 
        size = v3247
    }, v3245);
end;
v1761.draw = function(v3248, v3249, v3250, ...)
    -- upvalues: v137 (ref)
    v137.texture(v3248.id, v3249, v3248.size, v3250, ...);
end;
v1763 = {
    bomb_c4 = v1761:new(({
        bomb_c4 = v137.load_image_from_file("materials\\panorama\\images\\icons\\ui\\bomb_c4.svg", vector(32, 32))
    }).bomb_c4, vector(32, 29))
};
v1765 = function(v3251)
    local v3252 = v3251:get_override();
    if v3252 ~= nil then
        return v3252;
    else
        return v3251:get();
    end;
end;
local function v3255(v3253)
    -- upvalues: v509 (ref)
    local v3254 = v509.get(v3253);
    return v3254 ~= nil and v3254.active;
end;
local function v3261(v3256, v3257)
    local v3258 = 0.5;
    local v3259 = 0.5;
    if v3257 > 0 then
        local v3260 = v3256 * v3258;
        if v3257 < (v3256 - v3260) * v3259 then
            v3260 = v3256 - v3257 * (1 / v3259);
        end;
        v3256 = v3260;
    end;
    return v3256;
end;
do
    local l_v1742_14, l_v1743_15, l_v1744_15, l_v1745_14, l_v1746_11, l_v1747_12, l_v1748_11, l_v1749_8, l_v1750_9, l_v1751_7, l_v1752_7, l_v1753_7, l_v1754_5, l_v1755_6, l_v1756_3, l_v1757_3, l_v1758_1, l_v1759_2, l_v1760_2, l_v1763_1, l_v1765_1, l_v3255_0, l_v3261_0 = v1742, v1743, v1744, v1745, v1746, v1747, v1748, v1749, v1750, v1751, v1752, v1753, v1754, v1755, v1756, v1757, v1758, v1759, v1760, v1763, v1765, v3255, v3261;
    local function v3293(v3285, v3286)
        -- upvalues: l_v3261_0 (ref)
        local v3287 = 1;
        local v3288 = 500;
        local v3289 = v3288 * 3.5;
        local v3290 = (v3286:get_origin() - v3285:get_eye_position()):length();
        local v3291 = v3289 / 3;
        local v3292 = v3288 * math.exp(-v3290 * v3290 / (2 * v3291 * v3291)) * v3287;
        return l_v3261_0(v3292, v3285.m_ArmorValue);
    end;
    local v3294 = {};
    local v3295 = 0;
    local v3296 = 0;
    local v3297 = 0;
    local v3298 = 0;
    local v3299 = 0;
    local v3300 = 0;
    local v3301 = 0;
    local v3302 = 0;
    local v3303 = 0;
    local v3304 = 0;
    local function v3308(v3305, v3306, v3307)
        -- upvalues: l_v1742_14 (ref), l_play_0 (ref)
        if l_v1742_14.style:get() == "Old" then
            return v3306 and 1 or 0;
        else
            return l_play_0.interp(v3305, v3306, v3307);
        end;
    end;
    local function v3310()
        -- upvalues: v3294 (ref)
        for v3309 = 1, #v3294 do
            v3294[v3309] = nil;
        end;
    end;
    local function v3316(v3311)
        -- upvalues: l_v1742_14 (ref), v137 (ref), l_v1748_11 (ref), l_v1746_11 (ref), v3294 (ref), l_v1743_15 (ref), l_v1744_15 (ref)
        if l_v1742_14.style:get() == "Old" then
            v3311.icon = nil;
        end;
        if v3311.alpha == nil then
            v3311.alpha = 1;
        end;
        local v3312 = v137.measure_text(l_v1748_11, nil, v3311.text);
        local v3313 = v137.screen_size();
        v3312.y = v3312.y + l_v1746_11 * 2;
        local v3314 = v3294[#v3294];
        local v3315 = v3314 == nil and v3313.y - (v3313.y - l_v1743_15) / 2 or v3314.offset - (v3314.text_size.y + l_v1744_15) * v3314.alpha;
        v3311.offset = v3315;
        v3311.text_size = v3312;
        table.insert(v3294, v3311);
        return v3315;
    end;
    local function v3321(v3317, v3318, v3319, v3320)
        -- upvalues: v3316 (ref)
        return v3316({
            color = v3317, 
            text = v3319, 
            icon = v3318, 
            alpha = v3320
        });
    end;
    local function v3343(_)
        -- upvalues: l_v1742_14 (ref), l_v3255_0 (ref), l_v1754_5 (ref), l_v1765_1 (ref), l_v1757_3 (ref), l_v1755_6 (ref), l_v1756_3 (ref), l_v1752_7 (ref), l_v1753_7 (ref), l_v1750_9 (ref), l_v1751_7 (ref), l_v1749_8 (ref), v3295 (ref), v3308 (ref), v3296 (ref), v3297 (ref), v3298 (ref), v3299 (ref), v3300 (ref), v3301 (ref), v3302 (ref), v3303 (ref), v3304 (ref), v3321 (ref), l_v1760_2 (ref)
        local _ = l_v1742_14.style:get() == "New";
        local v3324 = l_v3255_0(l_v1754_5);
        local v3325 = l_v1765_1(l_v1757_3) > 0;
        local v3326 = l_v1765_1(l_v1755_6);
        local v3327 = l_v1765_1(l_v1756_3);
        local v3328 = l_v1765_1(l_v1752_7) == "Force";
        local v3329 = l_v1765_1(l_v1753_7) == "Force";
        local v3330 = l_v1765_1(l_v1750_9) and not v3326;
        local v3331 = l_v1765_1(l_v1751_7) and not v3326 and not v3330;
        local v3332 = l_v1765_1(l_v1749_8);
        v3295 = v3308(v3295, v3325 and l_v1742_14.list:get("Fake Latency"), 0.05);
        v3296 = v3308(v3296, v3331 and l_v1742_14.list:get("Hide Shots"), 0.05);
        v3297 = v3308(v3297, v3330 and l_v1742_14.list:get("Double Tap"), 0.05);
        v3298 = v3308(v3298, v3332 and l_v1742_14.list:get("Dormant Aimbot"), 0.05);
        v3299 = v3308(v3299, v3326 and l_v1742_14.list:get("Fake Duck"), 0.05);
        v3300 = v3308(v3300, v3329 and l_v1742_14.list:get("Force Safe Points"), 0.05);
        v3301 = v3308(v3301, v3328 and l_v1742_14.list:get("Force Body Aim"), 0.05);
        v3302 = v3308(v3302, v3324 and l_v1742_14.list:get("Min. Damage"), 0.05);
        v3303 = v3308(v3303, v3327 and l_v1742_14.list:get("Freestanding"), 0.05);
        v3304 = v3308(v3304, l_v1742_14.list:get("Hit/Miss Ratio"), 0.05);
        local v3333 = color(255, 255, 255, 200);
        local v3334 = color(255, 0, 50, 255);
        if v3295 > 0 then
            local v3335 = v3333:clone();
            local v3336 = utils.net_channel();
            if v3336 ~= nil then
                local v3337 = l_v1765_1(l_v1757_3);
                local v3338 = math.clamp(v3336.latency[0] + v3336.latency[1], 0.001, 0.2);
                local v3339 = math.clamp(v3337 * 0.001 + v3336.avg_latency[1], 0.001, 0.2);
                local v3340 = math.clamp(v3338 / v3339, 0, 1);
                if v3340 < 0.5 then
                    v3335 = color(250, 234, 232, 255):lerp(color(213, 197, 84, 255), v3340 * 2);
                else
                    v3335 = color(213, 197, 84, 255):lerp(color(143, 194, 21, 255), (v3340 - 0.5) * 2);
                end;
            end;
            v3321(v3335, ui.get_icon("sun"), "PING", v3295);
        end;
        if v3296 > 0 then
            v3321(v3333, ui.get_icon("eye-slash"), "OSAA", v3296);
        end;
        if v3297 > 0 then
            local v3341 = ui.get_icon("xmark");
            local v3342 = v3334:clone();
            if rage.exploit:get() == 1 then
                v3341 = ui.get_icon("arrows-cross");
                v3342 = v3333:clone();
            end;
            v3321(v3342, v3341, "DT", v3297);
        end;
        if v3298 > 0 then
            v3321(v3333, ui.get_icon("eye"), "DA", v3298);
        end;
        if v3299 > 0 then
            v3321(v3333, ui.get_icon("wheelchair"), "DUCK", v3299);
        end;
        if v3300 > 0 then
            v3321(v3333, ui.get_icon("shield"), "SAFE", v3300);
        end;
        if v3301 > 0 then
            v3321(v3333, ui.get_icon("bullseye-arrow"), "BODY", v3301);
        end;
        if v3302 > 0 then
            v3321(v3333, ui.get_icon("dial-min"), "MD", v3302);
        end;
        if v3303 > 0 then
            v3321(v3333, ui.get_icon("arrows-turn-right"), "FS", v3303);
        end;
        if v3304 > 0 then
            v3321(v3333, ui.get_icon("wave-pulse"), l_v1760_2 .. "%", v3304);
        end;
    end;
    local function v3353(v3344, v3345)
        -- upvalues: v3316 (ref), l_v1763_1 (ref)
        local v3346 = v3345:get_player_weapon();
        if v3346 == nil then
            return;
        elseif not v3346.m_bStartedArming then
            return;
        else
            local l_m_fArmedTime_0 = v3346.m_fArmedTime;
            if l_m_fArmedTime_0 == nil then
                return;
            else
                local v3348 = v3345:get_origin();
                local l_m_bombsiteCenterA_0 = v3344.m_bombsiteCenterA;
                local l_m_bombsiteCenterB_0 = v3344.m_bombsiteCenterB;
                local v3351 = v3348:distsqr(l_m_bombsiteCenterA_0) < v3348:distsqr(l_m_bombsiteCenterB_0) and "A" or "B";
                local v3352 = (l_m_fArmedTime_0 - globals.curtime) / 3;
                v3316({
                    text = v3351, 
                    color = color(252, 243, 105, 255), 
                    progress = 1 - v3352, 
                    draw_cmd = l_v1763_1.bomb_c4
                });
                return;
            end;
        end;
    end;
    local function v3368(v3354, v3355)
        -- upvalues: v137 (ref), v3316 (ref), l_v1763_1 (ref), v3293 (ref), v3321 (ref)
        local l_m_bBombDefused_0 = v3355.m_bBombDefused;
        if not v3355.m_bBombTicking or l_m_bBombDefused_0 then
            return;
        else
            local l_curtime_0 = globals.curtime;
            local l_m_flC4Blow_0 = v3355.m_flC4Blow;
            local v3359 = l_m_flC4Blow_0 - l_curtime_0;
            if v3359 > 0 then
                if v3355.m_hBombDefuser ~= nil then
                    local v3360 = v137.screen_size();
                    local l_m_flDefuseCountDown_0 = v3355.m_flDefuseCountDown;
                    local v3362 = (l_m_flDefuseCountDown_0 - l_curtime_0) / 10;
                    local v3363 = l_m_flC4Blow_0 < l_m_flDefuseCountDown_0 and color(235, 50, 75, 125) or color(50, 235, 75, 125);
                    local v3364 = (v3360.y - 2) * (1 - v3362);
                    v137.rect(vector(0, 0), vector(20, v3360.y), color(0, 0, 0, 115));
                    v137.rect(vector(1, 1 + v3364), vector(19, v3360.y - 1), v3363);
                end;
                local v3365 = string.format("%s - %.1fs", v3355.m_nBombSite == 1 and "B" or "A", v3359);
                v3316({
                    text = v3365, 
                    color = color(255, 255, 255, 200), 
                    draw_cmd = l_v1763_1.bomb_c4
                });
            end;
            local l_m_iHealth_5 = v3354.m_iHealth;
            local v3367 = v3293(v3354, v3355);
            v3367 = math.floor(v3367);
            if l_m_iHealth_5 <= v3367 then
                v3321(color(255, 0, 50, 255), nil, "FATAL");
            elseif v3367 > 0 then
                v3321(color(252, 243, 105, 255), nil, string.format("-%d HP", v3367));
            end;
            return;
        end;
    end;
    local function v3376(v3369)
        -- upvalues: v3353 (ref), v3368 (ref)
        local v3370 = entity.get_game_rules();
        if v3370 == nil then
            return;
        else
            local v3371 = entity.get_player_resource();
            if v3371 == nil then
                return;
            else
                local l_m_bBombPlanted_0 = v3370.m_bBombPlanted;
                local l_m_iPlayerC4_0 = v3371.m_iPlayerC4;
                if l_m_iPlayerC4_0 ~= nil and l_m_iPlayerC4_0 ~= 0 then
                    local v3374 = entity.get(l_m_iPlayerC4_0);
                    if v3374 ~= nil then
                        v3353(v3371, v3374);
                    end;
                end;
                if l_m_bBombPlanted_0 then
                    local v3375 = entity.get_entities("CPlantedC4")[1];
                    if v3375 ~= nil then
                        v3368(v3369, v3375);
                    end;
                end;
                return;
            end;
        end;
    end;
    local function v3378()
        -- upvalues: v3343 (ref), l_v1742_14 (ref), v3376 (ref)
        local v3377 = entity.get_local_player();
        if v3377 == nil then
            return;
        else
            if v3377:is_alive() then
                v3343(v3377);
            end;
            if l_v1742_14.list:get("Bomb Information") then
                v3376(v3377);
            end;
            return;
        end;
    end;
    local function v3385(v3379, v3380, v3381)
        -- upvalues: v137 (ref)
        local v3382 = (v3379 + v3380) / 2;
        local v3383 = color(0, 0, 0, 0 * v3381);
        local v3384 = color(0, 0, 0, 50 * v3381);
        v137.gradient(v3379, vector(v3382.x, v3380.y), v3383, v3384, v3383, v3384);
        v137.gradient(v3380, vector(v3382.x, v3379.y), v3383, v3384, v3383, v3384);
    end;
    local function _(v3386, v3387, v3388)
        -- upvalues: v137 (ref)
        local v3389 = color(0, 0, 0, 50 * v3388);
        local v3390 = color(0, 0, 0, 0 * v3388);
        v137.gradient(v3386, v3387, v3389, v3390, v3389, v3390);
    end;
    local function v3398(v3392, v3393, v3394, v3395, v3396, v3397)
        -- upvalues: v137 (ref)
        v137.circle_outline(v3392, color(0, 0, 0, 255), v3394, v3395, 1, v3397);
        v137.circle_outline(v3392, v3393, v3394 - 1, v3395, v3396, v3397 - 2);
    end;
    local function v3421()
        -- upvalues: l_v1742_14 (ref), l_v1747_12 (ref), l_v1745_14 (ref), v3294 (ref), l_v1746_11 (ref), v137 (ref), l_v1748_11 (ref), v3385 (ref), v3398 (ref)
        local v3399 = l_v1742_14.style:get() == "New";
        local v3400 = v3399 and 5 or l_v1747_12;
        local v3401 = v3399 and 10 or l_v1745_14;
        for v3402 = 1, #v3294 do
            local v3403 = v3294[v3402];
            if v3403.color ~= nil then
                local l_color_1 = v3403.color;
                local l_icon_0 = v3403.icon;
                local l_text_1 = v3403.text;
                local l_alpha_1 = v3403.alpha;
                local l_draw_cmd_0 = v3403.draw_cmd;
                local l_progress_0 = v3403.progress;
                local v3410 = vector(v3400, v3403.offset);
                local v3411 = v3410 + vector(v3401, l_v1746_11);
                local v3412 = v3403.text_size + vector(50);
                local v3413 = v137.measure_text(l_v1748_11, "", l_icon_0);
                v3411.y = v3411.y + 2;
                if l_draw_cmd_0 ~= nil then
                    v3412.x = v3412.x + l_draw_cmd_0.size.x + 5;
                end;
                if l_icon_0 ~= nil then
                    v3412.x = v3412.x + v3413.x + 5;
                end;
                if l_progress_0 ~= nil then
                    v3412.x = v3412.x + 30;
                end;
                local v3414 = color(0, 0, 0, 128);
                local v3415 = l_color_1:clone();
                v3414.a = v3414.a * l_alpha_1;
                v3415.a = v3415.a * l_alpha_1;
                v3385(v3410, v3410 + v3412, l_alpha_1);
                if l_draw_cmd_0 ~= nil then
                    local v3416 = v3411:clone();
                    v3416.y = v3410.y + (v3412.y - l_draw_cmd_0.size.y) / 2;
                    l_draw_cmd_0:draw(v3416, l_color_1, "f");
                    v3411.x = v3411.x + l_draw_cmd_0.size.x + 5;
                end;
                if l_icon_0 ~= nil then
                    v137.text(l_v1748_11, v3411 + 1, v3414, "", l_icon_0);
                    v137.text(l_v1748_11, v3411, v3415, "", l_icon_0);
                    v3411.x = v3411.x + v3413.x + 5;
                end;
                v137.text(l_v1748_11, v3411 + 1, v3414, "", l_text_1);
                v137.text(l_v1748_11, v3411, v3415, "", l_text_1);
                v3411.x = v3411.x + v3403.text_size.x;
                if l_progress_0 ~= nil then
                    local v3417 = v3411.x + 10 / 2 + 12;
                    local v3418 = v3410.y + v3412.y / 2;
                    local v3419 = vector(v3417, v3418);
                    local v3420 = color(255, 255, 255, 200);
                    v3420.a = v3420.a * l_alpha_1;
                    v3398(v3419, v3420, 10, 0, l_progress_0, 5);
                end;
            end;
        end;
    end;
    on_render = function()
        -- upvalues: v3378 (ref), v3421 (ref), v3310 (ref)
        if globals.is_in_game then
            v3378();
            v3421();
        end;
        v3310();
    end;
    local function v3423(v3422)
        -- upvalues: l_v1758_1 (ref), l_v1759_2 (ref), l_v1760_2 (ref)
        l_v1758_1 = l_v1758_1 + 1;
        if v3422.state == nil then
            l_v1759_2 = l_v1759_2 + 1;
        end;
        l_v1760_2 = math.floor(l_v1759_2 / math.max(1, l_v1758_1) * 100);
    end;
    on_render = v21("screen_indicators.on_render", on_render);
    v3423 = v21("screen_indicators.on_aim_ack", v3423);
    local function v3425(v3424)
        -- upvalues: v3423 (ref)
        events.render(on_render, v3424);
        events.aim_ack(v3423, v3424);
    end;
    local _ = nil;
    local function v3428(v3427)
        -- upvalues: v3425 (ref)
        v3425(v3427:get());
    end;
    l_v1742_14.enabled:set_callback(v3428, true);
end;
v5("begin_misc");
v1161 = nil;
v5("misc_super_toss");
v1167 = nil;
v1201 = v151.misc.grenades;
v1202 = ui.find("Miscellaneous", "Main", "Other", "Weapon Actions");
l_match_0 = ui.find("Miscellaneous", "Main", "Movement", "Air Strafe");
v1289 = ui.find("Miscellaneous", "Main", "Movement", "Strafe Assist");
l_angles_0 = 0.3;
v1291 = function(v3429, v3430, v3431)
    return v3429 + v3431 * (v3430 - v3429);
end;
do
    local l_v1202_9, l_l_match_0_10, l_v1289_9, l_l_angles_0_11, l_v1291_13, l_v1301_14, l_v1302_15, l_v1303_18 = v1202, l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303;
    l_v1301_14 = function(v3440, v3441, v3442, v3443)
        -- upvalues: l_v1291_13 (ref), l_l_angles_0_11 (ref)
        v3440.x = v3440.x - 10 + math.abs(v3440.x) / 9;
        local v3444 = vector():angles(v3440);
        local v3445 = v3443 * 1.25;
        local v3446 = math.clamp(v3441 * 0.9, 15, 750);
        local v3447 = math.clamp(v3442, 0, 1);
        v3446 = v3446 * l_v1291_13(l_l_angles_0_11, 1, v3447);
        local l_v3444_0 = v3444;
        for _ = 1, 8 do
            l_v3444_0 = (v3444 * (l_v3444_0 * v3446 + v3445):length() - v3445) / v3446;
            l_v3444_0:normalize();
        end;
        local v3450 = l_v3444_0.angles(l_v3444_0);
        if v3450.x > -10 then
            v3450.x = 0.9 * v3450.x + 9;
        else
            v3450.x = 1.125 * v3450.x + 11.25;
        end;
        return v3450;
    end;
    l_v1302_15 = function(v3451)
        -- upvalues: l_v1301_14 (ref)
        local v3452 = entity.get_local_player();
        if v3452 == nil then
            return;
        else
            local v3453 = v3452:get_player_weapon();
            if v3453 == nil then
                return;
            else
                local v3454 = v3453:get_weapon_info();
                if v3454 == nil then
                    return;
                else
                    v3451.angles = l_v1301_14(v3451.angles, v3454.throw_velocity, v3453.m_flThrowStrength, v3451.velocity);
                    return;
                end;
            end;
        end;
    end;
    l_v1303_18 = v21("misc_super_toss.on_createmove", function(v3455)
        -- upvalues: l_l_match_0_10 (ref), l_v1289_9 (ref), l_v1202_9 (ref), l_v1301_14 (ref)
        l_l_match_0_10:override();
        l_v1289_9:override();
        l_v1202_9:override();
        if v3455.jitter_move ~= true then
            return;
        else
            local v3456 = entity.get_local_player();
            if v3456 == nil then
                return;
            else
                local v3457 = v3456:get_player_weapon();
                if v3457 == nil then
                    return;
                else
                    local v3458 = v3457:get_weapon_info();
                    if v3458 == nil or v3458.weapon_type ~= 9 then
                        return;
                    elseif v3457.m_fThrowTime < globals.curtime - to_time(globals.clock_offset) then
                        return;
                    else
                        v3455.in_speed = true;
                        local v3459 = v3456:simulate_movement();
                        v3459:think();
                        v3455.view_angles = l_v1301_14(v3455.view_angles, v3458.throw_velocity, v3457.m_flThrowStrength, v3459.velocity);
                        l_l_match_0_10:override(false);
                        l_v1289_9:override(false);
                        l_v1202_9:override("");
                        return;
                    end;
                end;
            end;
        end;
    end);
    l_v1302_15 = v21("misc_super_toss.on_grenade_override_view", l_v1302_15);
    v1305 = nil;
    v1308 = function(v3460)
        -- upvalues: l_v1303_18 (ref), l_v1302_15 (ref)
        local v3461 = v3460:get(1);
        events.createmove(l_v1303_18, v3461);
        events.grenade_override_view(l_v1302_15, v3461);
    end;
    v1201.select:set_callback(v1308, true);
end;
v5("misc_grenade_release");
v1201 = nil;
v1202 = v151.misc.grenades;
l_match_0 = nil;
do
    local l_v1202_10, l_l_match_0_11, l_v1289_10, l_l_angles_0_12 = v1202, l_match_0, v1289, l_angles_0;
    l_v1289_10 = function(v3466)
        -- upvalues: l_l_match_0_11 (ref), l_v1202_10 (ref)
        local v3467 = entity.get_local_player();
        if v3467 == nil then
            return;
        else
            local v3468 = v3467:get_player_weapon();
            if v3468 == nil then
                return;
            elseif not (v3468.m_bPinPulled and v3468.m_flThrowStrength > 0) then
                return;
            else
                if l_l_match_0_11 ~= nil and l_l_match_0_11 >= l_v1202_10.release_damage:get() then
                    v3466.in_attack = false;
                    v3466.in_attack2 = false;
                end;
                l_l_match_0_11 = nil;
                return;
            end;
        end;
    end;
    l_l_angles_0_12 = function(v3469)
        -- upvalues: l_l_match_0_11 (ref)
        l_l_match_0_11 = v3469.damage;
    end;
    l_v1289_10 = v21("misc_grenade_release.on_createmove", l_v1289_10);
    l_l_angles_0_12 = v21("misc_grenade_release.on_grenade_prediction", l_l_angles_0_12);
    v1291 = nil;
    v1301 = function(v3470)
        -- upvalues: l_v1289_10 (ref), l_l_angles_0_12 (ref)
        local v3471 = v3470:get(2);
        events.createmove(l_v1289_10, v3471);
        events.grenade_prediction(l_l_angles_0_12, v3471);
    end;
    l_v1202_10.select:set_callback(v1301, true);
end;
v5("misc_drop_nades");
v1202 = nil;
l_match_0 = v151.misc.grenades;
v1289 = {};
l_angles_0 = false;
v1291 = nil;
do
    local l_l_match_0_12, l_v1289_11, l_l_angles_0_13, l_v1291_14, l_v1301_15, l_v1302_16, l_v1303_19, l_v1305_20, l_v1308_19, l_v1742_15 = l_match_0, v1289, l_angles_0, v1291, v1301, v1302, v1303, v1305, v1308, v1742;
    l_v1301_15 = function(v3482)
        -- upvalues: l_l_match_0_12 (ref)
        if v3482 == "weapon_incgrenade" or v3482 == "weapon_molotov" then
            return l_l_match_0_12.drop_nades_select:get(1);
        elseif v3482 == "weapon_smokegrenade" then
            return l_l_match_0_12.drop_nades_select:get(2);
        elseif v3482 == "weapon_hegrenade" then
            return l_l_match_0_12.drop_nades_select:get(3);
        else
            return false;
        end;
    end;
    l_v1302_16 = function(v3483)
        -- upvalues: l_v1301_15 (ref)
        local v3484 = v3483:get_weapon_info();
        if v3484.weapon_type ~= 9 then
            return false;
        elseif not l_v1301_15(v3484.console_name) then
            return false;
        else
            return true;
        end;
    end;
    l_v1303_19 = function()
        -- upvalues: l_v1289_11 (ref)
        for v3485 = 1, #l_v1289_11 do
            l_v1289_11[v3485] = nil;
        end;
    end;
    l_v1305_20 = function(v3486)
        -- upvalues: l_v1302_16 (ref), l_v1289_11 (ref)
        local v3487 = v3486:get_player_weapon(true);
        for v3488 = 1, #v3487 do
            local v3489 = v3487[v3488];
            if l_v1302_16(v3489) then
                table.insert(l_v1289_11, v3489);
            end;
        end;
    end;
    l_v1308_19 = v21("misc_drop_nades.on_createmove", function(v3490)
        -- upvalues: l_l_match_0_12 (ref), l_v1291_14 (ref), l_l_angles_0_13 (ref), l_v1303_19 (ref), l_v1305_20 (ref), l_v1289_11 (ref)
        local v3491 = entity.get_local_player();
        if v3491 == nil then
            return;
        elseif v3491:get_player_weapon() == nil then
            return;
        else
            local v3492 = l_l_match_0_12.drop_nades_bind:get();
            if l_v1291_14 ~= v3492 then
                l_v1291_14 = v3492;
                if v3492 and not l_l_angles_0_13 then
                    l_v1303_19();
                    l_v1305_20(v3491);
                    l_l_angles_0_13 = next(l_v1289_11) ~= nil;
                end;
            end;
            local v3493 = utils.net_channel();
            local v3494 = to_time(4);
            if v3493 ~= nil then
                v3494 = v3494 + v3493.latency[1];
            end;
            for v3495 = 1, #l_v1289_11 do
                local v3496 = l_v1289_11[v3495];
                do
                    if v3496 ~= nil then
                        local v3497 = v3496:get_weapon_info();
                        if v3497 ~= nil then
                            local v3498 = v3495 == #l_v1289_11;
                            utils.execute_after(v3494 * v3495, function()
                                -- upvalues: v3497 (ref), v3498 (ref), l_l_angles_0_13 (ref)
                                utils.console_exec(string.format("use %s; drop", v3497.console_name));
                                if v3498 then
                                    utils.execute_after(0.1, function()
                                        -- upvalues: l_l_angles_0_13 (ref)
                                        l_l_angles_0_13 = false;
                                    end);
                                end;
                            end);
                        end;
                    end;
                end;
            end;
            l_v1303_19();
            if l_l_angles_0_13 then
                v3490.in_use = true;
                v3490.no_choke = true;
                v3490.send_packet = true;
            end;
            return;
        end;
    end);
    l_v1742_15 = function(v3499)
        -- upvalues: l_v1303_19 (ref), l_v1308_19 (ref)
        if not v3499 then
            l_v1303_19();
        end;
        events.createmove(l_v1308_19, v3499);
    end;
    v1743 = nil;
    v1744 = function(v3500)
        -- upvalues: l_v1742_15 (ref)
        l_v1742_15(v3500:get(3));
    end;
    l_l_match_0_12.select:set_callback(v1744, true);
end;
v5("misc_ping_spike");
l_match_0 = nil;
v1289 = v151.misc.ping_spike;
l_angles_0 = ui.find("Miscellaneous", "Main", "Other", "Fake Latency");
v1291 = cvar.sv_maxunlag;
do
    local l_v1289_12, l_l_angles_0_14, l_v1291_15, l_v1301_16, l_v1302_17, l_v1303_20 = v1289, l_angles_0, v1291, v1301, v1302, v1303;
    l_v1301_16 = function()
        -- upvalues: l_l_angles_0_14 (ref), l_v1291_15 (ref)
        l_l_angles_0_14:override();
        l_l_angles_0_14:disabled(false);
        l_v1291_15:float(tonumber(l_v1291_15:string()), true);
    end;
    l_v1302_17 = function(v3507)
        -- upvalues: l_l_angles_0_14 (ref), l_v1291_15 (ref)
        l_l_angles_0_14:override(v3507);
        l_l_angles_0_14:disabled(true);
        l_v1291_15:float(0.4, true);
    end;
    l_v1303_20 = function()
        -- upvalues: l_v1301_16 (ref)
        l_v1301_16();
    end;
    on_render = v21("misc_ping_spike.on_render", on_render);
    l_v1303_20 = v21("misc_ping_spike.on_shutdown", l_v1303_20);
    v1305 = nil;
    v1308 = function(v3508)
        -- upvalues: l_v1302_17 (ref)
        l_v1302_17(v3508:get());
    end;
    do
        local l_v1308_20 = v1308;
        v1742 = function(v3510)
            -- upvalues: l_v1301_16 (ref), l_v1289_12 (ref), l_v1308_20 (ref), l_v1303_20 (ref)
            local v3511 = v3510:get();
            if not v3511 then
                l_v1301_16();
            end;
            if v3511 then
                l_v1289_12.value:set_callback(l_v1308_20, true);
            else
                l_v1289_12.value:unset_callback(l_v1308_20);
            end;
            events.shutdown(l_v1303_20, v3511);
        end;
        l_v1289_12.enabled:set_callback(v1742, true);
    end;
end;
v5("misc_unlock_fake_duck_speed");
v1289 = nil;
l_angles_0 = v151.misc.fake_duck;
v1291 = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck");
on_createmove = v21("misc_unlock_fake_duck_speed.on_createmove", on_createmove);
do
    local l_l_angles_0_15, l_v1291_16, l_v1301_17 = l_angles_0, v1291, v1301;
    l_v1301_17 = function(v3515)
        -- upvalues: l_v1291_16 (ref)
        if not l_v1291_16:get() then
            return;
        else
            local v3516 = vector(v3515.forwardmove, v3515.sidemove);
            if v3516:length() < 2 then
                return;
            else
                v3516:normalize();
                v3515.forwardmove = v3516.x * 150;
                v3515.sidemove = v3516.y * 150;
                return;
            end;
        end;
    end;
    v1302 = nil;
    v1303 = function(v3517)
        -- upvalues: l_v1301_17 (ref)
        events.createmove_run(l_v1301_17, v3517:get(1));
    end;
    do
        local l_v1303_21 = v1303;
        v1305 = function(v3519)
            -- upvalues: l_l_angles_0_15 (ref), l_v1303_21 (ref), l_v1301_17 (ref)
            local v3520 = v3519:get();
            if v3520 then
                l_l_angles_0_15.select:set_callback(l_v1303_21, true);
            else
                l_l_angles_0_15.select:unset_callback(l_v1303_21);
            end;
            if not v3520 then
                events.createmove_run(l_v1301_17, false);
            end;
        end;
        l_l_angles_0_15.enabled:set_callback(v1305, true);
    end;
end;
v5("misc_air_duck_collision");
l_angles_0 = nil;
v1291 = v151.misc.air_duck_collision;
v1301 = v21("misc_air_duck_collision.on_createmove", function(v3521)
    local v3522 = entity.get_local_player();
    if v3522 == nil then
        return;
    else
        local l_m_vecVelocity_3 = v3522.m_vecVelocity;
        local v3524 = v3522:simulate_movement();
        v3524:think();
        if l_m_vecVelocity_3.x < 30 or l_m_vecVelocity_3.z <= 0 then
            return;
        elseif not v3524.did_hit_collision then
            return;
        else
            v3521.in_duck = true;
            return;
        end;
    end;
end);
v1302 = nil;
do
    local l_v1301_18 = v1301;
    v1303 = function(v3526)
        -- upvalues: l_v1301_18 (ref)
        events.createmove(l_v1301_18, v3526:get());
    end;
    v1291.enabled:set_callback(v1303, true);
end;
v5("misc_freezetime_fake_duck");
v1291 = nil;
v1301 = v151.misc.fake_duck;
v1302 = 0;
v1303 = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots");
v1305 = ui.find("Aimbot", "Ragebot", "Main", "Double Tap");
v1308 = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck");
do
    local l_v1301_19, l_v1302_18, l_v1303_22, l_v1305_21, l_v1308_21, l_v1742_16, l_v1743_16, l_v1744_16, l_v1745_15 = v1301, v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745;
    l_v1742_16 = function()
        -- upvalues: l_v1302_18 (ref)
        if l_v1302_18 >= 14 then
            l_v1302_18 = 0;
        end;
        l_v1302_18 = l_v1302_18 + 1;
    end;
    l_v1743_16 = function()
        -- upvalues: l_v1303_22 (ref), l_v1305_21 (ref)
        l_v1303_22:override();
        l_v1305_21:override();
    end;
    l_v1744_16 = function(v3536)
        -- upvalues: l_v1303_22 (ref), l_v1305_21 (ref), l_v1308_21 (ref), l_v1742_16 (ref), l_v1302_18 (ref)
        l_v1303_22:override();
        l_v1305_21:override();
        if not l_v1308_21:get() then
            return;
        else
            local v3537 = entity.get_game_rules();
            if v3537 == nil then
                return;
            elseif not v3537.m_bFreezePeriod then
                return;
            else
                l_v1742_16();
                v3536.in_duck = l_v1302_18 > 7;
                v3536.send_packet = l_v1302_18 == 14;
                l_v1303_22:override(false);
                l_v1305_21:override(false);
                return;
            end;
        end;
    end;
    l_v1745_15 = function(v3538)
        -- upvalues: l_v1308_21 (ref)
        if not l_v1308_21:get() then
            return;
        else
            local v3539 = entity.get_game_rules();
            if v3539 == nil then
                return;
            elseif not v3539.m_bFreezePeriod then
                return;
            else
                local v3540 = entity.get_local_player();
                if v3540 == nil then
                    return;
                else
                    local v3541 = v3540:get_origin();
                    v3538.camera.z = v3541.z + 64;
                    return;
                end;
            end;
        end;
    end;
    l_v1743_16 = v21("misc_freezetime_fake_duck.on_shutdown", l_v1743_16);
    l_v1744_16 = v21("misc_freezetime_fake_duck.on_createmove", l_v1744_16);
    l_v1745_15 = v21("misc_freezetime_fake_duck.on_override_view", l_v1745_15);
    v1746 = nil;
    v1747 = function(v3542)
        -- upvalues: l_v1303_22 (ref), l_v1305_21 (ref), l_v1743_16 (ref), l_v1744_16 (ref), l_v1745_15 (ref)
        local v3543 = v3542:get(2);
        if not v3543 then
            l_v1303_22:override();
            l_v1305_21:override();
        end;
        events.shutdown(l_v1743_16, v3543);
        events.createmove(l_v1744_16, v3543);
        events.override_view(l_v1745_15, v3543);
    end;
    do
        local l_v1747_13 = v1747;
        v1748 = function(v3545)
            -- upvalues: l_v1301_19 (ref), l_v1747_13 (ref), l_v1303_22 (ref), l_v1305_21 (ref), l_v1743_16 (ref), l_v1744_16 (ref), l_v1745_15 (ref)
            local v3546 = v3545:get();
            if v3546 then
                l_v1301_19.select:set_callback(l_v1747_13, true);
            else
                l_v1301_19.select:unset_callback(l_v1747_13);
            end;
            if not v3546 then
                l_v1303_22:override();
                l_v1305_21:override();
                events.shutdown(l_v1743_16, false);
                events.createmove(l_v1744_16, false);
                events.override_view(l_v1745_15, false);
            end;
        end;
        l_v1301_19.enabled:set_callback(v1748, true);
    end;
end;
v5("misc_fps_optimize");
v1301 = nil;
v1302 = v151.misc.fps_optimize;
v1303 = false;
v1305 = {};
v1308 = function(v3547, v3548)
    return {
        convar = v3547, 
        old_value = nil, 
        new_value = v3548
    };
end;
v1305.Fog = {
    v1308(cvar.fog_enable, 0), 
    v1308(cvar.fog_enable_water_fog, 0)
};
v1305.Blood = {
    v1308(cvar.violence_hblood, 0)
};
v1305.Bloom = {
    v1308(cvar.mat_disable_bloom, 1)
};
v1305.Decals = {
    v1308(cvar.r_drawdecals, 0)
};
v1305.Shadows = {
    v1308(cvar.r_shadows, 0), 
    v1308(cvar.cl_csm_static_prop_shadows, 0), 
    v1308(cvar.cl_csm_shadows, 0), 
    v1308(cvar.cl_csm_world_shadows, 0), 
    v1308(cvar.cl_foot_contact_shadows, 0), 
    v1308(cvar.cl_csm_viewmodel_shadows, 0), 
    v1308(cvar.cl_csm_rope_shadows, 0), 
    v1308(cvar.cl_csm_sprite_shadows, 0), 
    v1308(cvar.cl_csm_translucent_shadows, 0), 
    v1308(cvar.cl_csm_entity_shadows, 0), 
    v1308(cvar.cl_csm_world_shadows_in_viewmodelcascad, 0)
};
v1305.Sprites = {
    v1308(cvar.r_drawsprites, 0)
};
v1305.Particles = {
    v1308(cvar.r_drawparticles, 0)
};
v1305.Ropes = {
    v1308(cvar.r_drawropes, 0)
};
v1305["Dynamic lights"] = {
    v1308(cvar.mat_disable_fancy_blending, 1)
};
v1305["Map details"] = {
    v1308(cvar.func_break_max_pieces, 0), 
    v1308(cvar.props_break_max_pieces, 0)
};
v1305["Weapon effects"] = {
    v1308(cvar.muzzleflash_light, 0), 
    v1308(cvar.r_drawtracers_firstperson, 0)
};
do
    local l_v1302_19, l_v1303_23, l_v1305_22, l_v1308_22, l_v1742_17, l_v1743_17, l_v1744_17, l_v1745_16 = v1302, v1303, v1305, v1308, v1742, v1743, v1744, v1745;
    l_v1308_22 = function()
        -- upvalues: l_v1302_19 (ref), v152 (ref)
        if l_v1302_19.always_on:get() then
            return true;
        elseif v152.is_peeking and l_v1302_19.detections:get("Peeking") then
            return true;
        elseif v152.is_vulnerable and l_v1302_19.detections:get("Hit Flag") then
            return true;
        else
            return false;
        end;
    end;
    l_v1742_17 = function()
        -- upvalues: l_v1303_23 (ref), l_v1305_22 (ref)
        if not l_v1303_23 then
            return;
        else
            for _, v3558 in pairs(l_v1305_22) do
                for v3559 = 1, #v3558 do
                    local v3560 = v3558[v3559];
                    local l_convar_0 = v3560.convar;
                    if v3560.old_value ~= nil then
                        l_convar_0:int(v3560.old_value);
                        v3560.old_value = nil;
                    end;
                end;
            end;
            l_v1303_23 = false;
            return;
        end;
    end;
    l_v1743_17 = function()
        -- upvalues: l_v1303_23 (ref), l_v1302_19 (ref), l_v1305_22 (ref)
        if l_v1303_23 then
            return;
        else
            local v3562 = l_v1302_19.select:get();
            for v3563 = 1, #v3562 do
                local v3564 = l_v1305_22[v3562[v3563]];
                for v3565 = 1, #v3564 do
                    local v3566 = v3564[v3565];
                    local l_convar_1 = v3566.convar;
                    if l_convar_1 ~= nil and v3566.old_value == nil then
                        v3566.old_value = l_convar_1:int();
                        l_convar_1:int(v3566.new_value);
                    end;
                end;
            end;
            l_v1303_23 = true;
            return;
        end;
    end;
    l_v1744_17 = function()
        -- upvalues: l_v1742_17 (ref)
        l_v1742_17();
    end;
    l_v1745_16 = function()
        -- upvalues: l_v1308_22 (ref), l_v1742_17 (ref), l_v1743_17 (ref)
        if not l_v1308_22() then
            return l_v1742_17();
        else
            l_v1743_17();
            return;
        end;
    end;
    l_v1744_17 = v21("misc_fps_optimize.on_shutdown", l_v1744_17);
    l_v1745_16 = v21("misc_fps_optimize.on_net_update_end", l_v1745_16);
    v1746 = nil;
    v1747 = function(_)
        -- upvalues: l_v1742_17 (ref), l_v1743_17 (ref)
        l_v1742_17();
        l_v1743_17();
    end;
    do
        local l_v1747_14 = v1747;
        v1748 = function(v3570)
            -- upvalues: l_v1302_19 (ref), l_v1747_14 (ref), l_v1742_17 (ref), l_v1744_17 (ref), l_v1745_16 (ref)
            local v3571 = v3570:get();
            if v3571 then
                l_v1302_19.select:set_callback(l_v1747_14, true);
            else
                l_v1302_19.select:unset_callback(l_v1747_14);
            end;
            if not v3571 then
                l_v1742_17();
            end;
            events.shutdown(l_v1744_17, v3571);
            events.net_update_end(l_v1745_16, v3571);
        end;
        l_v1302_19.enabled:set_callback(v1748, true);
    end;
end;
v5("misc_unmute_mute_silenced");
v1302 = nil;
v1303 = v151.misc.unmute_mute_silenced;
v1305 = utils.get_vfunc("client.dll", "GameClientExports001", 3, "void(__thiscall*)(void*, int)");
do
    local l_v1303_24, l_v1305_23, l_v1308_23, l_v1742_18 = v1303, v1305, v1308, v1742;
    l_v1308_23 = function(v3576)
        -- upvalues: l_v1305_23 (ref)
        local v3577 = entity.get_players();
        for v3578 = 1, #v3577 do
            local v3579 = v3577[v3578];
            if (v3576 ~= "Enemies" or v3579:is_enemy()) and (v3576 ~= "Teammates" or not v3579:is_enemy()) then
                l_v1305_23(v3579:get_index());
            end;
        end;
    end;
    l_v1742_18 = v21("misc_unmute_mute_silenced.on_player_connect_full", function(_)
        -- upvalues: l_v1308_23 (ref), l_v1303_24 (ref)
        l_v1308_23(l_v1303_24.mode:get());
    end);
    v1743 = nil;
    v1744 = function(v3581)
        -- upvalues: l_v1308_23 (ref)
        l_v1308_23(v3581:get());
    end;
    do
        local l_v1744_18 = v1744;
        v1745 = function(v3583)
            -- upvalues: l_v1303_24 (ref), l_v1744_18 (ref), l_v1742_18 (ref)
            local v3584 = v3583:get();
            if v3584 then
                l_v1303_24.mode:set_callback(l_v1744_18, true);
            else
                l_v1303_24.mode:unset_callback(l_v1744_18);
            end;
            events.player_connect_full(l_v1742_18, v3584);
        end;
        l_v1303_24.enabled:set_callback(v1745);
    end;
end;
v5("misc_nickname_generator");
v1303 = nil;
v1305 = v151.misc.nickname_generator;
v1308 = cvar.name;
v1742 = nil;
v1743 = {
    [1] = "\208\177\208\187\209\143 \208\189\208\190\209\128\208\188\208\176\208\187\209\140\208\189\208\190 \208\189\208\176\208\178\208\176\209\133\209\131 \208\186\209\131\208\191\208\184\208\187", 
    [2] = "\209\143 \208\178\208\181\208\185\208\191 \208\186\209\131\208\191\208\184\208\187", 
    [3] = "\209\135\208\180? \208\186\208\180?", 
    [4] = "\209\143\208\186\209\131\208\177\208\190\208\178\209\135\208\184567", 
    [5] = "\208\177\208\187\208\181\208\186 \208\176\208\189\208\179\208\181\208\187 \209\131\208\177\208\184\208\178\209\136\208\186\208\17611", 
    [6] = "\209\130\208\176\209\128\208\176\208\186\208\176\208\189 \208\180\208\184\208\189\208\184\209\129", 
    [7] = "\208\182\209\131\208\187\209\140\208\178\208\181\209\128\208\184\208\186", 
    [8] = "\209\143\209\128\208\190\209\129\209\130\208\189\209\139\208\185 \208\188\208\184\208\189\208\181\209\128\208\187\209\140\208\189\209\139\208\185 \209\135\208\181\209\135\208\181\208\189\208\181\209\134 \208\186\208\176\208\182\209\141\209\131\208\176\208\187", 
    [9] = "\209\129\208\189\208\181\208\179\208\190\208\178\208\190\208\185 \208\176\208\178\208\191\208\186\208\184\208\189\208\179\209\131\208\187\209\143", 
    [10] = "mr \208\179\208\181\208\185\208\188\208\181\209\128300", 
    [11] = "\209\133\209\129\208\176\209\142 \208\178\208\178 \209\129 \208\191\208\181\209\128\208\178\208\190\208\185 \208\191\209\131", 
    [12] = "\208\186\209\131\208\180\208\176 \208\178 \209\133\209\131\208\185", 
    [13] = "hasbik style KZ", 
    [14] = "60G AJlTaUcKuX 7oP", 
    [15] = "4\208\181 \208\178 Xy\209\1437y", 
    [16] = "\209\133\209\129\208\176\209\142 \208\180\208\176\208\182\208\181 \208\189\208\176 \209\130\208\190\208\1874\208\186\208\181", 
    [17] = "OnlyBaim gang$", 
    [18] = "\208\177\209\139\208\187 \208\178\209\139\208\181\208\177\208\176\208\189 \208\186\208\184\208\183\208\176\209\128\209\131\209\133\208\178\209\133", 
    [19] = "9PoCtHblU KUnKoG", 
    [20] = "TTu3\208\180oH\209\142x", 
    [21] = "CTaPa\209\143 Ho OTTacHeH\209\140Ka\209\143", 
    [22] = "\209\143 \208\178\209\139\208\181\208\183\208\182\208\176\209\142 \208\189\208\190\209\129\208\190\208\191\209\139\209\128\208\186\208\184", 
    [23] = "\226\156\170FasTIK\226\156\170", 
    [24] = "\208\130\206\163\198\138O\197\129\226\136\134G\226\136\134", 
    [25] = "\239\184\187\227\131\135\226\149\144\228\184\128 \226\152\173 sniper", 
    [26] = "\208\147\209\131\208\161\208\181\208\153\208\189 \208\168\208\190\208\163", 
    [27] = "o\208\159 \208\175 \208\186\208\160\209\131\208\162\208\190\208\153 \208\144 \209\130\208\171 \208\165\209\131\208\153", 
    [28] = "\209\133\209\131\209\143\209\130\208\190\209\128\209\131\208\177\208\184\208\178\208\176\209\130\208\190\209\1286731", 
    [29] = "\226\153\149\239\189\129\239\189\146\239\189\148\239\189\133\239\189\141 \239\188\145\239\188\149\239\188\148", 
    [30] = "\209\129\209\128\208\181\208\179\208\176 \208\188\208\190\208\177\208\184\208\187\208\186\208\184\208\189", 
    [31] = "\208\188\208\176\209\130\208\178\208\181\208\185 \208\186\209\128\208\176\208\177\208\190\208\178", 
    [32] = "\208\186\208\190\208\185\209\132\208\190\208\178\208\176\209\143 \208\186\209\128\208\184\208\178\208\181\209\130\208\186\208\176 \208\181\208\177\208\187\208\176\208\189\208\184\209\137\208\181", 
    [33] = "\226\156\167*:\239\189\165\239\190\159\226\156\167 \240\157\144\133\240\157\144\148\240\157\144\130\240\157\144\138 \240\157\144\152\240\157\144\142\240\157\144\148 \226\156\167*:\239\189\165\239\190\159\226\156\167", 
    [34] = "SPASIBO ZA SKEET", 
    [35] = "\240\157\144\141\240\157\144\154\240\157\144\128\240\157\144\162\240\157\144\171\240\157\144\140\240\157\144\154\240\157\144\177", 
    [36] = "\208\177\209\131\208\185\208\189\209\139\208\185 \209\129\208\187\208\176\208\178\208\184\208\186 \208\179\208\176\208\183\208\190\208\187\208\184\209\128", 
    [37] = "\208\187\209\145\208\178\208\176 \209\130\208\176\209\128\208\176\208\186\208\176\208\189-56", 
    [38] = "yKpoTuTeJlb_6a6yweK", 
    [39] = "anatoly fakeyaw", 
    [40] = "\208\146\208\176\208\187\208\181\208\189\209\130\208\184\208\189", 
    [41] = "\208\161\209\131\208\191\208\181\209\128 \208\161\208\189\208\176\208\185\208\191\208\181\209\128228", 
    [42] = "\208\151\208\176\208\186\208\176\208\183\208\176\209\130\209\140 \208\191\208\181\208\180\208\190\209\132u\208\187\208\176", 
    [43] = "\208\160\208\176\208\188\208\183\208\176\208\189 \208\154\208\176\208\180\209\139\209\128\208\190\208\178", 
    [44] = "\208\191\209\128\208\190\208\178\208\181\209\128\208\186\208\176 \208\189\208\176 \209\135\208\184\209\130\209\139", 
    [45] = "main nick FrostinoKiller228", 
    [46] = "\208\145\208\190\209\128\208\184\209\129 \208\150\208\184\208\178\208\190\209\130\208\189\208\190\208\181", 
    [47] = "bmw top", 
    [48] = "\208\148\208\184\208\188\208\176[RUS]2005", 
    [49] = "\208\184\209\129\208\187\208\176\208\188 \208\188\208\176\208\179\208\190\208\188\208\181\208\180\208\190\208\178", 
    [50] = "\208\162\208\152\208\156\208\144\208\162\208\152\208\165\208\146\208\165", 
    [51] = "eldoradohvh", 
    [52] = "\208\177\209\131\208\187\209\140\209\130\208\176\208\183\208\176\209\128", 
    [53] = "\209\143 \208\181\208\177\208\187\208\176\208\189 \208\177\208\184\208\179\208\184\209\130\208\184", 
    [54] = "pavlo.matvei98", 
    [55] = "www.CSGOSETTINGS.ru 111", 
    [56] = "\208\188\208\176\208\188\208\186\208\176\208\181\208\1772009", 
    [57] = "\209\132\209\131\208\179\208\176\209\129 \209\130\208\184\208\188\208\190\209\133\208\176", 
    [58] = "VLAD_\208\159\208\163\208\161\208\162\208\158\208\153", 
    [59] = "\208\146\208\181\208\187\208\184\208\188\208\184\209\128 (Not Cheater)", 
    [60] = "\208\158\208\191\208\144$\208\189\208\171\208\185 \208\188\208\176\209\129\209\130\208\181\209\128 \208\186\208\187\208\176\209\130\209\135\208\181\208\185 \208\187\208\181\209\133\208\176 \208\181\208\177\208\176\209\130\209\140", 
    [61] = "KirillMachine", 
    [62] = "THIS IS OMLEEEEEEET (\226\151\163\226\151\162)", 
    [63] = "soldier (\209\129\208\190\208\187\208\180\208\176\209\130)", 
    [64] = "-----= S.E.N.A.T.O.R =-----", 
    [65] = "*-\208\154\209\128Y\209\135E_\208\145\208\190\208\179\208\176_u_\208\166\208\176\208\160\209\143-*", 
    [66] = "\225\180\155\202\156\225\180\135\202\153\225\180\135s\225\180\155", 
    [67] = "\226\153\165\194\167\226\130\173\195\174\226\132\146\200\180\226\138\149\225\151\169\225\153\161\199\158\226\132\153\226\132\176\226\132\156\226\130\179\240\159\142\134", 
    [68] = "GloBal~BaNaN", 
    [69] = "Fucking.Ba[nn]Y...", 
    [70] = "d[oo]dLeZzzz...", 
    [71] = "VIP Sex Energy VIP", 
    [72] = "\240\159\165\145\240\157\149\146\240\157\149\167\240\157\149\146\240\157\149\148\240\157\149\146\240\157\149\149\240\157\149\160\240\159\165\145", 
    [73] = "\228\185\130...\240\157\148\161.\240\157\148\166.\240\157\148\168.\240\157\148\166.y...\228\185\130", 
    [74] = "\226\149\145\226\152\190 \196\166 \206\158 \226\136\128 \229\141\131 \206\163 \229\176\186\226\149\145", 
    [75] = "\229\189\161[\225\180\133\225\180\135\225\180\128\225\180\133 \225\180\139\201\170\202\159\202\159\225\180\135\202\128]\229\189\161", 
    [76] = "\202\128\225\180\135\225\180\152 \201\170\201\180s\225\180\128\201\180\225\180\135 \225\180\161\201\170\225\180\155\202\156 \225\180\128\225\180\161\225\180\152", 
    [77] = "\208\161\208\191\209\131\208\180\208\184 \208\156\209\131\208\189", 
    [78] = "\225\151\171\225\131\162\226\130\166\226\132\139\226\132\177\199\190\226\132\156", 
    [79] = "\226\152\162\196\142\226\130\179\195\145\199\164\196\146\226\132\159\226\152\162", 
    [80] = "\196\162\197\151\196\133\197\134\196\143_\226\130\165\196\133\239\174\144\197\167\206\190\197\151", 
    [81] = "F@$$$TiK...", 
    [82] = "...::::K[RAM]m[ER]::::...", 
    [83] = "\208\190\208\191\208\181\209\128 \208\190\208\186\208\176\209\143\208\189\208\189\209\139\208\185", 
    [84] = "\208\148\208\158\208\157\208\144\208\162 \208\161 PAYPAL", 
    [85] = "shelzi228", 
    [86] = "\209\132\208\176\209\128\209\136", 
    [87] = "\209\130\208\176\208\189\209\134\209\131\209\142 \208\187\208\181\208\183\208\179\208\184\208\189\208\186\209\131", 
    [88] = "OPER\209\131\208\191\208\190\208\187\208\189\208\190\208\188\208\190\209\135\208\181\208\189\208\189\209\139\208\185", 
    [89] = "2 \208\190\209\133\208\187\208\176\208\182\208\180\208\181\208\189\208\189\209\139\209\133 \209\143\208\185\209\134\208\176", 
    [90] = "\208\188\208\176\208\183\208\184\208\186 \208\190\208\186\208\176\209\143\208\189\208\189\209\139\208\185", 
    [91] = "Ballin' Maut", 
    [92] = "Balin`Shprot", 
    [93] = "MILLIONAR Balin", 
    [94] = "\208\154\208\160\208\144\208\168 \208\162\208\149\208\161\208\162 \208\156\208\144\208\160\208\154 2", 
    [95] = "\226\128\139HVH RACING", 
    [96] = "\208\186\208\187\209\131\208\177\208\189\208\184\209\135\208\189\208\190-\208\178\208\184\209\136\208\189\208\181\208\178\209\139\208\185 \209\129\208\187\208\190\208\189\209\143\209\128\208\176", 
    [97] = "\209\143\208\177\208\187\208\190\209\135\208\189\209\139\208\185 \208\179\208\184\208\191\208\190\208\191\208\190\209\130\208\176\208\188", 
    [98] = "\208\186\209\128\208\190\208\187 \209\128\208\182\208\176\209\135\208\189\209\139\208\185 \208\176\208\177\209\128\208\184\208\186\208\190\209\129\208\190\208\178\209\139\208\185", 
    [99] = "\208\144\208\179\209\128\208\181\209\129\209\129\208\184\208\178\208\189\209\139\208\185 \208\186\208\176\209\128\208\177\209\142\209\128\208\176\209\130\208\190\209\128", 
    [100] = "tw1x^zz1^aced1v1", 
    [101] = "s1mple", 
    [102] = "\234\167\129\226\132\179a\226\178\166\226\177\148\201\170\226\132\163a\225\186\149\226\177\148\201\170\226\156\158\234\167\130", 
    [103] = "\226\128\162\225\180\174\225\180\172\225\180\176\202\153\225\180\143\202\143\227\131\132", 
    [104] = "\234\167\129\224\166\148\224\167\163\226\152\172\226\156\158\240\157\147\147\240\157\150\148\240\157\150\147\226\156\158\226\152\172\224\166\148\224\167\163\234\167\130", 
    [105] = "\226\136\134\226\153\163\239\184\143JOKER\226\153\165\239\184\143\226\136\134", 
    [106] = "SpraY", 
    [107] = "\234\167\129\224\188\186\226\130\166\208\135\226\130\166\226\132\145\226\130\179\224\188\187\234\167\130", 
    [108] = "\226\158\162 I\225\180\141\225\180\141\225\180\143\202\128\225\180\155\225\180\128\202\159", 
    [109] = "\226\149\190\226\148\129\226\149\164\227\131\135\226\149\166\239\184\187 \226\130\179\226\130\173-\226\157\185\226\157\188 \240\157\147\176\240\157\147\184\240\157\147\173", 
    [110] = "\239\184\187\227\131\135\226\149\144\228\184\128GOD_SK", 
    [111] = "\240\159\133\188*\240\159\133\176\239\184\143*\240\159\134\133*\240\159\133\180*\240\159\134\129*\240\159\133\184*\240\159\133\178*\240\159\133\186", 
    [112] = "\224\188\186Le\205\165ge\205\163n\205\171d\224\188\187\225\180\179\225\181\146\225\181\136", 
    [113] = "\234\167\129\226\156\170\226\153\149BOT\226\153\149\226\156\170\234\167\130", 
    [114] = "\240\159\148\165\240\157\147\150\240\157\147\161\240\157\147\144\240\157\147\162\240\157\147\164\240\159\148\165", 
    [115] = "T\195\152XIC", 
    [116] = "\240\157\149\181\240\157\150\134\240\157\148\179\240\157\150\142\240\157\150\142 \226\156\170", 
    [117] = "\240\159\133\180\240\159\134\137\240\159\134\137 \240\159\133\189\240\159\133\190\239\184\143\240\159\133\190\239\184\143\240\159\133\177\239\184\143\240\159\134\130", 
    [118] = "\234\167\129\224\188\186J\204\189\205\147o\204\189\205\147s\204\189\205\147I\204\189\205\147\224\188\187\234\167\130", 
    [119] = "\226\153\161 AWP \226\128\147 senpai \226\151\149\226\128\191\226\151\149 [\227\131\132]", 
    [120] = "\227\131\133 [OnI-ChaN] FreSH[x]\226\152\170\239\184\143", 
    [121] = "\234\167\129\225\180\179\225\181\146\225\181\136Slayer\234\167\130", 
    [122] = "\224\188\186Le\205\165ge\205\163n\205\171d\224\188\187", 
    [123] = "\226\156\170\226\130\166\208\135\226\130\166\226\132\145\226\130\179\224\188\187\239\184\187\227\131\135\226\149\144\228\184\128", 
    [124] = ".S!ckBoY^", 
    [125] = "\240\157\149\190\240\157\150\153\240\157\150\154\240\157\150\151\240\157\150\146\240\157\149\189\240\157\150\138\240\157\150\135\240\157\150\138\240\157\150\145\240\157\150\145", 
    [126] = "\226\153\165\239\184\143\240\157\147\154\240\157\147\174\240\157\147\157\240\157\147\157\240\157\148\130\240\157\147\162\226\153\165\239\184\143", 
    [127] = "Snax", 
    [128] = "\234\167\129\224\166\148\224\167\163\226\152\172\226\156\158\240\157\147\181\240\157\147\174\240\157\147\176\240\157\147\174\240\157\147\183\240\157\147\173\203\161\225\181\146\225\181\155\225\181\137 \202\184\225\181\146\225\181\152\226\156\158\226\152\172\224\166\148\224\167\163\234\167\130", 
    [129] = "\226\153\149\209\149\208\189\209\148 \194\162\206\177\226\132\147\226\132\147 \208\188\209\148 \208\189\206\177\194\162", 
    [130] = "\226\156\170AnARcHY_", 
    [131] = "bl1tz", 
    [132] = "Carry Potter", 
    [133] = "\226\156\170TaCt1CaL", 
    [134] = "vk.com/vampire", 
    [135] = "\225\151\176E\225\151\176E \225\148\149E\225\145\142\225\148\149E", 
    [136] = "\226\128\157*\194\176\226\128\162.\226\152\133..Angel_Of_The_Night..\226\152\133.\226\128\162\194\176*\226\128\157\203\156", 
    [137] = "\195\177\198\164\195\188\206\178\194\163\207\175 \206\168\208\189\211\185\198\164\209\140 \207\175\194\163\225\131\156\209\143 \194\163\225\131\156\194\163\207\175 j\194\163\194\167\201\165\194\167", 
    [138] = "\196\153\206\178\195\163\197\130 \200\155\195\189\195\164 \226\136\154 \197\153\195\184\197\163", 
    [139] = "\229\191\141\227\129\179 1 \208\163\208\159\208\144\208\155 \227\129\179\229\191\141", 
    [140] = "MaJIeHkuu_Ho_OnacHekuu", 
    [141] = "\226\128\162\219\169\219\158\219\169[\204\178\204\133\208\159\204\178\204\133\208\190\204\178\204\133\208\155\204\178\204\133\208\174\204\178\204\133\208\177\204\178\204\133\208\144\204\178\204\133\208\161(\217\191)\204\178\204\133\208\167\204\178\204\133\208\184\204\133\208\162\204\178\204\178\208\144\208\154\204\178\204\133]\219\169\219\158\219\169\226\128\162", 
    [142] = "Y\208\177\208\152u\208\166\208\176_\208\154\209\128\208\152\208\191\208\149r\208\158\208\178", 
    [143] = "\208\162\208\181\208\191\208\181\209\128\209\140 \209\143 - \208\174\209\130\209\131\208\177\208\181\209\128 \208\158\208\188\208\187\208\181\209\130 (\226\151\163\226\151\162)", 
    [144] = "\226\146\182a\197\180\195\158 \239\184\187\227\131\135 \228\184\128 PUTIN", 
    [145] = "VAAAAAAAC \208\178 \209\135\208\176\209\130!!! (\227\129\165 \226\151\149\226\128\191\226\151\149 )", 
    [146] = "\227\129\165 \228\187\142\233\151\169\228\187\142\233\149\191\228\184\171 \228\187\168\228\186\148\233\151\169\228\186\186", 
    [147] = "+Yeb@shu_v_k@shu+", 
    [148] = "\194\163\225\131\156\195\191 \207\175\209\143", 
    [149] = "AHHAHAHHAHAHH LIFEHACK \226\153\165\239\184\143\226\153\165\239\184\143\226\153\165\239\184\143\226\153\165\239\184\143\226\153\165\239\184\143", 
    [150] = "\208\159\209\131\208\155\208\184_\208\158\209\130_\208\145\208\176\208\145\209\131\208\155\208\184", 
    [151] = "\208\159\208\176\208\160\208\181\208\157\209\140 \208\145\208\181\208\151 \209\129\208\162\209\128\208\144\209\133\208\144", 
    [152] = "\208\157.\208\149.\208\161.\208\158.\208\154.\208\160.\208\163.\208\168.\208\152.\208\156.\208\171.\208\153", 
    [153] = "KpyToI_4elOBeK", 
    [154] = "^^Stell^^::.[Pro_Game_Xom9k]", 
    [155] = "3Jlou_\208\151AdrOT", 
    [156] = "\195\177\195\188\209\171\194\164\198\164 \195\177\195\188\198\186\209\171\195\165 \207\175\195\191\198\186 \201\177\194\164\208\189\194\164\200\185\209\143", 
    [157] = "\209\143 \196\183\194\164\208\189\201\165\195\165\206\187 \207\175\206\178\194\164\194\163\195\188 \201\177\195\165\201\177\196\183\194\163 \206\178 \198\164\194\164\207\175", 
    [158] = "\226\146\182a\197\180\195\158 \239\184\187\227\131\135 \228\184\128", 
    [159] = "\208\186\208\190\208\188\209\129\208\190\208\188\208\190\208\187\209\140\209\129\208\186\208\184\208\185 \209\134\209\139\208\179\208\176\208\189", 
    [160] = "\208\189\208\190\209\129\208\176\209\130\209\139\208\185 \208\189\208\190\209\129 \209\128\208\176\208\185\208\183\208\181\208\189\208\176", 
    [161] = "\208\176\209\136\208\186\209\131\208\180\208\184\209\136\208\186\208\176 \209\129\208\190 \208\178\208\186\209\131\209\129\208\190\208\188 \209\131\209\133\208\176", 
    [162] = "pepper roni (\208\191\208\184\209\134\209\134\208\176) \209\129\208\190 \208\178\208\186\209\131\209\129\208\190\208\188 \209\129\208\188\208\181\209\130\208\176\208\189\209\139", 
    [163] = "METAN HVH", 
    [164] = "\208\168\208\146\208\149\208\148\208\161\208\154\208\152\208\153 \208\161\208\162\208\158\208\155 \208\147\208\160\208\152\208\147\208\158\208\160\208\152\208\175 \208\155\208\149\208\159\208\161\208\144", 
    [165] = "\208\144\208\144\208\144\208\144\208\144 \208\154\208\171\208\151\208\155\208\144\208\160 \208\154\208\163\208\162\208\144\208\154 \208\145\208\144\208\161 \208\144\208\168\208\144\208\155\208\144\208\156\208\144\208\157\208\144\208\144\208\144 \208\145\208\152\208\155\208\175\208\175\208\175 \208\173\208\163\208\163\208\163", 
    [166] = "Z V", 
    [167] = "\208\161\208\155\208\171\208\168\208\163 ZOV", 
    [168] = "\208\162\208\174\208\164\208\175\208\175\208\175\208\154 (\208\159\208\144\208\162\208\160\208\152\208\154)", 
    [169] = "GuGu_Zha_IIIagu", 
    [170] = "GyGaBait", 
    [171] = "ebaWu_V_KaWu (Z)", 
    [172] = "\208\156\208\144\208\156\208\152\208\157\208\158 \208\159\208\160\208\158\208\162\208\152\208\146\208\158\208\160\208\149\208\167\208\152\208\149", 
    [173] = "Nell\209\143\209\135\208\186\208\176 UwU", 
    [174] = "\208\164\208\184\208\187\209\140\208\188 \194\171\208\163\208\187\209\139\208\177\208\186\208\176\194\187", 
    [175] = "\208\154\208\190\209\130\208\187\208\181\209\130\208\190\209\129\209\139 \208\184\208\183 z\209\139\209\128\208\176", 
    [176] = "\208\154\208\176\208\186\208\176\208\190 \208\177\208\190\208\177\208\181\209\128", 
    [177] = "\208\164\208\176\208\187\209\140\209\136\208\184\208\178\208\176\209\143 \209\131\209\130\208\186\208\176", 
    [178] = "\208\160\209\139\209\129\208\186\208\176\208\189\208\184\208\181 \208\189\208\184\208\182\208\189\208\181\208\185 \209\135\208\176\209\129\209\130\208\184 \209\130\208\181\208\187\208\176", 
    [179] = "\208\179\209\131\209\129\208\181\208\185\208\189 \208\179\208\176\208\183", 
    [180] = "\209\130\209\131\208\176\208\187\208\181\209\130\208\189\209\139\208\185 \209\131\209\130\209\142\208\179", 
    [181] = "\208\147\208\176\208\183\208\190\208\178\208\176\208\189\208\184\209\143 \208\189\208\176 \209\131\208\180\208\176\209\135\209\131", 
    [182] = "\209\129\208\191\208\184\209\128\208\176\208\187\209\140 \208\188\208\176\208\189\209\139", 
    [183] = "\208\159\208\190\208\180\208\186\208\190\208\178\208\176 \209\129\209\128\208\176\208\186\208\190\209\130\208\176\208\189\208\176", 
    [184] = "\208\148\209\131\208\191\208\187\208\190 \209\133\208\190\208\188\209\143\208\186\208\176", 
    [185] = "\208\145\208\181\208\187\209\140\209\135\208\184\208\185 \208\176\209\131\208\187", 
    [186] = "\208\175\208\151\208\171\208\154 \208\162\208\149\208\155\208\144", 
    [187] = "\209\130\209\142\208\187\209\140\208\191\208\176\208\189\208\190\208\178\209\139\208\181 \208\179\208\190\209\128\209\139 \209\128\208\176\208\180\208\190\209\129\209\130\208\184", 
    [188] = "\208\161\209\139\209\128 \208\177\209\139\208\177 \209\128\209\139\209\128", 
    [189] = "\208\168\208\184\208\188\208\191\208\176\208\189Z\208\181 (\208\190\208\177\208\184\208\180\208\186\208\176)", 
    [190] = "\208\155\208\190\208\182\208\189\209\139\208\181 \208\190\209\130\209\129\209\130\208\176\208\178\208\176\208\189\208\184\209\143", 
    [191] = "\208\146\208\177\208\184\208\178 / \208\178\209\139\208\177\208\184\208\178 \208\183\209\131\208\177\208\190\208\178 \208\179.\208\163\209\128\209\142\208\191\208\184\208\189\209\129\208\186", 
    [192] = "\208\147\209\131\209\129\208\181\208\185\208\189 \208\179\208\176\208\183\209\131\208\185 \208\189\208\176\209\133", 
    [193] = "\208\151\208\181\208\189\208\184\209\134\208\176 \208\190\208\186\208\190", 
    [194] = "Zorix(csgo)", 
    [195] = "\208\159\208\184\208\180\208\181\209\128 \208\191\208\176\208\185\208\180\208\181\209\128", 
    [196] = "\208\151\209\131\208\177\209\139 \208\188\209\131\208\180\209\128\208\190\209\129\209\130\208\184", 
    [197] = "\208\169\208\181\208\186\208\190\209\130\208\189\208\190\208\181 \209\130\208\181\209\128\208\181\208\177\208\190\208\189\209\140\208\186\208\176\208\189\209\140\208\181", 
    [198] = "ZELTR1X", 
    [199] = "ZOLDY1337", 
    [200] = "K1neXj.", 
    [201] = "Evolvex", 
    [202] = "ANGELS HVH", 
    [203] = "\208\168\208\181\209\129\209\130\208\176\209\143 \208\191\209\143\209\130\208\186\208\176", 
    [204] = "\208\156\208\190\208\183\208\190\208\187\208\184\209\129\209\130\209\139\208\185 \209\136\208\176\208\187\208\190\208\191\208\176\208\185", 
    [205] = "\209\130\209\142\209\128\208\181\208\188\209\129\208\186\208\184\208\185 \209\131\208\183\209\131\209\128\208\191\208\176\209\130\208\190\209\128", 
    [206] = "\208\161\209\130\208\190\209\143\208\186 \208\191\209\139\209\133\209\130\209\131\208\189", 
    [207] = "\208\157\208\176\209\130\208\190\208\191\209\130\209\139\209\136\208\184", 
    [208] = "\208\157\208\176\208\177\209\128\208\176\208\187 \208\180\208\190\208\187\208\179\208\190\208\178", 
    [209] = "\208\151\208\176\208\177\208\184\208\178 \208\186\208\176\208\187\209\140\209\143\208\189\208\190\208\178", 
    [210] = "\208\162\209\131\209\128\208\189\208\184\209\135\208\186\208\190\208\178\208\176\209\143 \208\183\208\176\208\177\208\184\208\178\208\186\208\176", 
    [211] = "\208\162\209\128\208\181\208\189\208\184\209\128\208\190\208\178\208\186\208\176 \208\191\208\190\208\180 \208\180\208\190\208\182\208\180\208\181\208\188", 
    [212] = "\208\148\209\128\208\190\209\135\209\131 \209\129\209\130\208\190\209\143", 
    [213] = "\208\153\208\190\208\182\208\184\208\186 \208\182\209\131\209\133\208\187\209\139\208\185", 
    [214] = "\208\149\209\133\208\184\208\180\208\189\208\176\209\143 \209\133\208\176\209\128\209\143", 
    [215] = "\208\154\208\176\208\185\209\132\208\181\209\134\208\186\208\184\208\185 \208\186\209\131\208\188\208\176\209\128\209\135\208\184\208\186", 
    [216] = "\208\154\208\144\208\160\208\162\208\158\208\164\208\149\208\155\208\172", 
    [217] = "SANCHEZJ X FIPP", 
    [218] = "\208\147\208\149\208\158\208\160\208\147\208\152\208\153 \208\164\208\144\208\156\208\163\208\162\208\152\208\155\208\158\208\146", 
    [219] = "\208\144\208\151\208\144\208\151\208\144\208\151\208\144\208\151\208\144 \208\144\208\151\208\155\208\144\208\147\208\158\208\160", 
    [220] = "\208\160\208\181\208\177\208\181\208\189\208\190\208\186 \208\191\208\190\208\180\208\186\208\184\208\180\209\139\209\136\209\140", 
    [221] = "\208\148\208\149\208\162\208\152 \208\146 \208\159\208\158\208\148\208\146\208\144\208\155\208\149", 
    [222] = "\208\161\208\162\208\152\208\146\208\144\208\165\208\144", 
    [223] = "\208\164\209\128\208\190\209\129\209\130 \209\129\208\189\208\181\208\185\208\186 \208\184 \208\191\208\176\209\128\208\189\208\184\209\136\208\176", 
    [224] = "\208\162\208\152\208\156\208\158\208\164\208\149\208\153 \208\152 \208\149\208\147\208\158 \208\148\208\160\208\163\208\147 \208\159\208\172\208\175\208\157\208\171\208\153 \208\149\208\147\208\158\208\160", 
    [225] = "\208\151\208\176\208\177\208\187\208\190\208\186\208\184\209\128\208\190\208\178\208\176\208\189\208\189\209\139\208\185 \209\129\208\186\208\176\208\185\208\191", 
    [226] = "\208\148\208\158\208\154\208\162\208\158\208\160 \208\145\208\160\208\144\208\163\208\157? \209\129\208\187\209\131\209\136\208\176\209\142.", 
    [227] = "\208\144\208\160\208\158\208\156\208\144\208\162 \208\151\208\152\208\160\208\144\208\159\208\162\208\158\208\160\208\161\208\144 \208\161\208\161\208\171\208\162 \208\146 \208\160\208\144\208\154\208\158\208\146\208\152\208\157\208\163", 
    [228] = "\208\161\208\154\208\144\208\144\208\144\208\153", 
    [229] = "\208\148\208\190\208\186\209\130\208\190\209\128 \208\177\208\176\208\177\209\131\208\189", 
    [230] = "\208\189\208\184\209\130\209\128\208\176\209\130 \209\132\208\176\208\177\209\131\209\128\208\184\209\130\208\176", 
    [231] = "\209\135\208\181\209\128\208\189\208\190\208\179\208\190\208\187\208\190\208\178\208\186\208\176))", 
    [232] = "\208\161\209\129\209\139\208\186\208\176\208\189\209\140\208\181 \208\178 \209\130\208\176\208\183\208\184\208\186", 
    [233] = "\208\187\208\184\208\186\209\130\208\190\209\132\208\176\209\130 \208\189\208\176\209\130\209\128\208\184\209\143", 
    [234] = "\208\156\209\139\209\130\209\140\208\181 \208\178 \208\177\208\184\208\180\208\190\208\189\208\181", 
    [235] = "\208\189\208\184\208\191\208\190\209\128\209\130\208\176\208\188 \208\178 \209\128\208\176\208\186\208\190\208\178\208\184\208\189\208\181", 
    [236] = "\208\178\209\139\208\179\209\131\208\187\208\184\208\178\208\176\209\130\209\140 \208\186\208\190\208\187\208\177\208\176\209\129\209\131 \208\178\208\188\208\181\209\129\209\130\208\190 \209\129\208\190\208\177\208\176\208\186\208\184 \208\189\208\176 \208\177\208\176\208\187\208\186\208\190\208\189\208\181", 
    [237] = "\208\147\208\184\208\191\208\191\208\190\208\191\208\190\209\130\208\176\208\188 \209\129\209\139\209\128\208\189\209\139\208\185", 
    [238] = "\208\183\209\131\208\191\208\184\209\132\208\176\208\187\209\140\208\189\209\139\208\185 \208\189\208\176\208\183\208\176\208\187\209\140\208\189\209\139\208\185 \209\129\208\191\209\128\208\181\208\185 \208\180\208\187\209\143 \208\189\208\190\208\179\209\130\208\181\208\185", 
    [239] = "\208\159\208\184\208\180\208\190\209\128\209\129\208\186\208\184\208\181 \209\129\209\139\209\128\208\189\208\184\208\186\208\184", 
    [240] = "\208\179\208\190\208\179\208\184 \208\189\208\176 \209\131\209\128\208\190\208\179\208\184", 
    [241] = "GoGiMan777", 
    [242] = "\208\154\208\176\209\128\208\176\208\188\208\181\208\187\209\140\208\189\209\139\208\181 \208\189\208\190\208\179\208\190\209\130\208\190\209\135\208\186\208\184", 
    [243] = "\208\180\208\181\209\128\208\181\208\178\209\143\208\189\208\189\208\190\208\181 \209\143\208\177\208\187\208\190\208\186\208\190", 
    [244] = "\208\176\209\128\208\177\209\131\208\183\208\189\209\139\208\181 \209\129\208\187\208\176\208\189\209\134\209\139", 
    [245] = "hey? MACARENAA", 
    [246] = "\209\130\209\128\208\184\209\134\208\181\209\128\208\176\208\191\209\130\208\190\209\128\209\129", 
    [247] = "\208\165\208\190\209\128\208\190\209\136\208\176\209\143 \208\190\208\180\208\181\208\182\208\180\208\176", 
    [248] = "LXNER \209\128\208\181\208\191\208\184\209\128", 
    [249] = "\208\156\208\190\208\180\208\189\209\139\208\185 \208\191\209\128\208\184\208\179\208\190\208\178\208\190\209\128", 
    [250] = "\209\129\209\130\209\131\208\180\208\181\208\189\209\130", 
    [251] = "\208\160\208\181\208\187\208\184\208\183 sqwore", 
    [252] = "\209\133\208\176\208\185\208\191\208\181\209\128\208\191\208\190\208\191 \209\129\208\176\208\188\208\176\209\128\208\176", 
    [253] = "18\208\180\208\178\208\176\208\180\209\134\208\181\209\130\208\184\208\189", 
    [254] = "\208\166\208\184\209\130\209\128\209\131\209\129 \208\190\209\130 \208\183\209\131\208\180\208\176", 
    [255] = "\208\166\208\184\209\130\209\128\208\184\208\189\208\190\208\178\209\139\208\185 \208\186\208\176\209\136\208\181\208\187\209\140", 
    [256] = "\208\162\208\176\208\189\208\180\209\131\208\188 \208\178\208\181\209\128\208\180\208\181 \209\132\208\190\209\128\209\130\208\181", 
    [257] = "\208\162\208\144\208\145\208\163\208\157 \208\147\208\158\208\161\208\162\208\149\208\153", 
    [258] = "\208\158\208\155\208\149\208\147 \208\162\208\152\208\157\208\172\208\154\208\158\208\164\208\164", 
    [259] = "SAILOR MOON \208\160\208\158\208\145\208\149\208\160\208\162 \208\161 \208\144\208\160\208\145\208\163\208\151\208\158\208\156", 
    [260] = "\208\154\208\158\208\151\208\144\208\165\208\161\208\162\208\144\208\157 \208\171\208\171\208\171\208\171\208\171\208\144\208\144\208\144\208\144\208\144\208\144\208\144", 
    [261] = "\208\146\208\181\208\187\208\184\208\188\208\184\209\128 \209\129\208\191\208\184\209\128\208\184\208\180\208\190\208\189\208\190\208\178", 
    [262] = "\208\146\208\176\209\133\208\184\208\180 \208\177\208\176\208\177\208\181\208\178", 
    [263] = "\208\161\209\131\209\128\208\184\208\186\208\176\209\130\208\189\209\139\208\185 \209\130\209\131\209\136\208\186\208\176\208\189\209\135\208\184\208\186", 
    [264] = "\208\144\208\183\208\184\208\183 \209\136\208\176\208\178\208\181\209\128\209\136\209\143\208\189", 
    [265] = "\208\178\208\184\208\187\209\140\208\178\208\181\209\130\208\190\208\178\209\139\208\185 \208\190\209\129\209\140\208\188\208\184\208\189\208\190\208\179", 
    [266] = "\208\186\208\190\208\187\208\177\208\176\209\129\208\176 \209\129 \208\187\209\139\209\129\209\139\208\188 \208\188\209\131\208\182\208\184\208\186\208\190\208\188", 
    [267] = "\208\180\208\181\208\189\209\140\208\179\208\184 \208\184 \208\191\208\176\209\133\209\131\209\135\208\184\208\181 \208\189\208\190\208\179\208\184", 
    [268] = "\208\154\208\176\209\128\208\176\209\129\209\140 \209\129\208\190 \209\129\209\130\209\128\208\176\208\183\208\176\208\188\208\184", 
    [269] = "\208\160\208\171\208\145\208\144 \208\156\208\158\208\149\208\153 \208\156\208\149\208\167\208\162\208\152", 
    [270] = "\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\175\208\151\208\172", 
    [271] = "\208\162\209\131\208\189\208\181\209\134 \208\190\209\130 \209\133\208\176\208\187\208\184\208\186\208\184", 
    [272] = "\208\154\208\176\208\188\208\177\208\176\208\187\208\176 \208\178 \208\178\208\176\208\189\208\189\208\181", 
    [273] = "\208\186\208\176\208\187\209\140\209\143\208\189\208\184\208\183\208\176\209\134\208\184\209\143 \208\191\209\128\208\190\209\136\208\187\208\176 \209\131\209\129\208\191\208\181\209\136\208\189\208\190\240\159\140\185", 
    [274] = "\209\136\208\184\209\136\208\186\208\176 \208\178 \208\188\209\139\209\136\208\186\208\181", 
    [275] = "\208\159\208\187\208\190\209\130\208\189\208\190\208\181 \209\143\208\177\208\187\208\190\209\135\208\186\208\190", 
    [276] = "\208\187\208\190\208\191\208\176\209\129\209\130\208\184 \208\188\208\184\208\186\209\128\208\190\209\132\208\190\208\189\208\176", 
    [277] = "\208\154\209\131\208\188\208\176\209\128\208\189\208\176\209\143 \209\129\208\181\209\129\209\129\208\184\209\143", 
    [278] = "\208\186\208\187\208\176\208\178\208\184\208\176\209\130\209\131\209\128\208\176 \208\184\208\189\209\132\208\190\209\128\208\188\208\176\209\130\208\184\208\186\208\176", 
    [279] = "\208\159\209\128\208\190\208\177\208\184\209\128\208\186\208\176 \208\177\208\184\208\190\208\187\208\190\208\179\208\184\209\135\208\186\208\184", 
    [280] = "\208\183\208\181\208\187\208\181\208\189\208\190\208\181 \208\189\208\181\208\177\208\190 \208\178 \208\183\208\176\208\186\208\176\209\130\208\181", 
    [281] = "\209\130\208\181\208\188\208\189\208\190\208\181 \208\190\208\183\208\176\209\128\208\181\208\189\208\184\208\181 \209\130\208\181\208\191\208\187\208\176", 
    [282] = "\208\191\208\181\208\189\209\143\209\137\208\181\208\181 \209\129\209\135\208\176\209\129\209\130\209\140\208\181", 
    [283] = "\209\129\208\190 \209\129\208\186\208\184\209\130\209\131\208\187\209\140\208\186\208\190\208\185 \208\178 \208\188\208\188\209\131\208\187\209\142", 
    [284] = "\208\177\208\190\208\179\208\176\209\130\209\139\208\181 \208\178\208\190\208\187\208\190\209\129\209\139 \208\186\208\184\209\128\208\186\208\190\209\128\208\190\208\178\208\176", 
    [285] = "\208\152\208\179\209\128\208\176\209\142 \208\186\208\176\208\186 fifty", 
    [286] = "\208\186\208\190\209\128\208\190\208\178\208\176 \209\128\208\184\208\188\208\183\208\176\208\186\209\129\208\176", 
    [287] = "\208\160\208\176\208\188\208\190\208\189\209\139 \208\190\209\130 \209\129\208\181\209\128\208\181\208\179\208\184", 
    [288] = "\208\191\209\131\209\130\208\184\208\187\209\140\209\132\208\176\209\130 \208\179\209\131\208\187\209\140\208\183\208\176\208\189\209\130\208\184\209\143 (\208\191\209\128\208\184\208\178\208\181\209\130)", 
    [289] = "\209\128\208\176\209\132\209\139 \208\190\209\130 Raffaello", 
    [290] = "\208\186\209\128\208\176\209\129\208\189\208\176\209\143 \208\188\208\176\209\136\208\184\208\189\208\176 \209\129 \208\180\208\181\209\128\208\181\208\178\208\190\208\188 \208\190\209\130 \208\191\208\184\209\130\208\190\208\187\209\140\208\180\209\139", 
    [291] = "\208\159\209\128\208\184\208\186\208\190\208\187\209\140\208\189\209\139\208\185 \208\191\209\131\208\180\208\184\208\189\208\179 \208\190\209\130 \208\191\208\190\208\189\209\135\208\184\208\186\208\176", 
    [292] = "\208\186\208\190\208\182\208\176\208\189\208\176\209\143 \209\129\209\130\208\181\208\189\208\176", 
    [293] = "\208\191\208\190\208\180\209\129\209\130\208\190\208\187\209\140\208\189\209\139\208\181 \208\191\208\190\208\187\209\131\208\191\208\190\208\186\208\181\209\128\209\139", 
    [294] = "\208\176\208\188\209\129\209\130\208\181\209\128\208\180\208\176\208\188 \208\179\208\184\208\187\209\140\208\179\208\190\208\189\208\176", 
    [295] = "\208\151\208\178\208\190\208\189\208\190\208\186 \208\189\208\176 \209\131\209\128\208\190\208\186", 
    [296] = "\208\162\208\176\208\177\209\131\209\128\208\181\209\130 \208\190\209\135\208\186\208\184 \209\131\209\129\209\139", 
    [297] = "\208\167\208\184\209\130\208\176\209\142 \209\128\208\181\208\191\209\135\208\176\208\179\209\131", 
    [298] = "\208\167\208\152\208\159\208\161\208\152 \208\158\208\162 \208\160\208\149\208\157\208\149\208\147\208\144\208\162\208\144 \208\162\208\144\208\162\208\144\208\160\208\161\208\154\208\158\208\147\208\158", 
    [299] = "\208\162\208\144\208\162\208\144\208\160\208\161\208\154\208\152\208\153 MALIK163ONMYNECK", 
    [300] = "\208\157\208\158\208\146\208\171\208\153 \208\160\208\149\208\159\208\152\208\160", 
    [301] = "\208\146\208\163\208\156\208\159\208\152\208\160", 
    [302] = "\208\189\208\190\209\129\208\176\209\130\208\190\208\181 \209\131\208\181\208\177\208\184\209\137\208\181", 
    [303] = "\209\136\208\181\209\129\209\130\208\190\208\181 \209\135\209\131\208\178\209\129\209\130\208\178\208\190", 
    [304] = "\208\182\208\190\208\191\208\189\209\139\208\185 \208\191\209\128\208\181\208\180\208\184\208\186\209\130", 
    [305] = "\208\167\208\152\208\162\208\149\208\160\208\171 \208\152\208\156\208\149\208\174\208\162 6 \208\167\208\163\208\146\208\162\208\161\208\146\208\158", 
    [306] = "\208\162\208\160\208\149\208\162\208\152\208\153 \208\147\208\155\208\144\208\151 \208\157\208\144 \208\159\208\160\208\144\208\146\208\158\208\153 \208\169\208\149\208\154\208\149", 
    [307] = "\208\159\208\158\208\148\208\145\208\158\208\160\208\158\208\148\208\158\208\154 \208\146 \208\160\208\144\208\151\208\146\208\144\208\155 \208\161 \208\157\208\158\208\161\208\158\208\160\208\158\208\147\208\158\208\156", 
    [308] = "\208\147\208\157\208\152\208\155\208\158\208\153 \208\163\208\162\208\174\208\147", 
    [309] = "\208\159\208\172\208\175\208\157\208\144\208\175 \208\148\208\171\208\157\208\175", 
    [310] = "\208\145\208\149\208\168\208\149\208\157\208\171\208\153 \208\154\208\144\208\160\208\162\208\158\208\164\208\149\208\155\208\172", 
    [311] = "\208\159\209\140\209\143\208\189\209\139\208\185 \208\191\209\139\208\187\208\181\209\129\208\190\209\129", 
    [312] = "UWU GANG", 
    [313] = "\208\153\208\190\208\177\208\189\209\131\209\130\208\184\208\185 \208\181\208\182\208\184\208\186", 
    [314] = "\208\149\208\182\208\184\208\186 \208\178 \209\130\209\131\208\188\208\176\208\189\208\181", 
    [315] = "\208\156\208\176\208\189\209\131\208\187 \208\178 \208\183\208\190\208\190\208\191\208\176\209\128\208\186\208\181", 
    [316] = "\209\130\208\181\208\188\208\189\209\139\208\185 \208\178\208\176\208\187\208\181\209\130", 
    [317] = "\208\189\209\142\209\133\208\189\209\131\208\187 \208\191\208\190\208\180\208\188\209\139\209\133\208\176\209\128\208\184\208\186", 
    [318] = "\209\131\209\136\208\176\209\129\209\130\208\190 \208\177\208\190\208\187\209\140\209\136\208\184\208\181 \208\177\209\128\208\190\208\178\208\184", 
    [319] = "\208\191\208\190\209\133\208\190\208\182\209\131 \208\189\208\176 \209\143\208\189\208\180\208\181\208\186\209\129 \208\177\209\128\208\176\209\131\208\183\208\181\209\128", 
    [320] = "\208\161\208\187\208\190\208\189 \208\189\208\176 \208\186\209\128\208\190\208\186\208\190\208\180\208\184\208\187\208\181", 
    [321] = "\208\184\208\189\208\180\209\142\208\186 \208\178 \208\188\208\176\209\129\208\187\208\181", 
    [322] = "\208\177\209\131\209\128\208\180\209\142\208\186 \209\129 \208\191\209\128\208\184\208\186\208\190\208\187\208\190\208\188", 
    [323] = "\208\186\208\184\208\181\208\178\209\129\208\186\208\176\209\143 \208\186\208\190\209\130\208\187\208\181\209\130\208\176", 
    [324] = "\209\136\208\184\208\187\208\190 \208\189\208\176 \208\188\209\139\208\187\208\190", 
    [325] = "\208\145\208\176\208\177\209\131 \208\189\208\176 \208\186\208\176\208\188\208\181\208\189\209\140", 
    [326] = "\209\134\209\131\208\186\208\181\209\128\208\177\208\181\209\128\208\179 \208\191\208\176\208\189\208\183\208\181\209\128\209\132\208\176\209\131\209\129\209\130 1337", 
    [327] = "\208\183\208\176\208\191\208\190\209\128\208\190\208\182\209\140\208\181 9000", 
    [328] = "\208\156\208\190\209\129\208\186\208\178\208\184\209\135 65", 
    [329] = "\209\143 \209\135\209\130\208\190 \208\191\208\190\209\133\208\190\208\182 \208\189\208\176 \208\176\208\177\208\190\208\189\208\181\208\189\209\130\208\176", 
    [330] = "\208\161\208\181\209\128\208\181\208\179\208\176 \208\180\209\131\209\128\208\189\209\139\208\185", 
    [331] = "\208\184\208\178\208\176\208\189 \208\189\208\176\208\178\208\184", 
    [332] = "\208\158\209\130\208\178\208\181\209\130 \208\189\208\176 \209\130\208\190\208\188 \208\186\208\190\208\189\209\134\208\181", 
    [333] = "\208\161\208\178\208\181\209\130 \208\178 \208\189\208\176\209\135\208\176\208\187\208\181 \208\181\208\187\208\186\208\184", 
    [334] = "\209\129\208\181\209\128\208\179\208\181\208\185 \209\132\208\176\208\186\208\181\208\187", 
    [335] = "\209\133\209\131\208\185\208\191\208\176\209\129\209\130\209\128\208\184\208\191\209\129", 
    [336] = "\209\133\209\131\208\185\208\191\208\176\209\135\208\184\208\191\209\129", 
    [337] = "\208\165\209\131\208\185\208\191\208\176\209\129\208\190\208\187\209\140", 
    [338] = "\208\165\209\131\208\185\208\191\208\176\208\177\209\131\209\128\208\179\208\181\209\128", 
    [339] = "\208\160\208\184\209\129 \209\129 \208\186\208\176\209\129\209\139\208\188\208\176\208\186\208\190\208\188", 
    [340] = "\208\161\208\186\208\176\208\187\208\181\208\189\208\176\209\136 \208\188\208\190\209\130\209\139\208\179\208\176", 
    [341] = "\208\161\208\186\208\176\208\187\208\181\208\189\208\176\209\136 \209\130\208\176\208\186\209\139\209\136", 
    [342] = "\209\135\208\184\209\132\208\184\209\128\208\190\208\186 \209\129 \208\179\208\190\209\128\209\143\209\137\208\184\208\188 \208\186\208\190\209\130\208\190\208\188", 
    [343] = "\208\158\208\189\208\176 \209\129 \208\154\208\176\208\183\208\176\209\133\209\129\209\130\208\176\208\189\208\176", 
    [344] = "\208\157\208\176\209\129\208\178\208\176\208\185 \208\189\208\181 \208\186\208\184\208\180\208\176\208\181\208\188 \209\141\209\130\208\190 \209\133\208\176\209\128\208\176\208\188 \209\133\208\176\209\128\208\176\208\188", 
    [345] = "\209\131\209\129\208\176\209\130\208\190\208\181 \208\191\208\190\208\183\208\190\209\128\208\184\209\137\208\181", 
    [346] = "\208\163\209\130\209\128\208\181\208\189\208\189\208\184\208\185 \208\189\208\176\208\188\208\176\208\183 \208\191\208\190\208\180 \208\186\208\176\208\189\209\131\208\189 \208\189\208\190\208\178\208\190\208\179\208\190 \208\179\208\190\208\180\208\176", 
    [347] = "\208\188\209\139 \208\189\208\181 \208\180\208\181\208\187\208\176\208\181\208\188 \209\130\209\128\208\176\208\191 \208\188\209\139 \208\180\208\181\208\187\208\176\208\181\208\188 \208\177\208\190\208\187\209\140\209\136\208\184\208\181 \208\189\208\190\208\179\209\130\208\184", 
    [348] = "\209\131\208\183\208\177\208\181\208\186 \209\128\209\131\209\129\209\129\208\186\208\184\208\185", 
    [349] = "\208\157\208\176 \208\189\208\190\209\129\209\131 \208\179\208\181\209\128\208\190\208\184\208\189", 
    [350] = "\208\151\208\176\208\178\208\184\209\129\208\184\208\188\209\139\208\185 \209\129\208\176\208\188\208\190\208\178\208\176\209\128", 
    [351] = "\209\129\208\184\208\189\208\184\208\181 \208\178\208\190\208\187\208\190\209\129\209\139 \208\191\208\190\208\186\208\190\209\128\208\184\208\187\208\184 \208\189\208\181\208\177\208\190", 
    [352] = "ZV \209\136\208\188\208\176\208\187\209\140 \208\178 \208\191\208\187\208\181\209\135\208\181", 
    [353] = "\208\148\208\181\209\132\208\181\208\186\209\130\208\189\209\139\208\185 \208\191\208\181\209\128\209\132\208\190\209\128\208\176\209\130\208\190\209\128", 
    [354] = "\209\129\208\176\208\188\208\190\208\178\209\139\209\128\208\176\208\182\208\176\209\142\209\137\208\184\208\185 \208\189\208\184\208\186\209\129\208\178\208\176\209\128", 
    [355] = "\208\189\208\176\209\129\209\130\208\190\209\143\209\137\208\184\208\185 \208\191\209\131\208\177\208\181\209\128\209\130\208\176\208\189\209\130", 
    [356] = "Gloria damn", 
    [357] = "\208\176\208\189\209\130\208\190\208\187\208\190\208\179\208\184\209\143 \208\176\208\189\209\130\208\190\208\189\208\176", 
    [358] = "gloria fuck", 
    [359] = "cocki \209\143\208\186\208\184", 
    [360] = "\208\186\208\184\209\130\208\176\208\185\209\129\208\186\208\184\208\185 \209\128\208\181\208\191", 
    [361] = "\209\134\209\131\209\132\208\176\208\189\208\183\209\142 \209\132\208\176\208\188\208\181\209\128\208\179\208\181 (\209\133\208\178\209\133)", 
    [362] = "\208\186\209\131\209\130\208\176\208\187\208\177\209\139\208\186 \209\136\209\131\209\128\208\176\208\177\208\183\208\184\208\186", 
    [363] = "\209\130\209\131\208\191\208\190\208\185 \209\131\209\128\208\190\208\180", 
    [364] = "\209\129\209\131\208\188\208\186\208\176 \209\129\208\190 \208\178\208\186\209\131\209\129\208\190\208\188 \208\178\208\184\209\130\208\176\208\187\209\140\208\186\208\184", 
    [365] = "\209\135\208\181\209\128\208\181\208\191\208\176 \208\178 \208\176\209\132\208\179\208\176\208\189\208\184\209\129\209\130\208\176\208\189\208\181 \208\191\209\140\209\142\209\130 \208\188\208\184\208\186\209\128\208\190\209\132\208\190\208\189", 
    [366] = "\208\191\208\184\209\130\209\140 \208\181\208\180\209\131 \208\181\209\129\209\130\209\140 \208\178\208\190\208\180\209\131", 
    [367] = "\208\182\208\181\208\187\209\130\208\190\208\178\208\190\208\187\208\190\209\129\209\139\208\185 \208\191\208\176\209\129\208\191\208\190\209\128\209\130", 
    [368] = "\208\191\208\184\208\183\208\180\208\181\209\134 \208\188\208\181\208\189\209\143 \209\128\208\176\209\129\208\191\208\181\209\128\208\187\208\190 \208\189\208\176\209\133\209\131\208\185 \209\135\208\181\208\187", 
    [369] = "\208\151\208\176\208\187\208\190\208\179 \209\131\209\129\208\191\208\181\209\133\208\190\208\178", 
    [370] = "\208\160\209\139\208\177\208\176 \208\178 \208\186\208\187\209\143\209\128\208\181", 
    [371] = "\208\147\209\128\208\190\208\188\208\190\209\132\208\190\208\189", 
    [372] = "\208\168\209\131\208\177\208\176 \208\191\208\190\208\180 \209\129\208\181\208\187\208\181\208\180\208\186\208\190\208\185", 
    [373] = "\208\156\208\176\208\189\209\131\208\176\208\187 \208\191\208\190 \208\188\208\176\208\189\209\131\208\187\208\176\208\188", 
    [374] = "\208\157\208\152\208\154\208\158\208\147\208\148\208\144 \208\157\208\149 \208\159\208\160\208\158\208\152\208\147\208\160\208\171\208\146\208\144\208\162\208\172", 
    [375] = "\208\159\209\143\209\130\209\140\208\180\208\181\209\129\209\143\209\130", 
    [376] = "\209\129\208\181\208\188\209\140\209\129\208\190\209\130 \208\180\208\181\209\129\209\143\209\130\209\140", 
    [377] = "\208\179\209\128\209\143\208\188 \208\176\209\128\208\177\209\131\209\129\208\176", 
    [378] = "\208\178\208\181\209\129 \209\133\208\176\209\135\208\176", 
    [379] = "1\209\133\208\177\208\181\209\130", 
    [380] = "yamete kudasai ^^", 
    [381] = "\208\159\209\128\208\184\208\181\209\133\208\176\208\187\208\176 \209\135\208\184\209\133\209\131\208\176\209\133\209\131\208\176", 
    [382] = "\209\135\208\184\209\133\208\189\209\131\208\187 \208\177\208\181\208\183 \209\129\208\187\208\181\208\183", 
    [383] = "\208\176\208\187\209\140\208\191\208\181\208\189\208\184\209\129\209\130 \208\178 \208\191\208\181\209\129\208\186\208\181", 
    [384] = "\208\145\208\176\208\189\208\176\208\189\208\190\208\178\209\139\208\185 \209\128\208\176\208\185", 
    [385] = "\208\150\208\181\208\187\209\130\208\190\208\186 \208\189\208\176 \209\135\208\184\208\187\208\184\208\191\208\184\208\183\208\180\209\128\208\184\208\186\208\181", 
    [386] = "\208\147\208\190\208\178\208\190\209\128\209\143\209\137\208\184\208\185 \208\191\208\190\209\128\209\130\209\129\208\184\208\179\208\176\209\128", 
    [387] = "\208\159\208\181\209\128\208\181\208\178\208\181\209\128\208\189\209\131\209\130\208\176\209\143 \208\186\208\176\208\189\208\176\209\128\208\181\208\185\208\186\208\176", 
    [388] = "\208\182\208\181\209\129\209\130\208\186\208\184\208\185 \208\186\208\184\208\189\208\190\209\130\208\181\208\176\209\130\209\128", 
    [389] = "\208\151\208\184\208\188\208\189\208\181\208\181 \208\187\208\181\209\130\208\190", 
    [390] = "\209\130\209\128\208\181\209\130\208\184\208\185 \208\191\208\190\208\180\208\177\208\190\209\128\208\190\208\180\208\190\208\186", 
    [391] = "\208\155\209\140\209\142 \208\187\208\184\208\188\208\190\208\189\208\176\208\180 \208\188\208\184\208\188\208\190 \209\128\209\130\208\176", 
    [392] = "\208\159\208\181\209\128\208\181\208\183\208\176\209\128\209\143\208\182\208\176\209\142 \208\186\208\181\209\132\208\184\209\128", 
    [393] = "\208\186\208\176\209\136\208\187\209\143\209\142 \209\133\209\141\209\136\208\181\208\188", 
    [394] = "\208\156\208\190\208\187\208\190\208\186\208\190 2 \208\187\208\184\209\130\209\128\208\176", 
    [395] = "\208\186\208\190\208\187\208\177\208\176\209\129\208\176 \209\129 \208\186\208\176\208\191\209\131\209\129\209\130\208\190\208\185 \208\180\208\176 \208\181\209\137\208\181 \208\184 \209\129 \208\191\208\181\209\135\208\181\208\189\209\140\208\181\208\188", 
    [396] = "\208\180\208\176 \208\184 \208\178 \208\191\209\128\208\184\208\186\209\131\209\129\208\186\209\131 cock\208\176 \208\186\208\190\208\187\208\176", 
    [397] = "\208\165\208\184\209\130\209\128\209\139\208\185 \208\186\209\129\208\184\208\188\208\184", 
    [398] = "\208\157\208\190\208\178\208\190\208\188\208\190\208\180\208\189\209\139\208\185 vertu", 
    [399] = "\208\184\208\189\209\130\208\181\209\128\208\189\208\181\209\130 \208\186\208\176\208\177\208\181\208\187\209\140", 
    [400] = "\208\162\208\181\208\187\208\181\209\132\208\190\208\189\208\189\209\139\208\185 \209\136\208\189\209\131\209\128", 
    [401] = "\209\136\208\189\209\131\209\128 \208\180\208\187\209\143 \208\177\209\128\208\184\209\130\209\140\209\143", 
    [402] = "\208\145\208\176\209\128\208\176\208\177\208\176\209\136\208\186\208\176 \208\177\208\181\208\183 \208\186\208\176\209\130\209\131\209\136\208\181\208\186", 
    [403] = "\208\156\208\190\208\186\209\128\208\190\208\181 \208\177\208\181\208\187\209\140\208\181", 
    [404] = "\209\143\208\185\209\134\208\190 \209\129\208\190 \209\129\209\130\209\128\208\184\208\191\209\129\208\190\208\188 \208\178 \209\131\209\133\208\181", 
    [405] = "\208\188\208\190\208\184 \208\188\209\139\209\129\208\187\208\181 \208\189\208\176 \208\188\209\139\208\187\208\181 \208\190\208\189\208\184 so low", 
    [406] = "\208\146 \208\167\208\149\208\160\208\157\208\158\208\156 \208\161\208\159\208\152\208\161\208\154\208\149", 
    [407] = "\209\130\208\184\208\186\208\184 \209\130\208\190\208\186\208\184 \208\190\209\130 \208\177\209\131\209\128\208\188\208\176\208\187\208\180\209\139", 
    [408] = "\209\131\209\136\208\176\209\129\209\130\209\139\208\185 \209\136\208\190\208\186\208\190\208\187\208\176\208\180", 
    [409] = "\208\188\209\139\209\136\208\186\208\176 \208\187\208\190\208\179\208\184YECH", 
    [410] = "MinYEAT", 
    [411] = "\208\156\208\152\208\157\208\172\208\149\208\162", 
    [412] = "\208\147\208\176\209\128\208\184\208\186 \208\180\208\190 \209\135\208\181\208\187\209\142\209\129\209\130\208\184", 
    [413] = "\208\158\208\177\208\184\208\180\209\135\208\181\208\178\209\139\208\185 \209\136\208\186\208\190\208\187\209\140\208\189\208\184\208\186", 
    [414] = "\208\159\208\144\208\145\208\144\208\154\208\144 \208\163\208\155\208\171\208\145\208\144\208\154\208\144", 
    [415] = "\208\163\208\165-\208\162\208\171-\208\150-\208\153\208\158!", 
    [416] = "\208\149\209\130\208\184\208\182\208\184 \208\191\208\176\209\129\209\129\208\176\209\130\208\184\208\182\208\184", 
    [417] = "\208\168\208\184\208\187\208\190 \208\178 \209\128\209\139\208\187\208\190", 
    [418] = "\208\155\208\176\208\185\209\132 \208\178 \208\186\208\176\208\185\209\132", 
    [419] = "\208\154\208\144\208\153\208\164 \208\155\208\144\208\153\208\164", 
    [420] = "Zahar bobr", 
    [421] = "\208\146\208\181\209\128\208\176 \208\178 \208\183\208\176\208\188\208\176\209\143", 
    [422] = "15 \208\179\208\190\208\180 \209\141\209\130\208\190 \208\178\208\176\208\182\208\189\208\190", 
    [423] = "\208\154\208\190\208\187\209\143 \209\133\208\181\208\185\209\130\208\181\209\128", 
    [424] = "\208\191\208\184\209\129\209\142\208\189\208\184\209\129\209\130\209\139\208\185 \209\132\208\176\208\186\209\131\208\187\209\140\209\130\208\181\209\130", 
    [425] = "\208\178\209\129\208\181\208\188 \209\129\208\191\208\176\209\130\209\140", 
    [426] = "\208\178\208\181\208\187\209\140\208\178\208\181\209\130\208\190\208\178\209\139\208\185 \208\190\209\129\209\140\208\188\208\184\208\189\208\190\208\179", 
    [427] = "\208\188\209\143\209\129\208\189\208\190\208\185 \208\188\208\181\208\180\208\178\208\181\208\180", 
    [428] = "first day with neverlose.cc", 
    [429] = "https://vk.com/avtopodborkazahstan", 
    [430] = "\208\163\209\129\208\191\208\181\209\136\208\189\209\139\208\185 \208\176\208\178\209\130\208\190\208\188\208\190\208\177\208\184\208\187\208\184\209\129\209\130", 
    [431] = "\208\176\208\178\209\130\208\190\208\191\208\190\208\180\208\177\208\190\209\128 KZ", 
    [432] = "\208\145\208\176\208\183\208\190\208\178\208\176\209\143 \208\184 \208\191\208\190\208\187\208\189\208\176\209\143", 
    [433] = "\208\188\208\176\208\185 \208\176\208\187\208\188\208\176\208\185\208\180\209\139!", 
    [434] = "\208\144\209\129\209\130\209\139 \209\130\208\176\208\183\208\176, \209\129\209\130\208\176\208\186\208\176\208\189\208\180\208\176\209\128\209\139 \209\129\208\176\209\131"
};
do
    local l_v1305_24, l_v1308_24, l_v1742_19, l_v1743_18, l_v1744_19, l_v1745_17 = v1305, v1308, v1742, v1743, v1744, v1745;
    l_v1744_19 = function()
        -- upvalues: l_v1742_19 (ref)
        if l_v1742_19 == nil then
            return;
        else
            common.set_name(l_v1742_19);
            l_v1742_19 = nil;
            return;
        end;
    end;
    l_v1745_17 = v21("misc_nickname.on_shutdown", function()
        -- upvalues: l_v1744_19 (ref)
        l_v1744_19();
    end);
    v1746 = nil;
    v1747 = function()
        -- upvalues: l_v1742_19 (ref), l_v1308_24 (ref), l_v1305_24 (ref), l_v1745_17 (ref)
        if l_v1742_19 == nil then
            l_v1742_19 = l_v1308_24:string();
        end;
        common.set_name(l_v1305_24.input:get());
        events.shutdown(l_v1745_17, true);
    end;
    v1748 = function()
        -- upvalues: l_v1744_19 (ref), l_v1745_17 (ref)
        l_v1744_19();
        events.shutdown(l_v1745_17, false);
    end;
    v1749 = function()
        -- upvalues: l_v1743_18 (ref), l_v1305_24 (ref)
        local v3591 = l_v1743_18[math.random(1, #l_v1743_18)];
        if v3591 ~= nil then
            l_v1305_24.input:set(v3591);
        end;
    end;
    l_v1305_24.set_button:set_callback(v1747);
    l_v1305_24.reset_button:set_callback(v1748);
    l_v1305_24.generate_button:set_callback(v1749);
end;
v5("misc_no_fall_damage");
v1305 = nil;
v1308 = v151.misc.no_fall_damage;
v1742 = false;
v1743 = function(v3592, v3593)
    local v3594 = v3592:get_origin();
    for v3595 = 0, math.pi * 2, math.pi * 2 / 8 do
        local v3596 = math.sin(v3595);
        local v3597 = math.cos(v3595);
        local v3598 = v3594 + vector(10 * v3597, 10 * v3596, 0);
        local v3599 = v3598 - vector(0, 0, v3593);
        if utils.trace_line(v3598, v3599, v3592).fraction ~= 1 then
            return true;
        end;
    end;
    return false;
end;
do
    local l_v1742_20, l_v1743_19, l_v1744_20 = v1742, v1743, v1744;
    l_v1744_20 = v21("misc_no_fall_damage.on_createmove", function(v3603)
        -- upvalues: l_v1742_20 (ref), l_v1743_19 (ref)
        local v3604 = entity.get_local_player();
        if v3604 == nil then
            return;
        else
            if v3604.m_vecVelocity.z >= -500 then
                l_v1742_20 = false;
            elseif l_v1743_19(v3604, 15) then
                l_v1742_20 = false;
            elseif l_v1743_19(v3604, 75) then
                l_v1742_20 = true;
            end;
            if v3604.m_vecVelocity.z < -500 then
                v3603.in_duck = l_v1742_20;
            end;
            return;
        end;
    end);
    v1745 = nil;
    v1746 = function(v3605)
        -- upvalues: l_v1744_20 (ref)
        events.createmove(l_v1744_20, v3605:get());
    end;
    v1308.enabled:set_callback(v1746, true);
end;
v5("misc_fast_ladder");
v1308 = nil;
v1742 = v151.misc.fast_ladder;
v1743 = 9;
do
    local l_v1743_20, l_v1744_21 = v1743, v1744;
    l_v1744_21 = v21("misc_fast_ladder.on_createmove", function(v3608)
        -- upvalues: l_v1743_20 (ref), v137 (ref), v17 (ref)
        local v3609 = entity.get_local_player();
        if v3609 == nil then
            return;
        elseif v3609.m_MoveType ~= l_v1743_20 then
            return;
        else
            local v3610 = v137.camera_angles();
            v3608.view_angles.y = v17(v3608.view_angles.y);
            v3608.view_angles.z = 0;
            if v3608.forwardmove > 0 and v3610.x < 45 then
                v3608.view_angles.x = 89;
                v3608.in_moveright = 1;
                v3608.in_moveleft = 0;
                v3608.in_forward = 0;
                v3608.in_back = 1;
                if v3608.sidemove == 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 90;
                end;
                if v3608.sidemove < 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 150;
                end;
                if v3608.sidemove > 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 30;
                end;
            elseif v3608.forwardmove < 0 then
                v3608.view_angles.x = 89;
                v3608.in_moveleft = 1;
                v3608.in_moveright = 0;
                v3608.in_forward = 1;
                v3608.in_back = 0;
                if v3608.sidemove == 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 90;
                end;
                if v3608.sidemove > 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 150;
                end;
                if v3608.sidemove < 0 then
                    v3608.view_angles.y = v3608.view_angles.y + 30;
                end;
            end;
            return;
        end;
    end);
    v1745 = nil;
    v1746 = function(v3611)
        -- upvalues: l_v1744_21 (ref)
        events.createmove(l_v1744_21, v3611:get());
    end;
    v1742.enabled:set_callback(v1746, true);
end;
