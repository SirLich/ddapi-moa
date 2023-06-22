
local gameObject = mjrequire "common/gameObject"

local mod = {
    loadOrder = 1,
}

function mod:onload(planHelper)
    planHelper.huntPlanInfosByObjectType[gameObject.types.moa.index] = planHelper.spearHuntingInfo
end

return mod