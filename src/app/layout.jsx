import { Inter } from 'next/font/google'
import '@/styles/globals.css'
import '@/styles/animations.css'
import '@/styles/theme.css'
import Header from '@/components/Header'
import { Analytics } from '@vercel/analytics/next'
import HolographicGrid from '@/components/Background/HolographicGrid'
import FloatingOrbs from '@/components/Background/FloatingOrbs'
import ParticleRain from '@/components/Effects/ParticleRain'
import NeonGlow from '@/components/Effects/NeonGlow'

const inter = Inter({ subsets: ['latin'] })

export const metadata = {
  title: 'VexaChat - تجربة دردشة خارقة',
  description: 'منصة دردشة متطورة بتصميم فريد وأداء ممتاز',
}

export default function RootLayout({ children }) {
  return (
    <html lang="ar" dir="rtl" className="dark">
      <body className={`${inter.className} bg-gray-950 text-white antialiased selection:bg-purple-500/30 overflow-x-hidden`}>
        {/* جميع التأثيرات الخفيفة */}
        <HolographicGrid />
        <FloatingOrbs />
        <ParticleRain density={20} />
        <NeonGlow />
        
        {/* طبقة التعتيم الخفيفة */}
        <div className="fixed inset-0 bg-gradient-to-br from-gray-950 via-purple-950/20 to-cyan-950/10 z-[-1]" />
        
        {/* المحتوى الرئيسي */}
        <div className="relative flex min-h-screen flex-col z-10">
          <Header />
          <main className="flex-grow pt-16">
            {children}
          </main>
        </div>
        
        <Analytics />
        
        {/* تأثيرات CSS فقط */}
        <style jsx global>{`
          /* تأثيرات النص المتلألئ */
          .text-glow {
            text-shadow: 0 0 10px rgba(0, 240, 255, 0.5),
                         0 0 20px rgba(0, 240, 255, 0.3),
                         0 0 30px rgba(0, 240, 255, 0.1);
          }
          
          /* تأثيرات التحميل */
          .pulse {
            animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite;
          }
          
          @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.5; }
          }
          
          /* تحسينات للأجهزة المحمولة */
          @media (max-width: 768px) {
            .mobile-optimized {
              transform: translateZ(0);
              backface-visibility: hidden;
              perspective: 1000;
            }
          }
        `}</style>
      </body>
    </html>
  )
}
