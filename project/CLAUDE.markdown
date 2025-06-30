# This file is the central source of truth for the project context.

---

# CoreDirectives
# These are the fundamental rules that govern all your actions. You must adhere to them at all times.

- **Plan-Before-Implement**: This is the first critical rule. Before writing any code or implementing any feature, you MUST ensure it is described in a plan file that is **referenced in the #ProjectArchitecture manifest**. You must strictly conform to the details in that referenced plan.

- **Autonomous Plan Maintenance**: This is the second critical rule. You are responsible for the automatic creation and maintenance of project plan files.
    * **Action on Missing Plan**: If a plan is needed for a new component, you must:
        1. Propose a new plan with a descriptive filename (e.g., `plans/api_gateway.md`).
        2. After user confirmation, create the file and populate its design.
        3. **Crucially, you must then add a new entry to the `#ProjectArchitecture` manifest that references your new plan file (e.g., `@plans/api_gateway.md`).**

- **Promote Plan to Documentation**: This is the third critical rule. After a feature is implemented, its plan becomes its documentation.
    * **Action**: Once a feature is complete, transfer the finalized `Current Design` from its plan file to a new, corresponding file in the `/docs` directory.
    * **Update Manifest**: After creating the documentation file, you **must update the corresponding entry in the `#ProjectArchitecture` manifest** to include the new `@docs/...` reference.

---

# HumanGuidelines
# References the `human.md` file, which contains user preferences, project constants, style guides, folder maps, and API secrets.

@human.md

---

# ProjectArchitecture
# This section is the central manifest of the project. It lists all major components and links to their corresponding plan and documentation files using `@` notation. You must keep this section updated.

- **Component A**: [Description of Component A]. Design: `@plans/component-a.md` | Docs: `@docs/component-a.md`
- **Component B**: [Description of Component B]. Design: `@plans/component-b.md`

---

# PlanningMethodology
# Defines the structure and update process for project design documents.

### Directory Purpose
**To avoid confusion, the roles of the `/plans` and `/docs` directories are strictly defined:**

-   **/plans**: This directory contains **prospective** design documents. A plan must be created and approved **before** any new feature is implemented. It describes what **will be** built.

-   **/docs**: This directory contains **retrospective** technical documentation. It describes what **has been** built. Its content comes from two sources:
    1.  **Promoting a completed plan** after the feature has been successfully implemented.
    2.  **Analyzing a pre-existing codebase** to document how it currently works.

### File Naming and Structure
- **File Naming**: Plan and documentation files should have short, descriptive names (e.g., `api.md`, `database.md`). There are no required prefixes or special mandatory files.
- **Authoritative List**: The `#ProjectArchitecture` section serves as the definitive list of all official plan and documentation files.
- **Internal Structure**: Every plan file **must** contain two primary, top-level sections: `## Current Design` and `## Deprecated Designs`.

### How to Update a Plan
**Your goal is to ensure the `## Current Design` section always reflects the latest state, while the `## Deprecated Designs` section contains a history of obsolete parts.**

1.  **Identify Obsolete Parts**: When a portion of the current design is being replaced or removed, identify that specific part within the `## Current Design` section.
2.  **Archive Granularly**: **Move only the obsolete part** from `## Current Design` into `## Deprecated Designs`. Place it under a new subheading that includes the date and the reason for the change.
3.  **Update Current Design**: Modify the `## Current Design` section to include the new, updated information in its correct place.

### Context Loading Rules
- **Mandatory Context**: The entirety of this file, `CLAUDE.md`, is the core mandatory context.
- **On-Demand Context**: You should use the `@` links within the `#ProjectArchitecture` manifest to find and read specific plan or documentation files from the `/plans` and `/docs` directories as needed for the current task.

---

# SessionLogs
# Chronological digests of work sessions. Older entries are pruned periodically.