#!/bin/bash

# Define the configuration file path
CONFIG_FILE="/config/config.xml"

# Check if the file exists
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Configuration file not found. Creating $CONFIG_FILE..."

  # Create the config file with the required content
  cat <<EOF > "$CONFIG_FILE"
<Config>
  <UrlBase></UrlBase>
  <AuthenticationRequired>Enabled</AuthenticationRequired>
  <AuthenticationMethod>External</AuthenticationMethod>
</Config>
EOF

  echo "Configuration file created successfully."
else
  echo "Configuration file already exists. Updating AuthenticationMethod to 'External' if necessary."

  # Use sed to update AuthenticationMethod to 'External'
  sed -i 's|<AuthenticationMethod>.*</AuthenticationMethod>|<AuthenticationMethod>External</AuthenticationMethod>|' "$CONFIG_FILE"

  echo "Configuration file updated successfully."
fi