export const metadata = {
  title: 'VeXachat',
  description: 'Advanced Social Dating Platform',
}

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body style={{ margin: 0, padding: 0 }}>
        {children}
      </body>
    </html>
  )
}
