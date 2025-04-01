<![CDATA[<div align="center">
  <img src="AgenticProjectKit.jpg" alt="Agentic Project Development Kit Banner" width="800"/>
  <h1>Agentic Project Development Kit & Vibe Coding Course</h1>
  <p><em>A comprehensive framework for structured, agent-guided software development, alongside materials for the Vibe Coding Course.</em></p>
  <p>
    <a href="#overview">Overview</a> •
    <a href="#vibe-coding-course">Vibe Coding Course</a> •
    <a href="#agentic-project-development-kit">Agentic Kit</a> •
    <a href="#contributing">Contributing</a> •
    <a href="#license">License</a>
  </p>
</div>

---

## Overview

This repository consolidates two key resources:

1.  **Agentic Project Development Kit:** A framework designed to enhance collaboration between human developers and AI coding agents. It provides templates, guidelines, and workflows to promote structured development, maintain quality, and streamline processes.
2.  **Vibe Coding Course:** Educational materials focused on "Vibe Coding" – the practice of using AI agents for rapid development while ensuring structure, quality, and responsible practices are maintained.

---

## Vibe Coding Course

Materials for the **"Structured Vibe Coding: Harnessing AI for Development"** course.

### Goal

Equip developers with the knowledge and skills to effectively leverage AI coding agents, balancing the speed of AI-driven development with the necessity for structure, reliability, and maintainability.

### Key Materials

*   **Presentation Slides:**
    *   Access the main course presentation: [`Vibe Course/combined-vibeslides.md`](./Vibe%20Course/combined-vibeslides.md)
    *   Content includes: Core concepts, guiding principles, structured workflows (Planning, Context Management via Memory Bank, Execution, Iteration), tool recommendations, and model selection strategies.
*   **IDE-Specific Guidance:**
    *   Find examples and setup instructions for different IDEs and AI agents (e.g., Cline/Roo, VS Code Copilot): [`Vibe Course/IDE Specific/`](./Vibe%20Course/IDE%20Specific/)

### Core Concepts Covered

*   Defining "Vibe Coding": Benefits and potential challenges.
*   The evolving role of the developer: From coder to AI guide/programmer.
*   Principles for responsible and effective AI-assisted development.
*   Implementing structured workflows: Planning, context management (Memory Bank), execution cycles.
*   Strategies for effective prompting and interaction with AI agents.
*   The critical role of version control (Git) and automated testing.
*   Overview of relevant tools and AI model selection considerations.

---

## Agentic Project Development Kit

This kit offers a structured foundation for software projects, particularly those involving AI coding agents.

### Key Features

*   **Standardized Documentation:** Templates and guidelines ensure consistency across all project documentation.
*   **Defined Processes:** Workflows for common development tasks (e.g., branching, PRs, commits) and documentation updates.
*   **Quality Enforcement:** Mechanisms (like `.clinerules`) to enforce coding standards, commit formats, and project-specific rules.
*   **Guided Sessions:** Structured start and end procedures for development sessions to maintain focus and track progress.
*   **Flexibility:** Designed to be adaptable to various technology stacks and project needs.

### Core Components

The kit typically includes resources organized within a dedicated directory (e.g., `.solution-creation-kit`):

*   **Documentation Templates:**
    *   Architecture (Overview, Components, Deployment, Security plans)
    *   Technical Specifications (Frontend/Backend details)
    *   Project Management (Development process, PRDs)
    *   Governance & Legal Frameworks
    *   Tracking & Session Logs (Changelogs, PR templates, Session notes)
*   **Development Guidelines:**
    *   Branching strategy (e.g., Gitflow adaptation)
    *   Code style guides and linting rules
    *   Pull Request process and review checklists
    *   Commit message conventions (e.g., Conventional Commits)
*   **Session Workflow:**
    *   **Start:** Review documentation, create session log, setup environment, create branch.
    *   **End:** Update session log, run quality checks, commit changes, prepare pull request.
*   **AI Agent Configuration:**
    *   Files like `.clinerules` or custom instructions (`customInstructions.md`) to configure AI behavior, manage context (Memory Bank), and enforce project standards.

### Getting Started with the Kit

1.  **Clone the Repository:**
    ```bash
    # Ensure you have the correct repository URL
    git clone https://github.com/rartzi/agentic-project-development-kit.git
    cd agentic-project-development-kit
    ```
2.  **Integrate into Your Project:**
    *   Copy the kit's core directory (e.g., `.solution-creation-kit/`) to the root of your target project.
    *   Example: `cp -r .solution-creation-kit/ /path/to/your/project/`
3.  **Customize:**
    *   Review and adapt the templates, rules (`.clinerules`), and guidelines provided within the kit to align with your project's specific requirements, technology stack, and team conventions.

### Example Kit Usage (Session Workflow)

**Starting a Development Session:**

1.  Consult key project documents (e.g., `prd.md`, relevant architecture diagrams).
2.  Initialize a new session log using the provided template.
3.  Verify your local development environment is correctly configured.
4.  Create a new branch adhering to the project's naming convention (e.g., `feature/issue-123-implement-auth-module`).

**Ending a Development Session:**

1.  Document all progress, technical decisions, challenges encountered, and files modified in the session log.
2.  Execute all defined code quality checks (e.g., `npm run lint`, `npm test`).
3.  Commit your changes using the specified commit message format.
4.  Generate and submit a pull request, utilizing the PR template.

---

## Contributing

We welcome contributions to enhance both the Agentic Kit and the Vibe Coding Course!

1.  Fork this repository.
2.  Create a dedicated branch for your changes (`git checkout -b feature/your-contribution-description`).
3.  Implement your improvements or fixes.
4.  Commit your changes using the conventional commit format (`git commit -m 'docs(readme): improve clarity of kit usage section'`).
5.  Push the branch to your fork (`git push origin feature/your-contribution-description`).
6.  Submit a Pull Request detailing your changes.

---

## Disclaimer

**USE AT YOUR OWN RISK**

THE SOFTWARE, FRAMEWORK COMPONENTS, AND COURSE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE, COURSE MATERIALS, OR THE USE OR OTHER DEALINGS IN THEM.

By utilizing any content from this repository, you acknowledge that you do so at your own discretion and risk. You are responsible for verifying the suitability and safety of these materials for your specific purposes.

---

## Acknowledgments

*   Maintained by [rartzi](https://github.com/rartzi).
*   This project stems from the need for structured methodologies in the rapidly evolving field of AI-assisted software development.
*   Gratitude to the open-source community and all contributors.

---

## License

This project is licensed under the [MIT License](./LICENSE). Please refer to the `LICENSE` file for complete details.
]]>
