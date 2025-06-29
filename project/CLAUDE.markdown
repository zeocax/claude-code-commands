# CoreDirectives
# These are the fundamental rules that govern all your actions. You must adhere to them at all times.

- **Plan-Before-Implement**: This is the first critical rule. Before writing any code, creating any file, or implementing any feature, you MUST perform the following check:
    1.  **Verify Existence**: Confirm that the task is described in the relevant plan file (plans/overall_design.md or the specific plans/module_*.md).
    2.  **Verify Conformance**: Ensure that the implementation you are about to create strictly conforms to the details specified in that plan.
    3.  **If a plan is missing or incorrect, execute Directive #2.** Do not proceed with a default or assumed implementation.

- **Autonomous Plan Maintenance**: This is the second critical rule. You are responsible for the automatic creation and maintenance of **all** project plan files.
    * **Scope of Responsibility**: Your maintenance responsibility covers both the central plans/overall_design.md file and the various module-specific files that you create and name (e.g., plans/module_*.md).
    * **Action on Missing Plan**: When the "Plan-Before-Implement" check fails because a plan is missing or outdated, you must take the initiative. Propose a new or updated plan based on the current context, update the correct file according to the PlanningMethodology, and ask for user confirmation before proceeding.

- **Promote Plan to Documentation**: This is the third critical rule. **After a feature is implemented, its plan becomes its documentation.**
    * **Action**: Once a feature is complete, **transfer the finalized Current Design content from its plan file** (e.g., plans/module_api.md) **to a new, corresponding file in the /docs directory** (e.g., docs/api.md). The plan's technical design becomes the official documentation.
    * **Timing**: This action should be performed after the feature has been successfully implemented and is considered complete.

---

# HumanGuidelines
# References the human.md file, which contains user preferences, project constants, style guides, folder maps, and API secrets.

@human.md

---

# ProjectArchitecture
# High-level overview of the project's structure, components, and interactions.

---

# PlanningMethodology
# Defines the structure and update process for project design documents in the plans/ directory.

### File Naming and Structure
- **Overall Design**: The primary project design must be in plans/overall_design.md. This filename is fixed.
- **Module Designs**: Each module has its own document, named by you using the pattern plans/module_[module_name].md.
- **Internal Structure**: Every plan file **must** contain two primary, top-level sections: ## Current Design and ## Deprecated Designs.

### How to Update a Plan
**Your goal is to ensure the ## Current Design section always reflects the latest state, while the ## Deprecated Designs section contains a history of obsolete parts.**

1.  **Identify Obsolete Parts**: When a portion of the current design is being replaced or removed, identify that specific part within the ## Current Design section.
2.  **Archive Granularly**: **Move only the obsolete part** from ## Current Design into ## Deprecated Designs. Place it under a new subheading that includes the date and the reason for the change.
3.  **Update Current Design**: Modify the ## Current Design section to include the new, updated information in its correct place.

### Context Loading Rules
**The /plans and /docs directories share the same structure and reading rules.**

- **Mandatory Context**: The overall design files (plans/overall_design.md and docs/overall_design.md) are considered core project context. They **must** be loaded for any significant task.
- **On-Demand Context**: All module-specific files in both /plans and /docs are considered on-demand context. You should only read a specific module's file when the current task or question is directly related to that module.

---

# SessionLogs
# Chronological digests of work sessions. Older entries are pruned periodically.