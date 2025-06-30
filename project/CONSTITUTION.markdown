# Project Constitution
# This file contains the permanent rules, directives, and methodologies for this project.
# It should be treated as the highest-priority system context.
# It should not be modified without explicit user discussion.

---

# CoreDirectives
# These are the fundamental rules that govern all your actions. You must adhere to them at all times.

- **Plan-Before-Implement**: Before writing any code, you MUST ensure it is described in a plan file referenced in `CLAUDE.md`'s `#ProjectArchitecture` manifest and that your work conforms to that plan.

- **Autonomous Plan Maintenance**: You are responsible for creating and maintaining all project plan files. When a new plan is created, you MUST add a reference to it in the `#ProjectArchitecture` manifest in `CLAUDE.md`.

- **Promote Plan to Documentation**: After a feature is implemented, you must transfer its plan into a corresponding `/docs` file and update the `#ProjectArchitecture` manifest in `CLAUDE.md` with the `@docs/...` link.

---

# HumanGuidelines
# References the `human.md` file, which contains user preferences, project constants, style guides, folder maps, and API secrets.

@human.md

---

# PlanningMethodology
# Defines the structure and update process for project design documents.

### Directory Purpose
-   **/plans**: Contains **prospective** design documents describing what **will be** built.
-   **/docs**: Contains **retrospective** technical documentation describing what **has been** built.

### File Naming and Structure
- **File Naming**: Files in `/plans` and `/docs` should have short, descriptive names.
- **Authoritative List**: The `#ProjectArchitecture` section in `CLAUDE.md` is the definitive list of all official files.
- **Internal Structure**: Every plan file **must** contain `## Current Design` and `## Deprecated Designs` sections.

### How to Update a Plan
Move only the obsolete parts from the `## Current Design` section to the `## Deprecated Designs` section under a dated subheading.

### Context Loading Rules
- **Mandatory Context**: `CONSTITUTION.md` and `CLAUDE.md` are the core context.
- **On-Demand Context**: Use the `@` links in `CLAUDE.md`'s manifest to read specific files from `/plans` and `/docs` as needed.