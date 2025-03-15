# {{project_name}} Accessibility Guidelines

## Accessibility Standards

The {{project_name}} platform is committed to providing an accessible experience for all users, including those with disabilities. This document outlines the accessibility standards, implementation strategies, and best practices used throughout the application.

The platform aims to meet or exceed the following accessibility standards:

- **WCAG 2.1 AA**: Web Content Accessibility Guidelines Level AA compliance
- **Section 508**: U.S. federal accessibility requirements
- **ADA**: Americans with Disabilities Act requirements
- **WAI-ARIA 1.2**: Accessible Rich Internet Applications specification

## Core Accessibility Principles

1. **Perceivable**: Information and user interface components must be presentable to users in ways they can perceive
2. **Operable**: User interface components and navigation must be operable
3. **Understandable**: Information and the operation of the user interface must be understandable
4. **Robust**: Content must be robust enough to be interpreted by a wide variety of user agents, including assistive technologies

## Semantic HTML

### Using Proper HTML Elements

```typescript
// Incorrect
<div className="button" onClick={handleClick}>Click Me</div>

// Correct
<button onClick={handleClick}>Click Me</button>
```

### Document Structure

```typescript
// Example of proper document structure
export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <head>
        <title>{{project_name}}</title>
        <meta name="description" content="Project description" />
      </head>
      <body>
        <header>
          <nav>
            {/* Navigation content */}
          </nav>
        </header>
        <main>{children}</main>
        <footer>
          {/* Footer content */}
        </footer>
      </body>
    </html>
  );
}
```

### Headings Hierarchy

```typescript
<h1>Page Title</h1>
<section>
  <h2>Section Title</h2>
  <p>Section content...</p>
  
  <article>
    <h3>Article Title</h3>
    <p>Article content...</p>
    
    <section>
      <h4>Subsection Title</h4>
      <p>Subsection content...</p>
    </section>
  </article>
</section>
```

## Keyboard Accessibility

### Focus Management

```typescript
// Example of focus management in a modal component
```

### Skip Links

```typescript
// Example of skip links implementation
```

### Keyboard Navigation

```typescript
// Example of keyboard navigation in a tabs component
```

## ARIA Attributes

### ARIA Roles

```typescript
// Examples of ARIA roles
<nav role="navigation">
  {/* Navigation content */}
</nav>

<div role="search">
  <input type="text" placeholder="Search..." />
  <button>Search</button>
</div>

<div role="alert">
  <p>Form submitted successfully!</p>
</div>
```

### ARIA States and Properties

```typescript
// Examples of ARIA states and properties
<button
  aria-expanded={isExpanded}
  aria-controls="dropdown-menu"
  onClick={() => setIsExpanded(!isExpanded)}
>
  Menu
</button>
<ul
  id="dropdown-menu"
  hidden={!isExpanded}
>
  <li><a href="/home">Home</a></li>
  <li><a href="/about">About</a></li>
</ul>
```

### ARIA Landmarks

```typescript
// Examples of ARIA landmarks
<header role="banner">
  <h1>{{project_name}}</h1>
</header>

<nav role="navigation" aria-label="Main Navigation">
  {/* Navigation links */}
</nav>

<main role="main">
  {/* Main content */}
</main>

<aside role="complementary">
  {/* Sidebar content */}
</aside>

<footer role="contentinfo">
  {/* Footer content */}
</footer>
```

## Forms Accessibility

### Accessible Form Controls

```typescript
// Example of accessible form controls
<form onSubmit={handleSubmit}>
  <div className="mb-4">
    <label htmlFor="name" className="block mb-1">
      Name
    </label>
    <input
      id="name"
      type="text"
      value={name}
      onChange={(e) => setName(e.target.value)}
      aria-required="true"
      aria-invalid={!!errors.name}
      className="w-full px-3 py-2 border rounded"
    />
    {errors.name && (
      <div role="alert" className="text-red-500 mt-1">
        {errors.name}
      </div>
    )}
  </div>
  
  <button
    type="submit"
    disabled={isSubmitting}
    aria-busy={isSubmitting}
    className="px-4 py-2 bg-blue-500 text-white rounded"
  >
    {isSubmitting ? 'Submitting...' : 'Submit'}
  </button>
</form>
```

