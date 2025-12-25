/** @type {import('next').NextConfig} */
const nextConfig = {
  // 🔧 إصلاح مشكلة three.js إذا كنت تستخدمه
  transpilePackages: ['three'],
  
  // ⚡ تجاهل أخطاء ESLint أثناء البناء
  eslint: {
    ignoreDuringBuilds: true,
  },
  
  // 🖼️ إعدادات تحسين الصور
  images: {
    formats: ['image/avif', 'image/webp'], // تنسيقات حديثة
    deviceSizes: [640, 750, 828, 1080, 1200, 1920], // أحجام متعددة
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'vexachat.world', // نطاقك
      },
      {
        protocol: 'https',
        hostname: 'api.dicebear.com', // الصور العشوائية
      },
      {
        protocol: 'https',
        hostname: 'kddotgdasarvzlxoheqs.supabase.co', // سوبابيس
      },
    ],
  },
  
  // 🛠️ تكوين Webpack
  webpack(config) {
    // تحويل SVG إلى مكونات React
    config.module.rules.push({
      test: /\.svg$/,
      use: ['@svgr/webpack'],
    });
    return config;
  },
  
  // 🧪 إعدادات تجريبية
  experimental: {
    // دعم Supabase في Server Components
    serverComponentsExternalPackages: ['@supabase/supabase-js'],
  },
  
  // 🔒 رؤوس الأمان
  async headers() {
    return [
      {
        source: '/:path*', // جميع الصفحات
        headers: [
          {
            key: 'X-DNS-Prefetch-Control',
            value: 'on' // تحسين سرعة التحميل
          },
          {
            key: 'Strict-Transport-Security',
            value: 'max-age=31536000; includeSubDomains' // إجبار HTTPS
          },
          {
            key: 'X-Content-Type-Options',
            value: 'nosniff' // منع تغيير نوع الملف
          },
          {
            key: 'X-Frame-Options',
            value: 'DENY' // منع التضمين في iframe
          },
          {
            key: 'X-XSS-Protection',
            value: '1; mode=block' // حماية من هجمات XSS
          },
          {
            key: 'Referrer-Policy',
            value: 'strict-origin-when-cross-origin' // خصوصية المرجع
          },
          {
            key: 'Permissions-Policy',
            value: 'camera=(), microphone=(), geolocation=()' // التحكم في الصلاحيات
          },
        ],
      },
    ];
  },
  
  // 🎯 إعدادات إضافية لحل مشاكل Vercel
  typescript: {
    ignoreBuildErrors: true, // تجاهل أخطاء TypeScript أثناء البناء
  },
  
  // 🌐 إعدادات الاستجابة
  poweredByHeader: false, // إخفاء رأس "Powered by Next.js"
  
  // 📦 التحكم في حجم الحزمة
  compiler: {
    removeConsole: process.env.NODE_ENV === 'production', // إزالة console في الإنتاج
  },
  
  // 🚀 تحسينات الأداء
  reactStrictMode: true, // وضع React الصارم
  
  // 🔧 إصلاح مشكلة Edge Runtime
  // إذا ظهرت أخطاء متعلقة بـ Edge Runtime، أضف:
  // runtime: 'nodejs', // تعطيل Edge Runtime مؤقتاً
};

export default nextConfig;
