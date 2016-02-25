FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0013-Make-Qt5GuiConfigExtras.cmake-find-gl-es-include-dir.patch"

# Add QPA
PACKAGECONFIG[gles2] = "-opengl es2 -eglfs -qpa eglfs,,virtual/libgles2 virtual/egl"

# Remove sql configuration at all (default is fine enough)
PACKAGECONFIG[sql-ibase] = ","
PACKAGECONFIG[sql-mysql] = ","
PACKAGECONFIG[sql-psql] = ","
PACKAGECONFIG[sql-odbc] = ","
PACKAGECONFIG[sql-oci] = ","
PACKAGECONFIG[sql-tds] = ","
PACKAGECONFIG[sql-db2] = ","
PACKAGECONFIG[sql-sqlite2] = ","
PACKAGECONFIG[sql-sqlite] = ","

# Add accessibility
PACKAGECONFIG[accessibility] = "-accessibility,-accessibility"

# Customize package config content
PACKAGECONFIG_remove = "dbus"
PACKAGECONFIG_remove = "examples"

