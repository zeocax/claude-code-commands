Analyze the project or component in the folder: $ARGUMENTS

Follow these steps:

1. Ultrathink: Analyze the folder contents in detail, aiming for comprehensive documentation 
2. Record to corresponding docs files:
   - For simple projects: use a single documentation file
   - For complex projects: create separate docs files only for significant modules that meet these criteria:
     * Contains multiple related files (5+ files or substantial functionality)
     * Represents a distinct functional domain or feature
     * Has clear boundaries and responsibilities
     * Would benefit from dedicated documentation for maintainability
   - Do not create docs for individual files or trivial components
   - Organize files according to the analyzed directory structure within the current project
3. Update the ProjectArchitecture in CLAUDE.md and make sure all content from this analysis is properly referenced:
   - Include links to all documentation files created in this analysis using @path/to/docs format
   - Reference all analyzed components and modules through their newly created documentation
   - Ensure cross-references between the new documentation files are established using consistent @path syntax
   - Verify that the architecture overview accurately reflects the analyzed structure