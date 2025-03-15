# {{project_name}} Component Architecture

## Component Types

### Page Components
- Defined in the `/app` directory
- Handle data fetching and page-level state
- Compose feature components
- Example: `/app/[feature]/page.tsx`

### Feature Components
- Implement specific functionality
- Handle user interactions
- Manage component-level state
- Example: `/components/[feature]/FeatureComponent.tsx`

### UI Components
- Reusable design system components
- Consistent styling and behavior
- Accessibility compliance
- Example: `/components/ui/Button.tsx`

## Component Organization

### Component Structure
```typescript
// Component file structure
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui/Button';

// Types
interface ComponentProps {
  // Props definition
}

// Main component
export function Component({ prop1, prop2 }: ComponentProps) {
  // State and hooks
  const [state, setState] = useState();
  const router = useRouter();

  // Event handlers
  const handleClick = () => {
    // Handler logic
  };

  // Render
  return (
    <div>
      {/* Component JSX */}
      <Button onClick={handleClick}>Click me</Button>
    </div>
  );
}

// Subcomponents (if needed)
function Subcomponent() {
  return <div>{/* Subcomponent JSX */}</div>;
}
```

### Naming Conventions
- **Components**: PascalCase (e.g., `ButtonGroup.tsx`)
- **Files/Directories**: lowercase-with-dashes (e.g., `admin-page.tsx`, `user-profile/`)
- **Variables**: camelCase with descriptive names
- **Hooks**: Prefix with `use` (e.g., `useEventData`)
- **Context**: Suffix with `Context` (e.g., `ThemeContext`)

## Server and Client Components

### Server Components
- Default in Next.js App Router
- Render on the server
- No client-side JavaScript
- Data fetching directly in the component
- Example:
```typescript
// app/[feature]/page.tsx
export default async function FeaturePage() {
  const data = await fetchData();
  
  return (
    <div>
      <h1>Feature Title</h1>
      <FeatureComponent data={data} />
    </div>
  );
}
```

### Client Components
- Marked with `'use client'` directive
- Interactive components that run on the client
- State management and event handlers
- Example:
```typescript
// components/[feature]/InteractiveComponent.tsx
'use client';

import { useState } from 'react';

export function InteractiveComponent({ onAction }) {
  const [state, setState] = useState('');
  
  return (
    <div>
      <input 
        type="text" 
        value={state} 
        onChange={(e) => setState(e.target.value)} 
      />
      <button onClick={() => onAction(state)}>Submit</button>
    </div>
  );
}
```

### Component Boundaries
- Use Server Components for:
  - Data fetching
  - Access to backend resources
  - Reducing client-side JavaScript
  - SEO-critical content
- Use Client Components for:
  - Interactivity (event handlers)
  - State management
  - Browser APIs
  - Lifecycle effects

## Key Components

### Layout Components
- `RootLayout`: Main application layout with header and footer
- `FeatureLayout`: Layout for specific feature sections
- `AdminLayout`: Layout for admin section

### Feature Components
- [List key feature components specific to the project]
- Example: `UserProfile`: User profile display and editing
- Example: `DataTable`: Sortable and filterable data table

### UI Components
- `Button`: Reusable button with variants
- `Card`: Content container with consistent styling
- `Input`: Form input with validation
- `Dropdown`: Accessible dropdown menu
- `Modal`: Dialog for user interactions
- `Tabs`: Tabbed interface for content organization

## Best Practices

### Component Design
- Keep components focused on a single responsibility
- Extract reusable logic into custom hooks
- Use composition over inheritance
- Implement proper prop validation with TypeScript
- Document component props and usage

### Performance Considerations
- Memoize expensive calculations with `useMemo`
- Optimize event handlers with `useCallback`
- Use `React.memo` for pure components
- Implement virtualization for long lists
- Lazy load components when appropriate

### Accessibility
- Use semantic HTML elements
- Implement proper ARIA attributes
- Ensure keyboard navigation
- Maintain sufficient color contrast
- Test with screen readers

## Component Documentation

### Props Documentation
```typescript
/**
 * Button component with various styles and sizes
 * 
 * @param variant - The visual style of the button
 * @param size - The size of the button
 * @param isLoading - Whether the button is in a loading state
 * @param isDisabled - Whether the button is disabled
 * @param onClick - Function to call when the button is clicked
 * @param children - The content to display inside the button
 */
export function Button({
  variant = 'primary',
  size = 'medium',
  isLoading = false,
  isDisabled = false,
  onClick,
  children,
}: ButtonProps) {
  // Component implementation
}
```

### Usage Examples
```typescript
// Basic usage
<Button onClick={handleClick}>Click Me</Button>

// With variants
<Button variant="secondary">Secondary Button</Button>
<Button variant="outline">Outline Button</Button>

// With sizes
<Button size="small">Small Button</Button>
<Button size="large">Large Button</Button>

// Loading and disabled states
<Button isLoading={isSubmitting}>Submit</Button>
<Button isDisabled={!isValid}>Continue</Button>
```

## Testing Components

### Unit Testing
```typescript
// Example of component unit test
import { render, screen, fireEvent } from '@testing-library/react';
import { Button } from './Button';

describe('Button', () => {
  it('renders correctly', () => {
    render(<Button>Click Me</Button>);
    expect(screen.getByText('Click Me')).toBeInTheDocument();
  });

  it('calls onClick when clicked', () => {
    const handleClick = jest.fn();
    render(<Button onClick={handleClick}>Click Me</Button>);
    fireEvent.click(screen.getByText('Click Me'));
    expect(handleClick).toHaveBeenCalledTimes(1);
  });

  it('is disabled when isDisabled is true', () => {
    render(<Button isDisabled>Click Me</Button>);
    expect(screen.getByText('Click Me')).toBeDisabled();
  });
});
```

### Integration Testing
```typescript
// Example of component integration test
import { render, screen, fireEvent } from '@testing-library/react';
import { Form } from './Form';

describe('Form', () => {
  it('submits the form with correct data', async () => {
    const handleSubmit = jest.fn();
    render(<Form onSubmit={handleSubmit} />);
    
    fireEvent.change(screen.getByLabelText('Name'), {
      target: { value: 'John Doe' },
    });
    
    fireEvent.change(screen.getByLabelText('Email'), {
      target: { value: 'john@example.com' },
    });
    
    fireEvent.click(screen.getByText('Submit'));
    
    expect(handleSubmit).toHaveBeenCalledWith({
      name: 'John Doe',
      email: 'john@example.com',
    });
  });
});
```

## Related Documentation
- [UI/UX Standards](./ui-ux-standards-template.md)
- [Accessibility Guidelines](./accessibility-guidelines-template.md)