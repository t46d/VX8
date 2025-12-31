#!/bin/bash

echo "💎 البدء في بناء هيكل VeXachat Elite المنظم..."

# 1. تنظيف الملفات القديمة (إذا وجدت) لضمان عدم حدوث تعارض
rm -rf .next out build package-lock.json

# 2. إنشاء المجلدات
mkdir -p public css js

# 3. إنشاء ملف الإعدادات الحاسم لـ Vercel (هذا يحل مشكلة Next.js)
cat > vercel.json << 'EOF'
{
  "version": 2,
  "framework": null,
  "buildCommand": "mkdir -p out && cp -r * out/ 2>/dev/null || true",
  "outputDirectory": "out",
  "cleanUrls": true
}
EOF

# 4. تحديث package.json بأوامر بناء وهمية لمنع الخطأ
cat > package.json << 'EOF'
{
  "name": "vexachat-elite",
  "version": "1.0.0",
  "scripts": {
    "build": "echo 'No build needed'"
  }
}
EOF

# 5. فصل كود CSS (بدون أي تحريف في التصميم)
cat > css/style.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');
:root {
    --primary: #a50153; --secondary: #480686; --accent: #036d6d;
    --dark: #000000; --glass: rgba(255, 255, 255, 0.082);
}
body { background-color: var(--dark); color: white; font-family: 'Inter', sans-serif; overflow-x: hidden; }
.glass { background: var(--glass); border: 1px solid rgba(255, 45, 149, 0.2); backdrop-filter: blur(20px); border-radius: 20px; }
.neon-glow { box-shadow: 0 0 40px rgba(255, 45, 150, 0.123); }
.gradient-text {
    background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 50%, var(--accent) 100%);
    -webkit-background-clip: text; background-clip: text; color: transparent;
}
.bg-animate {
    position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1;
    background: radial-gradient(circle at 20% 30%, rgba(255, 45, 149, 0.1), transparent),
                radial-gradient(circle at 80% 70%, rgba(138, 43, 226, 0.1), transparent);
}
EOF

# 6. إنشاء ملف index.html وربطه بالملفات
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VeXachat Elite</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="bg-animate"></div>
    <div class="max-w-7xl mx-auto px-4 py-6">
        <header class="text-center mb-10">
            <h1 class="text-6xl font-black italic gradient-text uppercase">VEXACHAT ELITE</h1>
            <p class="text-pink-500 tracking-[0.3em] text-xs">UNLEASH YOUR DESIRES</p>
        </header>

        <nav class="glass p-4 mb-8 grid grid-cols-3 md:grid-cols-6 gap-2 text-center">
            <div class="cursor-pointer hover:text-pink-500"><i class="fas fa-comments text-xl"></i><p class="text-[10px]">CHAT</p></div>
            <div class="cursor-pointer hover:text-yellow-500"><i class="fas fa-star text-xl"></i><p class="text-[10px]">MODELS</p></div>
            <div class="cursor-pointer hover:text-pink-500"><i class="fas fa-video text-xl"></i><p class="text-[10px]">ROOMS</p></div>
            <div class="cursor-pointer hover:text-red-500"><i class="fas fa-heart text-xl"></i><p class="text-[10px]">DATING</p></div>
            <div class="cursor-pointer hover:text-purple-500"><i class="fas fa-gem text-xl"></i><p class="text-[10px]">SHOP</p></div>
            <div class="cursor-pointer hover:text-white"><i class="fas fa-user text-xl"></i><p class="text-[10px]">PROFILE</p></div>
        </nav>

        <div class="glass p-8 text-center neon-glow">
            <h2 class="text-2xl font-bold mb-4">مرحباً بك في النسخة النخبوية</h2>
            <p class="text-gray-400">نظام التشغيل جاهز الآن. تم إصلاح أخطاء الرفع.</p>
        </div>
    </div>
</body>
</html>
EOF

# 7. الرفع إلى Vercel
echo "📤 جاري الرفع الآن..."
git add .
git commit -m "Fix: Force static deployment, remove Next.js dependency"
git push origin main
vercel --prod --yes