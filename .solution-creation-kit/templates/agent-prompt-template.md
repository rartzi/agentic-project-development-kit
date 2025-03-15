# {{project_name}} Agent/Cursor Prompt Guide

## Overview

This document provides guidance for AI agents (like Claude, GPT, or Cursor) on how to interact with the {{project_name}} codebase. It outlines the project's standards, conventions, and best practices to ensure consistent and high-quality contributions.

## Project Context

{{project_name}} is a {{project_description}}. The project follows a structured development process with specific guidelines for code quality, documentation, and collaboration.

## Development Standards

### Code Standards
- Use {{language}} with strict mode enabled
- Follow the established component hierarchy
- Adhere to RESTful API design principles
- Write tests for all new functionality
- Update documentation for any significant changes
- Ensure all UI components meet WCAG 2.1 AA standards
- Optimize for performance using established patterns

### Documentation Requirements
- Update component documentation if you modified or added components
- Update API documentation if you modified or added API endpoints
- Update data model documentation if you modified the database schema
- Update architecture documents if you made architectural changes
- Create or update session documentation for your development session

### Git Workflow
- Create branches from `dev` with the format: `feature/issue-number-short-description` or `bugfix/issue-number-short-description`
- Make small, focused commits with clear messages following the conventional commits format
- Reference issue numbers in commit messages
- Create pull requests with comprehensive descriptions

## Session Workflow

### Session Start Process
1. Review core documentation:
   - Product Requirements Document (PRD)
   - Architecture Overview
   - Latest session documentation
2. Review task-specific documentation based on the current task
3. Understand the development process
4. Create a session document to track your work
5. Set up the development environment
6. Create a branch following the naming convention

### Session End Process
1. Update session documentation with details of what was accomplished
2. Update project documentation based on your changes
3. Ensure code meets quality standards
4. Follow git commit guidelines
5. Prepare a pull request if work is ready for review
6. Prepare handoff notes for the next developer

## Agent Guidelines

When working with this codebase, please follow these guidelines:

### Code Generation
- Generate code that follows the project's established patterns and conventions
- Use TypeScript with proper type definitions
- Follow the component architecture outlined in the documentation
- Implement proper error handling and validation
- Write code that is accessible and responsive
- Include appropriate comments and documentation

### Problem Solving
- Break down complex tasks into smaller, manageable steps
- Consider edge cases and potential failure points
- Suggest multiple approaches when appropriate, with pros and cons
- Reference relevant documentation or existing code patterns
- Explain your reasoning for technical decisions

### Documentation
- Generate documentation that follows the project's established format
- Include all required sections as outlined in the documentation guidelines
- Use clear, concise language
- Include code examples where appropriate
- Cross-reference related documents

### Communication
- Provide clear explanations of your suggestions and changes
- Ask clarifying questions when requirements are ambiguous
- Highlight potential issues or concerns
- Suggest next steps or alternatives when appropriate
- Maintain a professional and constructive tone

## Key Resources

- [Development Process](./development-process.md)
- [Documentation Structure](./documentation-structure.md)
- [UI/UX Standards](./templates/frontend/ui-ux-standards-template.md)
- [Accessibility Guidelines](./templates/frontend/accessibility-guidelines-template.md)
- [Component Architecture](./templates/frontend/component-architecture-template.md)
- [Session Template](./templates/sessions/session-template.md)
- [Pull Request Template](./templates/tracking/pull-request-template.md)

## Example Interactions

### Example 1: Feature Implementation Request

**User Request:**
"Can you implement a user profile page that allows users to update their information?"

**Agent Response:**
"I'll help you implement a user profile page. Let me break this down into steps:

1. First, I'll review the existing user data model and authentication system
2. Then, I'll create a server component for the profile page
3. Next, I'll implement a client component for the editable form
4. Finally, I'll add the necessary API endpoint for updating user data

Let me start by examining the current user model..."

### Example 2: Code Review Request

**User Request:**
"Can you review this component and suggest improvements?"

**Agent Response:**
"I've reviewed the component and have several suggestions for improvement:

1. **Accessibility**: The button lacks proper aria attributes
2. **Error Handling**: There's no handling for API failure states
3. **Performance**: We could memoize the expensive calculation on line 27
4. **Type Safety**: The props interface is missing type definitions for optional props

Here's how we could address these issues..."

### Example 3: Documentation Request

**User Request:**
"Can you create documentation for the new authentication flow?"

**Agent Response:**
"I'll create documentation for the new authentication flow following the project's documentation standards. The document will include:

1. Overview of the authentication flow
2. Detailed sequence diagram
3. API endpoints and their specifications
4. Security considerations
5. Error handling
6. Usage examples

Let me start by creating the structure..."

## Conclusion

By following these guidelines, you'll help maintain consistency and quality across the {{project_name}} codebase. Remember to always reference the project's documentation when unsure about standards or practices.