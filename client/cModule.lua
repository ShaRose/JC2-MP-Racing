
parachuteActions = {}
parachuteActions[Action.ActivateParachuteThrusters] = true
parachuteActions[Action.ExitToStuntposParachute] = true
parachuteActions[Action.ParachuteOpenClose] = true
parachuteActions[Action.ParachuteLandOnVehicle] = true
parachuteActions[Action.StuntposToParachute] = true
parachuteActions[Action.DeployParachuteWhileReelingAction] = true

function ModulesLoad()
	
	-- Add us to the help menu.
	local args = {}
	args.name = settings.gamemodeName
	args.text = settings.gamemodeDescription
	Events:Fire("HelpAddItem" , args)
	
end

function ModuleUnload()
	
	-- Remove us from the help menu.
	local args = {}
	args.name = settings.gamemodeName
	Events:Fire("HelpRemoveItem" , args)
	
end

Events:Subscribe("ModulesLoad" , ModulesLoad)
Events:Subscribe("ModuleUnload" , ModuleUnload)

Network:Subscribe(
	"Initialize" ,
	function(args)
		local race = Race(args)
	end
)
