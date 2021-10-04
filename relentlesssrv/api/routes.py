

# Root setup
path_home = Path("/")
path_apiv1 = path_home / Path("api/v1")

# Endpoints with data
path_foodjournal = path_apiv1 / Path("foodjournal")
path_exerciselibrary = path_apiv1 / Path("exerciselibrary")
path_logentry = path_foodjournal / Path("logentry")

# For export
routes = {
    "home": path_home,
    "foodjournal": path_foodjournal,
    "exerciselibrary": path_exerciselibrary,
    "logentry": path_logentry,
}

