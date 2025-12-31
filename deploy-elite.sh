#!/bin/bash

echo "💎 جاري إنشاء هيكل مشروع VeXachat Elite المتكامل..."

# 1. إنشاء المجلدات الأساسية
mkdir -p css js assets

# 2. إنشاء ملف الإعدادات لـ Vercel (لتجنب أخطاء البناء)
cat > vercel.json << 'EOF'
{
  "version": 2,
  "public": true,
  "framework": null,
  "cleanUrls": true
}
EOF

# 3. إنشاء ملف package.json
cat > package.json << 'EOF'
{
  "name": "vexachat-elite",
  "version": "1.0.0",
  "description": "Premium Adult Social Platform",
  "main": "index.html",
  "scripts": {
    "start": "npx serve ."
  }
}
EOF

# 4. فصل كود CSS في ملف مستقل ليكون المشروع منظماً
cat > css/style.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');

:root {
    --primary: #a50153;
    --secondary: #480686;
    --accent: #036d6d;
    --dark: #000000;
    --glass: rgba(255, 255, 255, 0.082);
}

body { 
    background-color: var(--dark); 
    color: white; 
    font-family: 'Inter', sans-serif; 
    overflow-x: hidden;
}

.glass { 
    background: var(--glass); 
    border: 1px solid rgba(255, 45, 149, 0.2); 
    backdrop-filter: blur(20px); 
    border-radius: 20px; 
}

.neon-glow { box-shadow: 0 0 40px rgba(255, 45, 150, 0.123); }
.text-neon { color: var(--primary); text-shadow: 0 0 15px rgba(255, 45, 149, 0.6); }
.gradient-bg { background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%); }
.gradient-text {
    background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 50%, var(--accent) 100%);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
}

.bg-animate {
    position: fixed;
    top: 0; left: 0; width: 100%; height: 100%;
    z-index: -1;
    background: 
        radial-gradient(circle at 20% 30%, rgba(255, 45, 149, 0.1), transparent),
        radial-gradient(circle at 80% 70%, rgba(138, 43, 226, 0.1), transparent),
        radial-gradient(circle at 50% 50%, rgba(0, 255, 255, 0.05), transparent);
    animation: bgMove 20s infinite alternate;
}

@keyframes bgMove {
    0% { transform: scale(1) rotate(0deg); }
    100% { transform: scale(1.1) rotate(2deg); }
}

.custom-scrollbar::-webkit-scrollbar { width: 6px; }
.custom-scrollbar::-webkit-scrollbar-track { background: rgba(255, 255, 255, 0.05); border-radius: 10px; }
.custom-scrollbar::-webkit-scrollbar-thumb { background: linear-gradient(var(--primary), var(--secondary)); border-radius: 10px; }

.hover-lift:hover { transform: translateY(-5px); transition: transform 0.3s ease; }
EOF

# 5. إنشاء ملف JavaScript للتحكم في التفاعلات (Tabs/Chat)
cat > js/main.js << 'EOF'
function showTab(tabId) {
    const tabs = ['chat-tab', 'models-tab', 'rooms-tab', 'dating-tab', 'shop-tab'];
    tabs.forEach(id => {
        const el = document.getElementById(id);
        if (el) el.classList.add('hidden');
    });
    const activeTab = document.getElementById(tabId + '-tab');
    if (activeTab) activeTab.classList.remove('hidden');
}

function sendMessage() {
    const input = document.getElementById('chatInput');
    const msg = input.value;
    if (msg.trim() !== "") {
        const chatBox = document.getElementById('chatMessages');
        const div = document.createElement('div');
        div.className = "bg-white/5 p-3 rounded-xl border-l-4 border-pink-500 animate-fade-in";
        div.innerHTML = `<span class="text-pink-400 font-bold">You:</span> <span class="text-gray-200">${msg}</span>`;
        chatBox.appendChild(div);
        input.value = "";
        chatBox.scrollTop = chatBox.scrollHeight;
    }
}
EOF

