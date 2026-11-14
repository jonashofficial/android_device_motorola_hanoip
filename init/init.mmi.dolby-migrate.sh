#!/vendor/bin/sh
#
# Copyright (C) 2026 Project Infinity-X
#
# One-time migration from legacy hardware/motorola/dolby (co.aospa.dolby)
# to in-tree Motorola Dolby stack (DAX3).
#

MIGRATION_MARKER="/data/vendor/dolby/.migrated_dax3"

if [ ! -f "$MIGRATION_MARKER" ]; then
    # Legacy dax_sqlite3.db causes ParameterEndpointSWParameterStrategy crash in new DAX3 stack
    rm -f /data/vendor/dolby/dax_sqlite3*
    # Remove legacy AOSPA Dolby package data
    rm -rf /data/data/co.aospa.dolby /data/user_de/0/co.aospa.dolby 2>/dev/null
    # Create migration marker
    touch "$MIGRATION_MARKER"
    chown media:media "$MIGRATION_MARKER"
    chmod 0660 "$MIGRATION_MARKER"
fi
