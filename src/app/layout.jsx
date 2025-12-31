// هذا ملف Server Component - لا يمكن إضافة 'use client'
export const metadata = {
  title: 'VeXachat - Advanced Social Dating',
  description: 'AI-powered social dating platform with real-time chat',
}

export default function RootLayout({ children }) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
        <style jsx global>{`
          * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
          }
          
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            min-height: 100vh;
          }
          
          a {
            text-decoration: none;
            color: inherit;
          }
          
          button {
            cursor: pointer;
            border: none;
            outline: none;
          }
        `}</style>
      </head>
      <body>
        <main>
          {children}
        </main>
      </body>
    </html>
  )
}
