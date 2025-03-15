# Session End Guide for {{project_name}}

## Session Wrap-Up Process

When concluding a development session for the {{project_name}} platform, follow these steps to ensure proper documentation, code quality, and knowledge transfer:

### 1. Update Session Documentation

Complete your session document with details of what was accomplished:

```
1. Open your session document in the sessions directory
2. Update the "Progress Summary" section with a concise overview
3. List all completed tasks in the "Completed Tasks" section
4. Document any technical decisions made in the "Technical Decisions" section
5. List all files modified in the "Files Modified" section
6. Include key code implementations in the "Key Implementations" section
7. Document any testing performed in the "Testing Performed" section
8. Update the "Documentation Updates" section with any documentation changes
9. List clear next steps in the "Next Steps" section
10. Create action items for future work in the "Action Items" section
```

### 2. Update Project Documentation

Update relevant project documentation based on your changes:

#### For Code Changes

```
1. Update component documentation if you modified or added components
2. Update API documentation if you modified or added API endpoints
3. Update data model documentation if you modified the database schema
```

#### For Architecture Changes

```
1. Update relevant architecture documents to reflect your changes
2. Ensure diagrams and code examples are up to date
```

#### For Process Changes

```
1. Update development process documentation if you modified workflows
2. Update project roadmap if you completed milestones or added new ones
```

### 3. Code Quality Checks

Ensure your code meets quality standards before submission:

```
1. Run linting to ensure code style compliance:
   - Run `npm run lint`
2. Run tests to ensure functionality:
   - Run `npm test`
3. Check for TypeScript errors:
   - Run `npm run type-check`
4. Verify build process:
   - Run `npm run build`
```

### 4. Git Commit Guidelines

Follow these guidelines for creating quality commits:

```
1. Group related changes into focused commits
2. Write clear commit messages following the conventional commits format:
   - feat: New feature
   - fix: Bug fix
   - docs: Documentation changes
   - style: Code style changes (formatting, etc.)
   - refactor: Code changes that neither fix bugs nor add features
   - perf: Performance improvements
   - test: Adding or updating tests
   - chore: Changes to the build process or auxiliary tools
3. Include issue references in commit messages:
   - Example: "feat(auth): Implement password reset functionality (fixes #123)"
4. Keep commits small and focused on a single change
```

### 5. Pull Request Preparation

If your work is ready for review, prepare a pull request:

```
1. Push your branch to the remote repository:
   - `git push origin your-branch-name`
2. Create a pull request with the following information:
   - Clear title describing the change
   - Description of what was changed and why
   - Reference to related issues
   - Testing instructions
   - Screenshots or videos for UI changes
   - List of breaking changes, if any
```

### 6. GitHub Submission Process

Follow these steps to submit your code to GitHub:

```
1. Ensure all changes are committed:
   - `git status` to check for uncommitted changes
2. Push your branch to GitHub:
   - `git push origin your-branch-name`
3. Create a pull request through the GitHub interface:
   - Navigate to the repository on GitHub
   - Click "Pull requests" > "New pull request"
   - Select your branch as the compare branch
   - Fill in the pull request template
   - Request reviews from appropriate team members
```

### 7. Handoff Notes

Prepare handoff notes for the next developer:

```
1. Summarize the current state of the work
2. Highlight any known issues or challenges
3. Provide context for decisions made
4. List resources or references that might be helpful
5. Suggest next steps with clear priorities
```

## Final Checklist

Before concluding your session, verify the following:

-   [ ] Session document is complete and up to date
-   [ ] Project documentation is updated to reflect changes
-   [ ] All code changes are committed with clear messages
-   [ ] Tests pass and code quality checks are satisfied
-   [ ] Pull request is created (if work is ready for review)
-   [ ] Handoff notes are prepared for the next developer
-   [ ] Development environment is in a clean state

## References to Development Guidelines

For more detailed information, refer to these documents:

-   [Development Process](./development-process.md) - Complete development workflow
-   [Branch Management](./development-process.md#2-branch-management) - Git branching strategy
-   [Code Standards](./development-process.md#code-standards) - Coding conventions and best practices
-   [Testing Strategy](../frontend/testing.md) - Testing approach and guidelines