# Coding Practices

## General Principles
- Write clean, readable, and maintainable code.
- Follow SOLID principles to ensure modular and scalable design.
- Use meaningful and descriptive variable and method names.
- Document code using XML comments for public methods and classes.
- Ensure consistency in code style and formatting.
- Keep tickets udpated with progress and make sure they are updated on the Kanban Board
- Fill in other team members about requirments if they are unavailable.
- Comminucate as often as possible to everyone is in the same boat
- When writing code, adhere to the principle of quality over quantity. Make writing code about adhering to code quality not just trying to write working software.

## .NET MAUI Development
- Follow MVVM (Model-View-ViewModel) pattern for separation of concerns.
- Utilize data binding for efficient UI updates.
- Keep UI logic separate from business logic.
- Use dependency injection to enhance testability and modularity.

## GitHub Workflow
- Use feature branches for all development tasks.
- Follow a structured naming convention: `feat/<issue-number>` or `fix/<issue-number>`.
- Submit pull requests for peer review before merging into `master`. Asign the pull request a reviwer and communicate in a timely manner for a review and merge.
- Write meaningful commit messages that describe the changes. Make sure your last commit message is meaningful so you can see it when merged. Follow the commmit guidelines below.
- Regularly pull and rebase updates from `master` to avoid conflicts.
- Never commit directly to master.
- Code reviews are a minimum of 1 reviwer and the dev
- Before closing a user story the whole team should give an input to ensure code quality and then the story can be closed off

## Code Quality & Testing
- Implement unit tests for all public methods using xUnit.
- Ensure a minimum of 80% code coverage.
- Run tests before committing code.
- Use exception handling to manage errors gracefully.
- Measure and optimize performance where necessary.

## Security Best Practices
- Use parameterized queries to prevent SQL injection.
- Store sensitive information in secure storage, not in code.
- Implement role-based access control (RBAC) for user management.
- Follow secure coding standards to mitigate vulnerabilities.

## Documentation
- Maintain updated UML diagrams to reflect application design.
- Generate HTML documentation for public classes and methods.
- Keep README files updated with setup and usage instructions.
- Use inline comments where necessary to explain complex logic.

## Code Review Guidelines
- Check for adherence to coding standards and best practices.
- Ensure proper error handling and exception management.
- Validate test coverage and correctness of unit tests.
- Verify the implementation meets the stated requirements.
- Provide constructive feedback and request changes when needed.

## Branching Strategy
- `master`: Stable production-ready branch - not to be commited to directly.
- `feat/*`: Feature-specific branches.
- `fix/*`: Branches for bug fixes.
- `hotfix/*`: Emergency fixes for production issues.

## Commit Strategy
- `feat:<commit message>`: Feature-specific branches.
- `fix:*`: Branches for bug fixes.
- `hotfix:*`: Emergency fixes for production issues.

By following these best practices, we ensure high-quality, maintainable, and secure software development.
