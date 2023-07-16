# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Intuitivo/core-api"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "core-api"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi


session_root "~/Projects/Intuitivo/core-dashboard"
if initialize_session "core-dashboard"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi


# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Intuitivo/wallet-api"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "wallet-api"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi


session_root "~/Projects/Intuitivo/wallet-dashboard"

if initialize_session "wallet-dashboard"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi

session_root "~/Projects/Intuitivo/wallet-app"
if initialize_session "wallet-app"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi

# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Intuitivo/core-events-worker"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "worker"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi


session_root "~/Projects/Intuitivo/greengrass-connect"
if initialize_session "greengrass-connect"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  new_window "shell"
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."

fi

# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Intuitivo/core-sockets"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "core-sockets"; then
  new_window "editor"
  new_window "shell"
  new_window "client"
  run_cmd "cd ~/Projects/Intuitivo/core-sockets-client"
  run_cmd "vim ."
  split_h 50

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
  run_cmd "vim ."
fi

session_root "~/Projects/Intuitivo/_Infra"
if initialize_session "infra"; then

  # Create a new window inline within session layout definition.
  new_window "shell"
  run_cmd "vim docker-compose.yml"
  split_h 50
  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1
fi
# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