# 6. إنشاء ملف index.html وربطه بالملفات الجديدة
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VeXachat Elite | UNLEASH YOUR DESIRES</title>
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
        <select class="bg-transparent border-none outline-none text-white text-[10px]">
            <option value="en">🇺🇸 English</option>
            <option value="ar">🇸🇦 العربية</option>
        </select>
    </div>

    <div class="max-w-7xl mx-auto px-4 py-6">
        <header class="text-center mb-10">
            <h1 class="text-5xl md:text-7xl font-black italic tracking-tighter uppercase mb-2 gradient-text">VEXACHAT ELITE</h1>
            <p class="text-pink-500 font-bold tracking-[0.3em] text-[10px] uppercase opacity-90">UNLEASH YOUR DESIRES</p>
        </header>

        <nav class="glass neon-glow p-2 mb-8 grid grid-cols-6 gap-1">
            <button onclick="showTab('chat')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-comments text-cyan-400"></i>
                <span class="text-[8px] font-bold">CHAT</span>
            </button>
            <button onclick="showTab('models')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-star text-yellow-400"></i>
                <span class="text-[8px] font-bold">MODELS</span>
            </button>
            <button onclick="showTab('rooms')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-video text-pink-400"></i>
                <span class="text-[8px] font-bold">ROOMS</span>
            </button>
            <button onclick="showTab('dating')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-heart text-red-400"></i>
                <span class="text-[8px] font-bold">DATING</span>
            </button>
            <button onclick="showTab('shop')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-gem text-purple-400"></i>
                <span class="text-[8px] font-bold">SHOP</span>
            </button>
            <button onclick="showTab('profile')" class="p-3 rounded-xl hover:bg-white/5 transition-all flex flex-col items-center gap-1">
                <i class="fas fa-user text-white/50"></i>
                <span class="text-[8px] font-bold">PROFILE</span>
            </button>
        </nav>

        <main class="grid lg:grid-cols-3 gap-8">
            <div id="chat-tab" class="lg:col-span-2 glass flex flex-col h-[500px] overflow-hidden">
                <div class="p-4 border-b border-white/10 flex justify-between items-center">
                    <span class="text-xs font-bold text-cyan-400 tracking-widest"><i class="fas fa-circle text-[8px] animate-pulse mr-2 text-green-500"></i>DEEP LOUNGE</span>
                </div>
                <div id="chatMessages" class="flex-1 p-4 overflow-y-auto space-y-4 custom-scrollbar bg-black/20">
                    <div class="bg-white/5 p-3 rounded-xl border-l-4 border-cyan-500">
                        <span class="text-cyan-400 font-bold text-xs">System:</span>
                        <p class="text-xs text-gray-400">Welcome to the elite encrypted lounge. Stay private.</p>
                    </div>
                </div>
                <div class="p-4 bg-black/40 flex gap-2">
                    <input type="text" id="chatInput" class="flex-1 bg-white/5 border border-white/10 rounded-xl px-4 text-xs outline-none focus:border-pink-500" placeholder="Type your message...">
                    <button onclick="sendMessage()" class="gradient-bg px-4 py-2 rounded-xl"><i class="fas fa-paper-plane text-xs"></i></button>
                </div>
            </div>

            <div id="models-tab" class="space-y-4">
                <div class="glass p-4">
                    <h3 class="text-[10px] font-bold text-pink-500 uppercase mb-4 tracking-widest">Live Models</h3>
                    <div class="flex items-center gap-3 p-2 hover:bg-white/5 rounded-xl cursor-pointer">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=100" class="w-10 h-10 rounded-full border border-pink-500">
                        <div>
                            <div class="text-xs font-bold">Miyuki <span class="text-green-500">●</span></div>
                            <div class="text-[8px] text-gray-500">Tokyo • VIP</div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <script src="js/main.js"></script>
</body>
</html>
EOF

# 7. الرفع النهائي إلى GitHub و Vercel
echo "📤 جاري الرفع إلى المستودع و Vercel..."
git add .
git commit -m "Complete Elite Template Build 2026"
git push origin main

# الرفع لـ Vercel (سيأخذ الإعدادات من vercel.json)
vercel --prod --yes --force

echo "✅ مبروك! مشروعك الآن يعمل بكامل ملفاته المنظمة."