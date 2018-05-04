modelTypes.ExtremeFlight_Edge540 = 
{

	-- header

	name = "Edge 540T",
	type = "Airplane",
	amphibious = 0,
	manufacturer = "Extreme Flight",
	revision = 1.0,
	formatVersion = "5.0.c",
	minProgramVersion = "5.0.a",
	description = "48 inch aerobatic/96 inch 3D performance/96 inch sport airplane",
	physics = physics.airplane,

	class = "Airplanes",
	subclass = "Performance",
	style = "3D",
	power = "Electric",
	level = "Advanced",

	supportsTrainingGear = 0,


	nodeCount = 54,


	-- main attributes

	attributes =
	{
		Physical =
		{
			Setup = 50.0,
			Size = 1.22,
			Weight = 1.3,
			Robustness = 100.0,
			Centre_of_gravity = { x = 0.0, y = 11.401451, z = -2.008926 },
			Inertia = { yaw = 1.0, pitch = 1.0, roll = 1.0 },
			Fuselage_drag_area = { frontal = 0.05, lateral = 0.05, vertical = 0.05 },
			Fuel_Time = 0.0,
			Has_Training_Gear = 0,
			Flip_Rudder_And_Ailerons = 0,
			Cockpit = "Jet_Fighter",
		},

		Fine_tuning =
		{
			Thrust = 100.0,
			Lift = 100.0,
			Engine = 100.0,
			Stall = 100.0,
			Dihedral = 100.0,
			Elevator = 100.0,
			Aileron = 100.0,
			Rudder = 100.0,
			Wash = 100.0,
			Ground_Torque_Effect = 100.0,
		},

		Controls =
		{
			Throttle =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Elevator =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Aileron =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Rudder =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
				Mix =
				{
						Input = "None",
						Amount = 0.0,
				},

			},

			Collective =
			{
				Low_Rate = 50.0,
				Expo = 0.0,
				Expo_Low_Rate = 0.0,
				Servo_Speed = 25.0,
				Servo_Dead_Zone = 0.0,
				Trim = 0.0,
			},

		},

	},

	body =
	{
		material = "Wood",

		geometry = 
		{

			"ServoELEV_Cube.004",
			"WheelHolder_Plane.008",
			"Canopy_Plane.004",
			"Crowling_Plane.003",
			"Fuse_Plane",
		},

		collision = 
		{

			{ name = "CanopyCol_Plane.018", material = "Inherit", type = "mesh", node = "Canopy_Plane.004", x = 0.0, y = -0.000002, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
			{ name = "FuseCol_Plane.017", material = "Inherit", type = "mesh", node = "Fuse_Plane", x = 0.0, y = -0.000002, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
			{ name = "CrowlingCol_Plane.016", material = "Inherit", type = "mesh", node = "Crowling_Plane.003", x = 0.0, y = -0.000001, z = -0.000004, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
		},

	},

	airfoils = 
	{

		{
			name = "Wings",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = 3.978002, y = 15.493413, z = 7.960947 },
				Length = 0.549,
				Root_chord = 0.2745,
				Tip_chord = 0.18544,
				Airfoil = "NACA 0015",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 0.0,
				Sweep = 0.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"WingLeft_Plane.005",
						"ServorAileLeft_Cube.008",
					},

					collision = 
					{

						{ name = "WingLeftCol_Plane.014", material = "Inherit", type = "mesh", node = "WingLeft_Plane.005", x = 0.0, y = 0.0, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
					},

				},

				{

					geometry = 
					{

						"WingRight_Plane.001",
						"ServorAileRight_Cube.003",
					},

					collision = 
					{

						{ name = "WingRightCol_Plane.015", material = "Inherit", type = "mesh", node = "WingRight_Plane.001", x = 0.0, y = 0.0, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Ailerons",
					root_pivot = { x = 8.810184, y = 16.238354, z = -8.357361 },
					tip_pivot = { x = 48.786316, y = 16.057295, z = -3.543307 },

					attributes =
					{
						Input = "Left Aileron",
						Length = 0.488,
						Tip_distance = 0.0,
						Root_chord = 0.073,
						Tip_chord = 0.07,
						Min_travel = 20.0,
						Max_travel = 20.0,
					},

					sides =
					{
						{

							"AileronLeft_Plane.009",
						},

						{

							"AileronRight_Plane.002",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Tail",
			isBreakable = 1,
			isMirrored = 1,

			attributes =
			{
				Position = { x = -0.043109, y = 16.675817, z = -44.844093 },
				Length = 0.244,
				Root_chord = 0.1952,
				Tip_chord = 0.1342,
				Airfoil = "Flat Profile",
				Incidence = -1.0,
				Washout = 0.0,
				Dihedral = 0.0,
				Sweep = 10.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"StabLeft_Plane.012",
					},

					collision = 
					{

						{ name = "StabLeftCol_Plane.019", material = "Inherit", type = "mesh", node = "StabLeft_Plane.012", x = 0.0, y = 0.0, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
					},

				},

				{

					geometry = 
					{

						"StabRight_Plane.006",
					},

					collision = 
					{

						{ name = "StabRightCol_Plane.020", material = "Inherit", type = "mesh", node = "StabRight_Plane.006", x = 0.0, y = 0.0, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 1.0 },
					},

				},

			},

			controlSurfaces = {

				{
					name = "Elevator",
					root_pivot = { x = 0.814053, y = 16.741404, z = -53.180916 },
					tip_pivot = { x = 15.373185, y = 16.707396, z = -53.180016 },

					attributes =
					{
						Input = "Left Elevator",
						Length = 0.244,
						Tip_distance = 0.0,
						Root_chord = 0.12,
						Tip_chord = 0.1,
						Min_travel = 20.0,
						Max_travel = 20.0,
					},

					sides =
					{
						{

							"ElevatorLeft_Plane.007",
						},

						{

							"ElevatorRight_Plane.011",
						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},

		{
			name = "Fin",
			isBreakable = 1,
			isMirrored = 0,

			attributes =
			{
				Position = { x = 0.002031, y = 11.116888, z = -43.828457 },
				Length = 0.28,
				Root_chord = 0.27,
				Tip_chord = 0.1,
				Airfoil = "Flat Profile",
				Incidence = 0.0,
				Washout = 0.0,
				Dihedral = 90.0,
				Sweep = 22.0,
				Robustness = 100.0,
				Wash = 100.0,
				Trim = { min = 0.0, max = 0.0 },
			},

			sides =
			{
				{

					geometry = 
					{

					},

					collision = 
					{

					},

				},

			},

			controlSurfaces = {

				{
					name = "Rudder",
					root_pivot = { x = 0.001078, y = 10.935743, z = -53.643761 },
					tip_pivot = { x = 0.01575, y = 26.330906, z = -53.638355 },

					attributes =
					{
						Input = "Rudder",
						Length = 0.28,
						Tip_distance = 0.0,
						Root_chord = 0.15,
						Tip_chord = 0.1,
						Min_travel = 25.0,
						Max_travel = 25.0,
					},

					sides =
					{
						{

							"Rudder_Plane.010",
						},

						{

						},

					},

				},

			},

			flaps = {

			},

			airbrakes = {

			},

		},
	},

	propulsion = 
	{

		{
			name = "Propulsion",
			type = "propeller",
			pivot = { x = 0.0, y = 17.233873, z = 29.325455 },
			angle = -89.632019,
			spinDirection = 1,
			pusher = 0,
			folding = 0,
			blurRadius = 12.766183,
			blurTexture = "None",

			attributes =
			{
				Position = { x = 0.0, y = 17.233873, z = 29.325455 },
				Diameter = 0.366,
				Pitch = 0.185928,
				Blade_count = 2,
				Idle_RPM = 0,
				Max_RPM = 11000,
				Down_thrust = 0.0,
				Right_thrust = 0.0,
				Torque = 100.0,
				Response = { load = 1.0, unload = 1.0 },
				Engine = "Medium electric",
				Volume_Tuning = 100.0,
				Pitch_Tuning = 70.0,
			},

			spinGeometry = 
			{

				"Spinner_Cylinder",
			},

			blurGeometry = 
			{

				"Propeller_Plane.013",
			},

			exhaust = 
			{
				{
					name = "Exhaust port",
					position = { x = 0.0, y = 10.0, z = 20.0 },
					vector = { x = 0.0, y = -0.984817, z = -0.173598 },

					attributes =
					{
						Engine_Smoke = 0,
						Engine_Smoke_Intensity = 100.0,
						Display_Smoke = 1,
						Display_Smoke_Colour = { r = 255, g = 255, b = 255, a = 255 },
					},


				},
			},

		},

	},

	gear = 
	{

		{
			name = "Main gear",
			root_pivot = { x = 4.542058, y = 9.541137, z = 8.273417 },
			tip_pivot = { x = 9.584684, y = 2.315749, z = 9.327891 },
			isBreakable = 1,
			mirrored = 1,
			isGuide = 0,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 20.0,
				Robustness = 100.0,
				Stiffness = 100.0,
				Friction = { frontal = 100.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"LandingGearLeft_Cube.002",
					},

					collision = 
					{

						{ name = "LandingGearLeftCol_Cube.009", material = "Inherit", type = "mesh", node = "LandingGearLeft_Cube.002", x = -0.000014, y = 0.000007, z = 0.0, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 0.999998 },
					},

				},

				{

					geometry = 
					{

						"LendingGearRight_Cylinder.002",
					},

					collision = 
					{

						{ name = "LendingGearRightCol_Cylinder.004", material = "Inherit", type = "mesh", node = "LendingGearRight_Cylinder.002", x = -0.000028, y = 0.000007, z = -0.000001, rot_x = 0.0, rot_y = 0.0, rot_z = 0.0, rot_w = 0.999998 },
					},

				},

			},

			wheels = 
			{

				{
					name = "Main wheels",
					pivot = { x = 10.589432, y = 2.034323, z = 9.424048 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 1.950014,

					sides =
					{
						{

							"MainWheelLeft_Cylinder.005",
						},

						{

							"MainWheelRight_Cylinder.001",
						},

					},

				},

			},

		},

		{
			name = "Rear gear",
			root_pivot = { x = 0.002443, y = 10.364981, z = -52.726421 },
			tip_pivot = { x = 0.003159, y = 9.457644, z = -53.176178 },
			isBreakable = 1,
			mirrored = 0,
			isGuide = 1,
			guideDirection = 0,
			isRetractable = 0,
			changeTime = 1000.0,
			idle = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			mid = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },
			full = { x = 0.0, y = 0.0, z = 0.0, angle = 0.0 },

			attributes =
			{
				Guide_travel = 20.0,
				Robustness = 100.0,
				Stiffness = 100.0,
				Friction = { frontal = 100.0, lateral = 100.0 },
			},

			sides =
			{
				{

					geometry = 
					{

						"TailWheel.001_Cylinder.006",
					},

					collision = 
					{

					},

				},

			},

			wheels = 
			{

				{
					name = "Rear wheel",
					pivot = { x = 0.002577, y = 8.494268, z = -55.617886 },
					axis = { x = 1.0, y = 0.0, z = 0.0 },
					width = 1.0,
					radius = 1.187097,

					sides =
					{
						{

							"TailWheel_Cylinder.",
						},

					},

				},

			},

		},

	},

	streamers = 
	{

		{
			name = "Left streamer",
			position = { x = 49.389305, y = 15.655615, z = -7.374138 },


			attributes =
			{
				Enabled = 0,
				Length = 10.0,
				Colour = { r = 255, g = 255, b = 255, a = 255 },
			},

		},
		{
			name = "Right streamer",
			position = { x = -49.389305, y = 15.655615, z = -7.374138 },


			attributes =
			{
				Enabled = 0,
				Length = 10.0,
				Colour = { r = 255, g = 255, b = 255, a = 255 },
			},

		},
		{
			name = "Tail steamer",
			position = { x = 0.0, y = 11.0, z = -66.0 },


			attributes =
			{
				Enabled = 0,
				Length = 10.0,
				Colour = { r = 255, g = 255, b = 255, a = 255 },
			},

		},



	},

	pilots = 
	{

		{
			name = "Pilot",
			position = { x = 0.0, y = 17.328407, z = -10.966269 },
			size = 0.589713,


			attributes =
			{
				Type = "Racer",
			},

		},

	},

}