Archive old session logs from CLAUDE.md to keep it lean.

NOTE: You have direct file access. Operate ONLY on the project-local file: ./CLAUDE.md

## Pruning Ritual — Follow Every Step

1.  **Load** the entire contents of ./CLAUDE.md.

2.  **Identify Entries to Prune**: Scan the #SessionLogs section. An entire session entry (everything under a ## YYYY-MM-DD heading) is considered **#ArchivableInfo** if it is older than 14 days and does not contain any sub-bullets with the labels **Current Focus** or **Next Steps** that are still relevant. An entry is considered **#ActiveInfo** and should be kept if it is recent (within 14 days) or contains open-ended tasks.

3.  **Execute Pruning Strategy**:
    * **KEEP**: Retain all permanent sections (#CoreDirectives, #HumanGuidelines, #ProjectArchitecture, #PlanningMethodology) and all log entries classified as **#ActiveInfo**.
    * **MOVE**: Move the complete content of all log entries classified as **#ArchivableInfo** (including their ## heading) into an archive file: memory-archive/YYYY-MM-DD.md.
    * **SUMMARIZE**: In ./CLAUDE.md, under the #SessionLogs heading, add a new line: [YYYY-MM-DD] – Pruned historical logs. See memory-archive/ for details.

4.  **Return Two Deliverables**:
    A.  A diff code block showing the precise edits made to ./CLAUDE.md.
    B.  The full contents of the newly created archive file, fenced in a markdown code block.

5.  **Acknowledge** with the final status line:
    Prune complete. CLAUDE.md is now <N> tokens. <M> sessions were archived.

6.  **Purge** the chat history, retaining only this command, the diff, and the new archive file's content.