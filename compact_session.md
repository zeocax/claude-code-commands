Digest the recent conversation into the project's knowledge file using standard Markdown.

NOTE: All updates are applied ONLY to the project-local file: ./CLAUDE.md

1.  **Scan** the last 40 messages (or the entire conversation window if smaller). Group all relevant information into a multi-level bulleted list under a single parent bullet. Use the following bolded labels for each category:
    * **Current Focus**: A single sentence describing the primary task in progress.
    * **Session Changes**: A nested bulleted list of edits, refactors, or commits.
    * **Architectural Notes**: Any decisions related to the high-level project architecture.
    * **PlanningUpdates**: Notes on changes discussed for documents in the plans/ directory.
    * **Next Steps**: A nested bulleted list of concrete, actionable tasks.
    * **BugsAndTheories**: A nested list of identified bugs and hypotheses.
    * **Background**: Key rationale or context that is important to remember.

2.  **Format** the output concisely.
    * Use past-tense verbs for **Session Changes** (e.g., "Refactored the database module").
    * Use imperative verbs for **Next Steps** (e.g., "Write unit tests for the parser").

3.  **Append** the digest to ./CLAUDE.md under a new ## YYYY-MM-DD – Compact Session heading inside the #SessionLogs section. The final output in the file should look like this:

    *Example Format:*
    markdown
    ## 2025-06-29 – Compact Session
    - **Current Focus**: Refactoring the user authentication flow.
    - **Session Changes**:
        - Updated the plans/module_auth.md with new JWT strategy.
        - Implemented the generate_token function.
    - **Next Steps**:
        - Write integration test for the login endpoint.
    

4.  **Respond** with two specific deliverables:
    A.  A diff code block showing the exact changes made to ./CLAUDE.md.
    B.  A one-line entry for a CHANGELOG.md file.

5.  **Purge** the chat history, retaining only this command, the diff block, and the changelog entry.