## Color and Contrast

### Color Contrast Requirements

- **Normal Text**: Contrast ratio of at least 4.5:1
- **Large Text**: Contrast ratio of at least 3:1
- **UI Components and Graphics**: Contrast ratio of at least 3:1

### Not Relying on Color Alone

```typescript
// Example of not relying on color alone
<div className="flex items-center">
  <div className="w-4 h-4 rounded-full bg-green-500 mr-2" aria-hidden="true" />
  <span>Available</span>
</div>

<div className="flex items-center">
  <div className="w-4 h-4 rounded-full bg-red-500 mr-2" aria-hidden="true" />
  <span>Unavailable</span>
</div>
```

## Images and Media

### Alternative Text

```typescript
// Example of alternative text for images
import Image from 'next/image';

function ProductImage({ product }) {
  return (
    <Image
      src={product.imageUrl || '/placeholder-image.jpg'}
      alt={product.imageAlt || `Image for ${product.title}`}
      width={300}
      height={200}
    />
  );
}

// For decorative images
function DecorativeImage() {
  return (
    <Image
      src="/decorative-pattern.jpg"
      alt=""
      role="presentation"
      width={500}
      height={300}
    />
  );
}
```

### Captions and Transcripts

```typescript
// Example of captions and transcripts
<figure>
  <Image
    src="/chart-data.png"
    alt="Chart showing user growth over 12 months"
    width={600}
    height={400}
  />
  <figcaption className="mt-2 text-sm text-gray-600">
    Figure 1: Monthly user growth from January to December 2024
  </figcaption>
</figure>
```

## Responsive Design

### Responsive and Accessible Design

```typescript
// Example of responsive and accessible design
<div className="container mx-auto px-4 sm:px-6 lg:px-8">
  <h1 className="text-2xl sm:text-3xl md:text-4xl font-bold">
    Welcome to {{project_name}}
  </h1>
  <p className="text-base sm:text-lg md:text-xl">
    Project description
  </p>
  
  {/* Responsive grid with appropriate spacing */}
  <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6 lg:gap-8 mt-6">
    {/* Grid items */}
  </div>
</div>
```

## Testing Accessibility

### Automated Testing

```typescript
// Example of automated accessibility testing
import { render } from '@testing-library/react';
import { axe, toHaveNoViolations } from 'jest-axe';
import { Button } from './Button';

expect.extend(toHaveNoViolations);

describe('Button', () => {
  it('should not have accessibility violations', async () => {
    const { container } = render(<Button>Click me</Button>);
    const results = await axe(container);
    expect(results).toHaveNoViolations();
  });
});
```

### Manual Testing

- **Keyboard Navigation**: Test all interactive elements with keyboard only
- **Screen Reader Testing**: Test with NVDA, JAWS, or VoiceOver
- **Zoom Testing**: Test at 200% zoom
- **Color Contrast**: Verify with tools like Contrast Checker
- **Reduced Motion**: Test with reduced motion preferences

## Best Practices

1. **Use semantic HTML**: Choose the right element for the right purpose
2. **Implement proper focus management**: Ensure keyboard navigation works
3. **Provide alternative text**: Add descriptive alt text for images
4. **Ensure sufficient color contrast**: Meet WCAG contrast requirements
5. **Don't rely on color alone**: Use additional indicators
6. **Create accessible forms**: Use labels, validation, and error messages
7. **Implement ARIA when needed**: Use ARIA roles, states, and properties
8. **Test with assistive technologies**: Verify with screen readers
9. **Support keyboard navigation**: Make all interactions keyboard accessible
10. **Provide skip links**: Allow users to bypass repetitive content

## Related Documentation
- [UI/UX Standards](./ui-ux-standards-template.md)
- [Component Architecture](./component-architecture-template.md)