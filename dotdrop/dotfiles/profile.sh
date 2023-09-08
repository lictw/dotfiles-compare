#!/bin/sh

echo "common ENV"
echo "SSH agent and keys"

{%@@ for plugin in plugins.split() @@%}
    {%@@- if "profile" in plugin @@%}
# From '{{@@ plugin @@}}':
{%@@ include _dotdrop_dotpath ~ "/" ~ plugin @@%}
    {%@@- endif @@%}
{%@@ endfor @@%}
