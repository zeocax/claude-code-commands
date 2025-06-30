#!/bin/bash

# Project initialization script
# Copy configuration files to current project root directory

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Files to copy
FILES_TO_COPY=(
    "CLAUDE.markdown:CLAUDE.md"
    "CONSTITUTION.markdown:CONSTITUTION.md"
    "HUMAN.markdown:HUMAN.md"
    # "init.sh:init.sh"
)

echo "🚀 Project Configuration Initialization Script"
echo "==============================================="
echo "Copying configuration files from the following location to current directory:"
echo "Source: $SCRIPT_DIR"
echo "Target: $(pwd)"
echo ""
echo "Files to copy:"

for file_mapping in "${FILES_TO_COPY[@]}"; do
    source_file="${file_mapping%:*}"
    target_file="${file_mapping#*:}"
    
    if [ -f "$SCRIPT_DIR/$source_file" ]; then
        echo "  ✓ $source_file -> $target_file"
    else
        echo "  ✗ $source_file (file not found)"
    fi
done

echo ""

# Check if any files will be overwritten
WILL_OVERWRITE=false
for file_mapping in "${FILES_TO_COPY[@]}"; do
    target_file="${file_mapping#*:}"
    if [ -f "$target_file" ]; then
        if [ "$WILL_OVERWRITE" = false ]; then
            echo "⚠️  The following files will be overwritten:"
            WILL_OVERWRITE=true
        fi
        echo "  - $target_file"
    fi
done

if [ "$WILL_OVERWRITE" = true ]; then
    echo ""
fi

# User confirmation
read -p "Confirm copy operation? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Operation cancelled"
    exit 1
fi

echo ""
echo "📁 Starting file copy..."

# Execute copy
SUCCESS_COUNT=0
TOTAL_COUNT=0

for file_mapping in "${FILES_TO_COPY[@]}"; do
    source_file="${file_mapping%:*}"
    target_file="${file_mapping#*:}"
    source_path="$SCRIPT_DIR/$source_file"
    
    TOTAL_COUNT=$((TOTAL_COUNT + 1))
    
    if [ -f "$source_path" ]; then
        if cp "$source_path" "$target_file" 2>/dev/null; then
            echo "  ✅ $source_file -> $target_file"
            SUCCESS_COUNT=$((SUCCESS_COUNT + 1))
        else
            echo "  ❌ Copy failed: $source_file -> $target_file"
        fi
    else
        echo "  ⚠️  Source file not found: $source_file"
    fi
done

echo ""
echo "📊 Copy completed: $SUCCESS_COUNT/$TOTAL_COUNT files successful"

if [ $SUCCESS_COUNT -eq $TOTAL_COUNT ]; then
    echo "🎉 All files have been successfully copied to current directory!"
    echo ""
    echo "📝 Next steps:"
    echo "   1. Edit CLAUDE.md according to your project requirements"
    echo "   2. Review CONSTITUTION.md to understand project management rules"
    echo "   3. Create human.md file for project-specific configurations"
else
    echo "⚠️  Some files failed to copy, please check error messages"
    exit 1
fi
