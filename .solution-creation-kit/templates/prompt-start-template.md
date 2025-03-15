# Session Start Guide for {{project_name}}

## Session Initialization

When starting a new development session for the {{project_name}} platform, follow these steps to establish proper context:

### 1. Review Core Documentation

Begin by reviewing these essential documents to understand the project context:

1.  **Product Requirements Document**

    ```
    Read the PRD to understand product goals and requirements:
    - Review [Product Requirements Document](../docs/prd.md)
    ```
2.  **Architecture Overview**

    ```
    Understand the system architecture:
    - Review [Architecture Overview](../docs/architecture/overview.md)
    - If working on specific components, review relevant architecture docs:
      - [Component Architecture](../docs/architecture/component-architecture.md)
      - [Core Components](../docs/architecture/core-components.md)
      - [Data Model](../docs/architecture/data-model.md)
    ```
3.  **Latest Session Documentation**

    ```
    Review recent development sessions to understand current context:
    - Check the most recent session document in [Sessions Directory](../sessions/)
    ```

### 2. Task-Specific Documentation

Based on the current task, review relevant documentation:

#### Frontend Development

```
For frontend tasks:
- [Frontend Overview](../frontend/overview.md)
- [Components](../frontend/components.md)
- [Styling](../frontend/styling.md)
- [State Management](../frontend/state-management.md)
- [Accessibility](../frontend/accessibility.md)
```

#### Backend Development

```
For backend tasks:
- [Backend Overview](../backend/overview.md)
- [API Architecture](../backend/api-architecture.md)
- [Data Access](../backend/data-access.md)
- [Authentication](../backend/auth.md)
```

#### Full-Stack Development

```
For full-stack tasks:
- [Frontend Overview](../frontend/overview.md)
- [Backend Overview](../backend/overview.md)
- [API Architecture](../backend/api-architecture.md)
```

### 3. Development Process

Understand the development workflow:

```
Review development process documentation:
- [Development Process](./development-process.md) - Complete development workflow
```

### 4. Create Session Document

Create a new session document to track your work:

```
1. Copy the session template:
   - Use [Session Template](../sessions/session-template.md) as a starting point
2. Create a new file in the sessions directory:
   - Name format: YYYY-MM-DD-focus-area.md (e.g., 2025-02-27-frontend-auth.md)
3. Fill in the session information and goals
```

## Key Principles to Remember

1.  **Type Safety**: Use TypeScript with strict mode enabled
2.  **Component Architecture**: Follow the established component hierarchy
3.  **API Design**: Adhere to RESTful API design principles
4.  **Testing**: Write tests for all new functionality
5.  **Documentation**: Update documentation for any significant changes
6.  **Accessibility**: Ensure all UI components meet WCAG 2.1 AA standards
7.  **Performance**: Optimize for performance using established patterns

## Environment Setup

Ensure your development environment is properly set up:

```
1. Check that all dependencies are installed:
   - Run `npm install` if needed
2. Verify database connection:
   - Ensure PostgreSQL is running
   - Check that Prisma can connect to the database
3. Start the development server:
   - Run `npm run dev`
```

## Branch Management

Follow the established Git workflow:

```
1. Create a new branch from `dev`:
   - Branch naming: feature/issue-number-short-description or bugfix/issue-number-short-description
2. Make small, focused commits with clear messages
3. Reference issue numbers in commit messages
```

DO NOT CODE - SUGGEST A COURSE OF ACTION AND WAIT FOR ME TO AGREE OR CHOOSE A DIFFERENT COURSE