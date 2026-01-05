#!/bin/bash

echo "🔄 جاري تحديث اسم المشروع إلى VeXachat وإصلاح إعدادات الرفع..."

# 1. تنظيف شامل للمخلفات السابقة
rm -rf .next out build package.json vercel.json

# 2. إنشاء ملف vercel.json (لإجبار Vercel على التعامل معه كموقع Static)
cat > vercel.json << 'EOF'
{
  "version": 2,
  "framework": null,
  "buildCommand": null,
  "installCommand": null,
  "outputDirectory": "."
}
EOF

# 3. إنشاء ملف package.json بسيط جداً بدون أوامر Next.js
cat > package.json << 'EOF'
{
  "name": "vexachat",
  "version": "1.0.0",
  "private": true
}
EOF

# 4. إنشاء ملف CSS المنفصل (التصميم الأصلي)
mkdir -p css
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

# 5. إنشاء ملف index.html بالاسم الجديد VeXachat
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VeXachat | UNLEASH YOUR DESIRES</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="bg-animate"></div>
    
    <div class="w-full bg-gradient-to-r from-pink-900 to-purple-900 text-white text-[10px] font-bold py-2 px-4 text-center tracking-wider uppercase border-b border-white/10 sticky top-0 z-50 flex justify-between items-center">
        <div class="flex items-center gap-2">
            <i class="fas fa-exclamation-triangle animate-pulse text-yellow-500"></i>
            <span>EXPLICIT CONTENT - 19+ ONLY</span>
        </div>
        <span class="text-[9px]">VeXachat Official</span>
    </div>

    <div class="max-w-7xl mx-auto px-4 py-6">
        <header class="text-center mb-10">
            <h1 class="text-6xl md:text-8xl font-black italic tracking-tighter uppercase mb-2 gradient-text">VEXACHAT</h1>
            <p class="text-pink-500 font-bold tracking-[0.3em] text-xs uppercase opacity-90">UNLEASH YOUR DESIRES</p>
        </header>

        <nav class="glass neon-glow p-2 mb-8 grid grid-cols-6 gap-1">
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-comments text-cyan-400"></i>
                <span class="text-[8px] font-bold">CHAT</span>
            </button>
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-star text-yellow-400"></i>
                <span class="text-[8px] font-bold">MODELS</span>
            </button>
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-video text-pink-400"></i>
                <span class="text-[8px] font-bold">ROOMS</span>
            </button>
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-heart text-red-400"></i>
                <span class="text-[8px] font-bold">DATING</span>
            </button>
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-gem text-purple-400"></i>
                <span class="text-[8px] font-bold">SHOP</span>
            </button>
            <button class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-user text-white/50"></i>
                <span class="text-[8px] font-bold">PROFILE</span>
            </button>
        </nav>

        <main class="glass p-12 text-center">
            <h2 class="text-3xl font-bold mb-4">Welcome to VeXachat</h2>
            <p class="text-gray-400">The platform has been updated successfully.</p>
        </main>
    </div>
</body>
</html>
EOF

# 6. دفع التغييرات إلى GitHub والرفع لـ Vercel
git add .
git commit -m "Update name to VeXachat and fix Vercel static settings"
git push origin main
vercel --prod --yes --force

echo "✅ تم التحديث! المشروع متاح الآن باسم VeXachat وبدون أخطاء Next.js."