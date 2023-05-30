import { render, screen } from '@testing-library/react';
import App from './App';

test('renders Codin 1', () => {
  render(<App />);
  const el = screen.getByText(/Codin 1/i);
  expect(el).toBeInTheDocument();
});
