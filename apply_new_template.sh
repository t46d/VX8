#!/bin/bash

echo "🔄 بدء عملية دمج القالب الجديد..."

# التحقق من وجود الملف القديم
if [ ! -f "index.html" ]; then
    echo "❌ ملف index.html غير موجود في المجلد الحالي"
    echo "📁 يرجى تشغيل السكريبت من مجلد المشروع الرئيسي"
    exit 1
fi

# إنشاء نسخة احتياطية من الملف القديم
BACKUP_FILE="index_old_$(date +%Y%m%d_%H%M%S).html"
echo "💾 إنشاء نسخة احتياطية: $BACKUP_FILE"
cp index.html "$BACKUP_FILE"

# إنشاء الملف الجديد مع تحديث السنة إلى 2026
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VeXachat Elite | UNLEASH YOUR DESIRES</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');
        
        :root {
            --primary: #ff2d95;
            --secondary: #8a2be2;
            --accent: #00ffff;
            --dark: #0a0a0a;
            --glass: rgba(255, 255, 255, 0.05);
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

        .neon-glow {
            box-shadow: 0 0 40px rgba(255, 45, 149, 0.15);
        }

        .text-neon {
            color: var(--primary);
            text-shadow: 0 0 15px rgba(255, 45, 149, 0.6);
        }

        .gradient-bg {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
        }

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

        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }

        .custom-scrollbar::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
        }

        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: linear-gradient(var(--primary), var(--secondary));
            border-radius: 10px;
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.7; }
        }

        .pulse {
            animation: pulse 2s infinite;
        }

        .hover-lift:hover {
            transform: translateY(-5px);
            transition: transform 0.3s ease;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 24px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 24px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .slider {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
        }

        input:checked + .slider:before {
            transform: translateX(26px);
        }
    </style>
</head>
<body>
    <div class="bg-animate"></div>

    <!-- Age Warning -->
    <div class="w-full bg-gradient-to-r from-pink-900 to-purple-900 text-white text-xs font-bold py-3 px-4 text-center tracking-wider uppercase border-b border-white/10 sticky top-0 z-50 flex justify-between items-center">
        <div class="flex items-center gap-2">
            <i class="fas fa-exclamation-triangle animate-pulse"></i>
            <span>EXPLICIT CONTENT - 19+ ONLY</span>
        </div>
        <div class="flex items-center gap-4 text-xs">
            <select id="languageSelector" class="bg-transparent border-none outline-none text-white">
                <option value="en">🇺🇸 English</option>
                <option value="th">🇹🇭 ไทย</option>
                <option value="es">🇪🇸 Español</option>
                <option value="fr">🇫🇷 Français</option>
                <option value="ru">🇷🇺 Русский</option>
                <option value="ar">🇸🇦 العربية</option>
            </select>
        </div>
    </div>

    <!-- Top Model Banner -->
    <div class="max-w-7xl mx-auto px-4 py-6">
        <div class="glass neon-glow overflow-hidden mb-8">
            <div class="flex flex-col md:flex-row">
                <div class="md:w-2/3 p-8">
                    <div class="flex items-center gap-4 mb-4">
                        <div class="relative">
                            <img src="https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" class="w-24 h-24 rounded-full border-4 border-pink-500/50">
                            <div class="absolute bottom-0 right-0 bg-green-500 text-white text-xs px-2 py-1 rounded-full">
                                <i class="fas fa-circle"></i> LIVE
                            </div>
                        </div>
                        <div>
                            <h2 class="text-2xl font-bold gradient-text">Sakura</h2>
                            <p class="text-sm text-gray-300">Tokyo • Premium Model • VIP Only</p>
                            <div class="flex items-center gap-2 mt-2">
                                <span class="text-xs bg-pink-900/50 px-3 py-1 rounded-full">🔥 Hot</span>
                                <span class="text-xs bg-purple-900/50 px-3 py-1 rounded-full">⭐ Featured</span>
                                <span class="text-xs bg-blue-900/50 px-3 py-1 rounded-full">🎤 Voice Chat</span>
                            </div>
                        </div>
                    </div>
                    <p class="text-gray-300 mb-4">"Experience exclusive private shows and intimate conversations. Connect now for unforgettable moments."</p>
                    <div class="flex gap-4">
                        <button class="gradient-bg text-white px-6 py-3 rounded-xl font-bold hover:opacity-90 transition-all">
                            <i class="fas fa-video mr-2"></i>Private Show ($50)
                        </button>
                        <button class="bg-white/10 text-white px-6 py-3 rounded-xl font-bold border border-pink-500/30 hover:bg-white/20 transition-all">
                            <i class="fas fa-comment mr-2"></i>Chat Now ($10)
                        </button>
                    </div>
                </div>
                <div class="md:w-1/3 bg-gradient-to-br from-pink-900/30 to-purple-900/30 p-8 flex flex-col justify-center">
                    <div class="text-center">
                        <div class="text-4xl font-bold mb-2">4.9</div>
                        <div class="text-sm text-gray-300 mb-4">Rating (2.4K reviews)</div>
                        <div class="space-y-2">
                            <div class="flex justify-between text-sm">
                                <span>Response Time:</span>
                                <span class="text-green-400">2 min</span>
                            </div>
                            <div class="flex justify-between text-sm">
                                <span>Online Now:</span>
                                <span class="text-green-400">Yes</span>
                            </div>
                            <div class="flex justify-between text-sm">
                                <span>VIP Members:</span>
                                <span class="text-yellow-400">156</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="max-w-7xl mx-auto px-4 py-6">
        
        <!-- Header -->
        <header class="text-center mb-10">
            <h1 class="text-6xl md:text-8xl font-black italic tracking-tighter uppercase mb-2 gradient-text">
                VEXACHAT ELITE
            </h1>
            <p class="text-pink-500 font-bold tracking-[0.3em] text-sm uppercase opacity-90 mb-2">
                UNLEASH YOUR DESIRES
            </p>
            <p class="text-gray-400 text-sm max-w-2xl mx-auto">
                Premium adult social platform connecting elite users worldwide
            </p>
        </header>

        <!-- Stats -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
            <div class="glass p-4 text-center hover-lift">
                <div class="text-2xl font-bold gradient-text">65K+</div>
                <div class="text-xs text-gray-400">ACTIVE USERS</div>
            </div>
            <div class="glass p-4 text-center hover-lift">
                <div class="text-2xl font-bold gradient-text">2M+</div>
                <div class="text-xs text-gray-400">DAILY MESSAGES</div>
            </div>
            <div class="glass p-4 text-center hover-lift">
                <div class="text-2xl font-bold gradient-text">25K+</div>
                <div class="text-xs text-gray-400">LIVE ROOMS</div>
            </div>
            <div class="glass p-4 text-center hover-lift">
                <div class="text-2xl font-bold gradient-text">4.9</div>
                <div class="text-xs text-gray-400">USER RATING</div>
            </div>
        </div>

        <!-- Navigation -->
        <nav class="glass neon-glow p-4 mb-8 grid grid-cols-3 md:grid-cols-6 gap-2">
            <button onclick="showTab('chat')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-comments text-xl text-cyan-400"></i>
                <span class="text-[10px] uppercase font-bold">CHAT</span>
            </button>
            <button onclick="showTab('models')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-star text-xl text-yellow-400"></i>
                <span class="text-[10px] uppercase font-bold">MODELS</span>
            </button>
            <button onclick="showTab('rooms')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-video text-xl text-pink-400"></i>
                <span class="text-[10px] uppercase font-bold">ROOMS</span>
            </button>
            <button onclick="showTab('dating')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-heart text-xl text-red-400"></i>
                <span class="text-[10px] uppercase font-bold">DATING</span>
            </button>
            <button onclick="showTab('shop')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-gem text-xl text-purple-400"></i>
                <span class="text-[10px] uppercase font-bold">SHOP</span>
            </button>
            <button onclick="showTab('profile')" class="sidebar-item p-3 rounded-xl transition-all flex flex-col items-center gap-1">
                <i class="fas fa-user text-xl text-white/80"></i>
                <span class="text-[10px] uppercase font-bold">PROFILE</span>
            </button>
        </nav>

        <!-- Main Content -->
        <main class="grid lg:grid-cols-3 gap-8 min-h-[600px]">
            
            <!-- Chat Tab -->
            <div id="chat-tab" class="lg:col-span-2 glass neon-glow flex flex-col overflow-hidden h-[600px]">
                <div class="p-4 border-b border-white/5 flex justify-between items-center bg-white/5">
                    <div class="flex items-center gap-3">
                        <div class="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
                        <span class="text-sm font-bold uppercase tracking-wider text-cyan-400">DEEP LOUNGE</span>
                        <span class="text-xs text-gray-400">VIP Private Chat</span>
                    </div>
                    <div class="flex items-center gap-4">
                        <button class="text-xs bg-gradient-to-r from-cyan-500 to-blue-500 px-3 py-1 rounded-lg flex items-center gap-1">
                            <i class="fas fa-crown"></i>
                            <span>VIP ACCESS</span>
                        </button>
                        <div class="text-xs text-white/40 flex items-center gap-1">
                            <i class="fas fa-users"></i>
                            <span>1,420 Online</span>
                        </div>
                    </div>
                </div>

                <!-- Chat Messages -->
                <div class="flex-1 p-4 space-y-4 overflow-y-auto bg-black/20 custom-scrollbar" id="chatMessages">
                    <!-- Messages will be loaded here -->
                </div>

                <!-- Chat Input -->
                <div class="p-4 bg-black/60 border-t border-white/5">
                    <div class="flex gap-3">
                        <div class="flex gap-1">
                            <button class="p-2 bg-white/5 rounded-lg hover:bg-white/10">
                                <i class="fas fa-image text-gray-400"></i>
                            </button>
                            <button class="p-2 bg-white/5 rounded-lg hover:bg-white/10">
                                <i class="fas fa-video text-gray-400"></i>
                            </button>
                            <button class="p-2 bg-white/5 rounded-lg hover:bg-white/10">
                                <i class="fas fa-gift text-gray-400"></i>
                            </button>
                        </div>
                        <input type="text" id="chatInput" placeholder="Type your message here..." class="flex-1 bg-white/5 rounded-xl px-4 outline-none border border-white/5 focus:border-pink-500/50 transition-all text-sm">
                        <button onclick="sendMessage()" class="gradient-bg text-white p-3 rounded-xl shadow-lg shadow-pink-500/20 hover:shadow-xl hover:shadow-pink-500/30 transition-all">
                            <i class="fas fa-paper-plane"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Sidebar -->
            <div class="space-y-6">
                <!-- Online Models -->
                <div id="models-tab" class="glass p-4">
                    <div class="flex justify-between items-center mb-4">
                        <h4 class="text-sm font-bold uppercase tracking-wider text-white">
                            <i class="fas fa-fire text-red-500 mr-2"></i>
                            HOT MODELS ONLINE
                        </h4>
                        <span class="text-xs text-green-400 animate-pulse">LIVE</span>
                    </div>
                    <div class="space-y-3">
                        <!-- Model 1 -->
                        <div class="flex items-center gap-3 p-3 bg-white/5 rounded-xl hover:bg-white/10 cursor-pointer transition-all">
                            <div class="relative">
                                <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" class="w-12 h-12 rounded-full border-2 border-pink-500">
                                <div class="absolute bottom-0 right-0 w-2 h-2 bg-green-500 rounded-full border border-white"></div>
                            </div>
                            <div class="flex-1">
                                <div class="font-bold text-sm">Miyuki</div>
                                <div class="text-xs text-gray-400">Tokyo • 24</div>
                            </div>
                            <button class="text-xs bg-pink-600 px-3 py-1 rounded-lg hover:bg-pink-700">Chat</button>
                        </div>
                        
                        <!-- Model 2 -->
                        <div class="flex items-center gap-3 p-3 bg-white/5 rounded-xl hover:bg-white/10 cursor-pointer transition-all">
                            <div class="relative">
                                <img src="https://images.unsplash.com/photo-1494790108755-2616b786d4d3?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" class="w-12 h-12 rounded-full border-2 border-purple-500">
                                <div class="absolute bottom-0 right-0 w-2 h-2 bg-green-500 rounded-full border border-white"></div>
                            </div>
                            <div class="flex-1">
                                <div class="font-bold text-sm">Chloe</div>
                                <div class="text-xs text-gray-400">Bangkok • 22</div>
                            </div>
                            <button class="text-xs bg-purple-600 px-3 py-1 rounded-lg hover:bg-purple-700">Chat</button>
                        </div>
                        
                        <!-- Model 3 -->
                        <div class="flex items-center gap-3 p-3 bg-white/5 rounded-xl hover:bg-white/10 cursor-pointer transition-all">
                            <div class="relative">
                                <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" class="w-12 h-12 rounded-full border-2 border-blue-500">
                                <div class="absolute bottom-0 right-0 w-2 h-2 bg-green-500 rounded-full border border-white"></div>
                            </div>
                            <div class="flex-1">
                                <div class="font-bold text-sm">Aria</div>
                                <div class="text-xs text-gray-400">Seoul • 25</div>
                            </div>
                            <button class="text-xs bg-blue-600 px-3 py-1 rounded-lg hover:bg-blue-700">Chat</button>
                        </div>
                    </div>
                    <button class="w-full mt-4 py-2 gradient-bg rounded-xl font-bold text-xs uppercase tracking-wider hover:opacity-90 transition-all">
                        <i class="fas fa-plus mr-2"></i>
                        View All Models
                    </button>
                </div>

                <!-- Shop -->
                <div id="shop-tab" class="glass p-4 hidden">
                    <h4 class="text-sm font-bold uppercase tracking-wider text-white mb-4">
                        <i class="fas fa-shopping-cart text-yellow-500 mr-2"></i>
                        VIP STORE
                    </h4>
                    <div class="space-y-3">
                        <div class="bg-gradient-to-r from-pink-900/20 to-purple-900/20 p-3 rounded-xl">
                            <div class="flex justify-between items-center">
                                <div>
                                    <div class="font-bold text-sm">GOLD PACKAGE</div>
                                    <div class="text-xs text-gray-400">500 Coins + VIP Badge</div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-yellow-400">$19.99</div>
                                    <button class="text-xs bg-yellow-600 px-3 py-1 rounded-lg mt-1 hover:bg-yellow-700" onclick="showPayment('gold')">BUY</button>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bg-gradient-to-r from-purple-900/20 to-blue-900/20 p-3 rounded-xl">
                            <div class="flex justify-between items-center">
                                <div>
                                    <div class="font-bold text-sm">PLATINUM PACKAGE</div>
                                    <div class="text-xs text-gray-400">1000 Coins + All Access</div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-gray-300">$39.99</div>
                                    <button class="text-xs bg-purple-600 px-3 py-1 rounded-lg mt-1 hover:bg-purple-700" onclick="showPayment('platinum')">BUY</button>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bg-gradient-to-r from-blue-900/20 to-cyan-900/20 p-3 rounded-xl">
                            <div class="flex justify-between items-center">
                                <div>
                                    <div class="font-bold text-sm">DIAMOND PACKAGE</div>
                                    <div class="text-xs text-gray-400">5000 Coins + Priority Support</div>
                                </div>
                                <div class="text-right">
                                    <div class="font-bold text-cyan-400">$99.99</div>
                                    <button class="text-xs bg-cyan-600 px-3 py-1 rounded-lg mt-1 hover:bg-cyan-700" onclick="showPayment('diamond')">BUY</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Quick Stats -->
                <div class="glass p-4">
                    <h4 class="text-sm font-bold uppercase tracking-wider text-white mb-4">
                        <i class="fas fa-chart-line text-green-500 mr-2"></i>
                        YOUR STATS
                    </h4>
                    <div class="space-y-3">
                        <div class="flex justify-between items-center">
                            <span class="text-xs">Messages Today:</span>
                            <span class="font-bold text-sm">47</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-xs">Connections:</span>
                            <span class="font-bold text-sm">12</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-xs">VIP Coins:</span>
                            <span class="font-bold text-yellow-400">1,250</span>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-xs">Member Level:</span>
                            <span class="font-bold text-pink-400">DIAMOND</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Rooms Tab -->
            <div id="rooms-tab" class="lg:col-span-3 glass neon-glow p-6 hidden">
                <div class="flex justify-between items-center mb-6">
                    <h3 class="text-xl font-bold gradient-text">
                        <i class="fas fa-video mr-2"></i>
                        LIVE ROOMS & SHOWS
                    </h3>
                    <button class="text-sm gradient-bg px-4 py-2 rounded-lg hover:opacity-90 transition-all" onclick="createRoom()">
                        <i class="fas fa-plus mr-2"></i>
                        CREATE ROOM
                    </button>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Room 1 -->
                    <div class="bg-gradient-to-br from-pink-900/20 to-purple-900/20 rounded-2xl overflow-hidden hover-lift">
                        <div class="h-40 bg-gradient-to-r from-pink-500/20 to-purple-500/20 relative">
                            <div class="absolute top-4 right-4 bg-red-500 text-white text-xs px-3 py-1 rounded-full">
                                <i class="fas fa-fire mr-1"></i>HOT
                            </div>
                            <div class="absolute bottom-4 left-4">
                                <div class="flex items-center gap-2">
                                    <div class="w-10 h-10 rounded-full bg-gradient-to-r from-pink-500 to-purple-500 flex items-center justify-center">
                                        <i class="fas fa-crown"></i>
                                    </div>
                                    <div>
                                        <div class="font-bold">Exclusive VIP Party</div>
                                        <div class="text-xs text-gray-300">Hosted by Sakura</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-4">
                            <div class="flex justify-between items-center mb-3">
                                <span class="text-sm text-gray-300">
                                    <i class="fas fa-users mr-1"></i>
                                    156 Online
                                </span>
                                <span class="text-xs bg-green-500/20 text-green-400 px-2 py-1 rounded">FREE ENTRY</span>
                            </div>
                            <p class="text-sm text-gray-400 mb-4">Exclusive VIP party with premium models. Music, drinks, and private shows.</p>
                            <button class="w-full gradient-bg py-2 rounded-lg text-sm font-bold hover:opacity-90 transition-all">
                                JOIN ROOM
                            </button>
                        </div>
                    </div>
                    
                    <!-- Room 2 -->
                    <div class="bg-gradient-to-br from-blue-900/20 to-cyan-900/20 rounded-2xl overflow-hidden hover-lift">
                        <div class="h-40 bg-gradient-to-r from-blue-500/20 to-cyan-500/20 relative">
                            <div class="absolute top-4 right-4 bg-blue-500 text-white text-xs px-3 py-1 rounded-full">
                                <i class="fas fa-star mr-1"></i>NEW
                            </div>
                            <div class="absolute bottom-4 left-4">
                                <div class="flex items-center gap-2">
                                    <div class="w-10 h-10 rounded-full bg-gradient-to-r from-blue-500 to-cyan-500 flex items-center justify-center">
                                        <i class="fas fa-microphone"></i>
                                    </div>
                                    <div>
                                        <div class="font-bold">Voice Chat Lounge</div>
                                        <div class="text-xs text-gray-300">Hosted by Miyuki</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-4">
                            <div class="flex justify-between items-center mb-3">
                                <span class="text-sm text-gray-300">
                                    <i class="fas fa-users mr-1"></i>
                                    89 Online
                                </span>
                                <span class="text-xs bg-yellow-500/20 text-yellow-400 px-2 py-1 rounded">VIP ONLY</span>
                            </div>
                            <p class="text-sm text-gray-400 mb-4">Intimate voice chat with premium models. Private conversations available.</p>
                            <button class="w-full bg-gradient-to-r from-blue-500 to-cyan-500 py-2 rounded-lg text-sm font-bold hover:opacity-90 transition-all">
                                JOIN ROOM ($10)
                            </button>
                        </div>
                    </div>
                    
                    <!-- Room 3 -->
                    <div class="bg-gradient-to-br from-purple-900/20 to-pink-900/20 rounded-2xl overflow-hidden hover-lift">
                        <div class="h-40 bg-gradient-to-r from-purple-500/20 to-pink-500/20 relative">
                            <div class="absolute top-4 right-4 bg-purple-500 text-white text-xs px-3 py-1 rounded-full">
                                <i class="fas fa-gem mr-1"></i>PREMIUM
                            </div>
                            <div class="absolute bottom-4 left-4">
                                <div class="flex items-center gap-2">
                                    <div class="w-10 h-10 rounded-full bg-gradient-to-r from-purple-500 to-pink-500 flex items-center justify-center">
                                        <i class="fas fa-video"></i>
                                    </div>
                                    <div>
                                        <div class="font-bold">Private Show Room</div>
                                        <div class="text-xs text-gray-300">Hosted by Aria</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-4">
                            <div class="flex justify-between items-center mb-3">
                                <span class="text-sm text-gray-300">
                                    <i class="fas fa-users mr-1"></i>
                                    24 Online
                                </span>
                                <span class="text-xs bg-red-500/20 text-red-400 px-2 py-1 rounded">PRIVATE</span>
                            </div>
                            <p class="text-sm text-gray-400 mb-4">Exclusive private shows with top models. Book your private session now.</p>
                            <button class="w-full bg-gradient-to-r from-purple-500 to-pink-500 py-2 rounded-lg text-sm font-bold hover:opacity-90 transition-all">
                                BOOK NOW ($50)
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Dating Tab -->
            <div id="dating-tab" class="lg:col-span-3 glass neon-glow p-6 hidden">
                <div class="flex justify-between items-center mb-6">
                    <h3 class="text-xl font-bold gradient-text">
                        <i class="fas fa-heart mr-2"></i>
                        ELITE DATING CONNECTIONS
                    </h3>
                    <button class="text-sm bg-gradient-to-r from-red-500 to-pink-500 px-4 py-2 rounded-lg hover:opacity-90 transition-all">
                        <i class="fas fa-plus mr-2"></i>
                        FIND MATCHES
                    </button>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
                    <!-- User 1 -->
                    <div class="bg-white/5 rounded-xl p-4 text-center hover:bg-white/10 transition-all cursor-pointer">
                        <img src="https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80" class="w-20 h-20 rounded-full mx-auto mb-3 border-2 border-pink-500">
                        <div class="font-bold">Sophia</div>
                        <div class="text-xs text-gray-400 mb-2">Paris • 26</div>
                        <div class="text-xs text-green-400 mb-3">Online Now</div>
                        <button class="w-full bg-pink-600 text-white text-xs py-2 rounded-lg hover:bg-pink-700">Connect</button>
                    </div>
                    
                    <!-- User 2 -->
                    <div class="bg-white/5 rounded-xl p-4 text-center hover:bg-white/10 transition-all cursor-pointer">
                        <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80" class="w-20 h-20 rounded-full mx-auto mb-3 border-2 border-purple-500">
                        <div class="font-bold">Isabella</div>
                        <div class="text-xs text-gray-400 mb-2">Rome • 24</div>
                        <div class="text-xs text-green-400 mb-3">Online Now</div>
                        <button class="w-full bg-purple-600 text-white text-xs py-2 rounded-lg hover:bg-purple-700">Connect</button>
                    </div>
                    
                    <!-- User 3 -->
                    <div class="bg-white/5 rounded-xl p-4 text-center hover:bg-white/10 transition-all cursor-pointer">
                        <img src="https://images.unsplash.com/photo-1494790108755-2616b786d4d3?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80" class="w-20 h-20 rounded-full mx-auto mb-3 border-2 border-blue-500">
                        <div class="font-bold">Emma</div>
                        <div class="text-xs text-gray-400 mb-2">London • 27</div>
                        <div class="text-xs text-yellow-400 mb-3">Away</div>
                        <button class="w-full bg-blue-600 text-white text-xs py-2 rounded-lg hover:bg-blue-700">Connect</button>
                    </div>
                    
                    <!-- User 4 -->
                    <div class="bg-white/5 rounded-xl p-4 text-center hover:bg-white/10 transition-all cursor-pointer">
                        <img src="https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80" class="w-20 h-20 rounded-full mx-auto mb-3 border-2 border-cyan-500">
                        <div class="font-bold">Olivia</div>
                        <div class="text-xs text-gray-400 mb-2">New York • 25</div>
                        <div class="text-xs text-green-400 mb-3">Online Now</div>
                        <button class="w-full bg-cyan-600 text-white text-xs py-2 rounded-lg hover:bg-cyan-700">Connect</button>
                    </div>
                </div>
            </div>

            <!-- Profile Tab -->
            <div id="profile-tab" class="lg:col-span-3 glass neon-glow p-8 hidden">
                <div class="grid md:grid-cols-3 gap-8">
                    <div class="text-center">
                        <div class="relative w-48 h-48 mx-auto mb-6">
                            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=300&q=80" class="w-full h-full rounded-full border-4 border-gradient-to-r from-pink-500 to-purple-500">
                            <button class="absolute bottom-0 right-0 bg-white text-black p-3 rounded-full hover:bg-gray-100 transition-all">
                                <i class="fas fa-camera"></i>
                            </button>
                        </div>
                        <h2 class="text-2xl font-bold uppercase mb-2">James VIP</h2>
                        <div class="text-sm text-gray-400 mb-4">Level: <span class="text-yellow-400 font-bold">DIAMOND MEMBER</span></div>
                        <div class="flex justify-center gap-4 mb-6">
                            <div class="text-center">
                                <div class="text-lg font-bold">156</div>
                                <div class="text-xs text-gray-400">Connections</div>
                            </div>
                            <div class="text-center">
                                <div class="text-lg font-bold">47</div>
                                <div class="text-xs text-gray-400">Messages</div>
                            </div>
                            <div class="text-center">
                                <div class="text-lg font-bold">1,250</div>
                                <div class="text-xs text-gray-400">Coins</div>
                            </div>
                        </div>
                    </div>

                    <div class="md:col-span-2 space-y-6">
                        <div class="grid md:grid-cols-2 gap-4">
                            <div class="bg-white/5 p-4 rounded-xl">
                                <label class="text-xs font-bold uppercase text-gray-400 block mb-2">
                                    <i class="fas fa-envelope mr-2"></i>
                                    Email Address
                                </label>
                                <input type="email" value="james.vip@example.com" class="bg-transparent w-full outline-none font-bold text-sm text-white">
                            </div>
                            <div class="bg-white/5 p-4 rounded-xl">
                                <label class="text-xs font-bold uppercase text-gray-400 block mb-2">
                                    <i class="fas fa-phone mr-2"></i>
                                    Phone Number
                                </label>
                                <input type="tel" placeholder="+1 (555) 123-4567" class="bg-transparent w-full outline-none font-bold text-sm text-white">
                            </div>
                        </div>

                        <div class="bg-white/5 p-4 rounded-xl">
                            <label class="text-xs font-bold uppercase text-gray-400 block mb-2">
                                <i class="fas fa-heart mr-2"></i>
                                Interests
                            </label>
                            <div class="flex flex-wrap gap-2">
                                <span class="text-xs bg-pink-900/50 px-3 py-1 rounded-full">Premium Models</span>
                                <span class="text-xs bg-purple-900/50 px-3 py-1 rounded-full">Video Chat</span>
                                <span class="text-xs bg-blue-900/50 px-3 py-1 rounded-full">Private Shows</span>
                                <span class="text-xs bg-green-900/50 px-3 py-1 rounded-full">Voice Chat</span>
                            </div>
                        </div>

                        <div class="bg-white/5 p-4 rounded-xl">
                            <label class="text-xs font-bold uppercase text-gray-400 block mb-2">
                                <i class="fas fa-sliders-h mr-2"></i>
                                PRIVACY SETTINGS
                            </label>
                            <div class="space-y-3">
                                <div class="flex justify-between items-center">
                                    <span class="text-sm">Show Online Status</span>
                                    <label class="switch">
                                        <input type="checkbox" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="text-sm">Allow Private Messages</span>
                                    <label class="switch">
                                        <input type="checkbox" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                                <div class="flex justify-between items-center">
                                    <span class="text-sm">Chat Notifications</span>
                                    <label class="switch">
                                        <input type="checkbox" checked>
                                        <span class="slider"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <button class="w-full py-4 gradient-bg rounded-xl font-bold text-sm uppercase tracking-wider shadow-xl hover:opacity-90 transition-all">
                            <i class="fas fa-save mr-2"></i>
                            SAVE CHANGES
                        </button>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- Payment Modal -->
    <div id="paymentModal" class="fixed inset-0 bg-black/70 flex items-center justify-center z-50 hidden">
        <div class="glass p-8 rounded-2xl w-full max-w-md">
            <div class="flex justify-between items-center mb-6">
                <h3 class="text-xl font-bold gradient-text">PAYMENT</h3>
                <button onclick="closePayment()" class="text-gray-400 hover:text-white">
                    <i class="fas fa-times text-xl"></i>
                </button>
            </div>
            <div id="paymentDetails">
                <!-- Payment details will be loaded here -->
            </div>
            <div class="mt-6 space-y-4">
                <div>
                    <label class="text-sm font-bold mb-2 block">CARD NUMBER</label>
                    <input type="text" placeholder="1234 5678 9012 3456" class="w-full bg-white/5 rounded-xl px-4 py-3 outline-none border border-white/5 focus:border-pink-500">
                </div>
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label class="text-sm font-bold mb-2 block">EXPIRY DATE</label>
                        <input type="text" placeholder="MM/YY" class="w-full bg-white/5 rounded-xl px-4 py-3 outline-none border border-white/5 focus:border-pink-500">
                    </div>
                    <div>
                        <label class="text-sm font-bold mb-2 block">CVV</label>
                        <input type="text" placeholder="123" class="w-full bg-white/5 rounded-xl px-4 py-3 outline-none border border-white/5 focus:border-pink-500">
                    </div>
                </div>
                <button onclick="processPayment()" class="w-full gradient-bg py-4 rounded-xl font-bold text-lg hover:opacity-90 transition-all mt-6">
                    <i class="fas fa-lock mr-2"></i>
                    PAY NOW
                </button>
                <div class="text-center text-xs text-gray-400 mt-4">
                    <i class="fas fa-shield-alt mr-1"></i>
                    256-bit SSL Encryption • Secure Payment
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="mt-12 py-8 border-t border-white/10">
        <div class="max-w-7xl mx-auto px-4">
            <div class="grid md:grid-cols-4 gap-8">
                <div>
                    <div class="text-2xl font-bold gradient-text mb-4">VeXachat Elite</div>
                    <p class="text-sm text-gray-400">Premium adult social platform</p>
                </div>
                <div>
                    <h4 class="font-bold mb-4">QUICK LINKS</h4>
                    <div class="space-y-2">
                        <a href="#" class="text-sm text-gray-400 hover:text-white block">Terms & Conditions</a>
                        <a href="#" class="text-sm text-gray-400 hover:text-white block">Privacy Policy</a>
                        <a href="#" class="text-sm text-gray-400 hover:text-white block">Support</a>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">PAYMENT METHODS</h4>
                    <div class="flex gap-2">
                        <i class="fab fa-cc-visa text-2xl text-blue-400"></i>
                        <i class="fab fa-cc-mastercard text-2xl text-red-400"></i>
                        <i class="fab fa-cc-amex text-2xl text-blue-300"></i>
                        <i class="fab fa-bitcoin text-2xl text-orange-400"></i>
                    </div>
                </div>
                <div>
                    <h4 class="font-bold mb-4">CONTACT US</h4>
                    <div class="flex gap-4">
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-telegram text-xl"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-whatsapp text-xl"></i></a>
                        <a href="#" class="text-gray-400 hover:text-white"><i class="fab fa-instagram text-xl"></i></a>
                    </div>
                </div>
            </div>
            <div class="text-center mt-8 pt-8 border-t border-white/10 text-sm text-gray-400">
                © 2026 VeXachat Elite Protocol. All rights reserved.
                <br>
                Content for adults only (19+). Access restricted to persons 19 years and older.
            </div>
        </div>
    </footer>

    <script>
        // Translation data
        const translations = {
            en: {
                welcome: "Welcome to VeXachat Elite!",
                chatPlaceholder: "Type your message here...",
                online: "Online",
                send: "Send",
                models: "Models",
                rooms: "Rooms",
                shop: "Shop",
                profile: "Profile",
                stats: "Statistics",
                save: "Save"
            },
            th: {
                welcome: "ยินดีต้อนรับสู่ VeXachat Elite!",
                chatPlaceholder: "พิมพ์ข้อความของคุณที่นี่...",
                online: "ออนไลน์",
                send: "ส่ง",
                models: "นางแบบ",
                rooms: "ห้อง",
                shop: "ร้านค้า",
                profile: "โปรไฟล์",
                stats: "สถิติ",
                save: "บันทึก"
            },
            es: {
                welcome: "¡Bienvenido a VeXachat Elite!",
                chatPlaceholder: "Escribe tu mensaje aquí...",
                online: "En línea",
                send: "Enviar",
                models: "Modelos",
                rooms: "Salas",
                shop: "Tienda",
                profile: "Perfil",
                stats: "Estadísticas",
                save: "Guardar"
            },
            fr: {
                welcome: "Bienvenue sur VeXachat Elite!",
                chatPlaceholder: "Tapez votre message ici...",
                online: "En ligne",
                send: "Envoyer",
                models: "Modèles",
                rooms: "Salles",
                shop: "Boutique",
                profile: "Profil",
                stats: "Statistiques",
                save: "Enregistrer"
            },
            ru: {
                welcome: "Добро пожаловать в VeXachat Elite!",
                chatPlaceholder: "Введите ваше сообщение здесь...",
                online: "Онлайн",
                send: "Отправить",
                models: "Модели",
                rooms: "Комнаты",
                shop: "Магазин",
                profile: "Профиль",
                stats: "Статистика",
                save: "Сохранить"
            },
            ar: {
                welcome: "مرحباً بك في VeXachat Elite!",
                chatPlaceholder: "اكتب رسالتك هنا...",
                online: "متصل",
                send: "إرسال",
                models: "عارضات",
                rooms: "غرف",
                shop: "متجر",
                profile: "ملف",
                stats: "إحصائيات",
                save: "حفظ"
            }
        };

        let currentLanguage = 'en';
        let currentPaymentPackage = null;

        // Initial messages
        const initialMessages = [
            { user: "Sakura", message: "Welcome to my VIP lounge! Private shows available now 🔥", time: "Just now", avatar: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" },
            { user: "Admin", message: "VIP membership activated for 30 days! Enjoy exclusive access.", time: "2 min ago", avatar: "https://api.dicebear.com/7.x/avataaars/svg?seed=Admin" },
            { user: "Miyuki", message: "New private room open! Join for exclusive content 💝", time: "5 min ago", avatar: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" }
        ];

        // Show notification
        function showNotification(text) {
            // Create notification element
            const notification = document.createElement('div');
            notification.className = 'fixed top-20 right-4 glass p-4 rounded-xl shadow-2xl z-50 animate-in slide-in-from-right';
            notification.innerHTML = `
                <div class="flex items-center gap-3">
                    <i class="fas fa-bell text-yellow-400 text-xl"></i>
                    <div>
                        <p class="font-bold text-sm">${text}</p>
                        <p class="text-xs text-gray-400">Now</p>
                    </div>
                </div>
            `;
            document.body.appendChild(notification);
            
            setTimeout(() => {
                notification.remove();
            }, 3000);
        }

        // Switch tab
        function showTab(tab) {
            // Hide all tabs
            ['chat', 'models', 'rooms', 'dating', 'shop', 'profile'].forEach(t => {
                const element = document.getElementById(`${t}-tab`);
                if (element) {
                    element.classList.add('hidden');
                }
            });

            // Show target tab
            const targetTab = document.getElementById(`${tab}-tab`);
            if (targetTab) {
                targetTab.classList.remove('hidden');
            }

            // Handle sidebar visibility
            if (tab === 'chat') {
                document.getElementById('models-tab').classList.remove('hidden');
                document.getElementById('shop-tab').classList.add('hidden');
            } else if (tab === 'shop') {
                document.getElementById('models-tab').classList.add('hidden');
                document.getElementById('shop-tab').classList.remove('hidden');
            } else {
                document.getElementById('models-tab').classList.add('hidden');
                document.getElementById('shop-tab').classList.add('hidden');
            }

            // Show notification
            const tabNames = {
                'chat': 'Chat',
                'models': 'Models',
                'rooms': 'Rooms',
                'dating': 'Dating',
                'shop': 'Shop',
                'profile': 'Profile'
            };
            showNotification(`Switched to ${tabNames[tab]}`);
        }

        // Send message
        function sendMessage() {
            const input = document.getElementById('chatInput');
            const message = input.value.trim();
            
            if (message) {
                const chatMessages = document.getElementById('chatMessages');
                const newMessage = document.createElement('div');
                newMessage.className = 'flex gap-4 justify-end';
                newMessage.innerHTML = `
                    <div class="bg-gradient-to-l from-pink-900/30 to-purple-900/30 border border-pink-500/30 p-4 rounded-2xl rounded-bl-none max-w-[70%]">
                        <p class="text-xs font-bold text-pink-400 uppercase mb-1">You</p>
                        <p class="text-sm leading-relaxed">${message}</p>
                        <p class="text-xs text-gray-400 mt-2 text-left">Just now</p>
                    </div>
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" class="w-10 h-10 rounded-full border border-pink-500/50">
                `;
                chatMessages.appendChild(newMessage);
                input.value = '';
                chatMessages.scrollTop = chatMessages.scrollHeight;
                
                showNotification('Message sent successfully!');
            }
        }

        // Change language
        function changeLanguage(lang) {
            currentLanguage = lang;
            const trans = translations[lang];
            
            // Update UI elements
            document.getElementById('chatInput').placeholder = trans.chatPlaceholder;
            
            showNotification(trans.welcome);
        }

        // Initialize chat
        function initializeChat() {
            const chatMessages = document.getElementById('chatMessages');
            initialMessages.forEach(msg => {
                const messageElement = document.createElement('div');
                messageElement.className = 'flex gap-4';
                messageElement.innerHTML = `
                    <img src="${msg.avatar}" class="w-10 h-10 rounded-full border border-pink-500/50">
                    <div class="bg-white/5 border border-white/10 p-4 rounded-2xl rounded-tr-none max-w-[70%]">
                        <p class="text-xs font-bold text-pink-400 uppercase mb-1">${msg.user}</p>
                        <p class="text-sm leading-relaxed">${msg.message}</p>
                        <p class="text-xs text-gray-400 mt-2">${msg.time}</p>
                    </div>
                `;
                chatMessages.appendChild(messageElement);
            });
        }

        // Show payment modal
        function showPayment(packageType) {
            currentPaymentPackage = packageType;
            const modal = document.getElementById('paymentModal');
            const details = document.getElementById('paymentDetails');
            
            const packages = {
                gold: { name: "GOLD PACKAGE", price: "$19.99", coins: "500 Coins" },
                platinum: { name: "PLATINUM PACKAGE", price: "$39.99", coins: "1000 Coins" },
                diamond: { name: "DIAMOND PACKAGE", price: "$99.99", coins: "5000 Coins" }
            };
            
            details.innerHTML = `
                <div class="bg-gradient-to-r from-pink-900/20 to-purple-900/20 p-4 rounded-xl mb-4">
                    <div class="text-center">
                        <div class="text-2xl font-bold mb-2">${packages[packageType].name}</div>
                        <div class="text-4xl font-bold gradient-text mb-2">${packages[packageType].price}</div>
                        <div class="text-gray-300">${packages[packageType].coins} + VIP Benefits</div>
                    </div>
                </div>
            `;
            
            modal.classList.remove('hidden');
        }

        // Close payment modal
        function closePayment() {
            document.getElementById('paymentModal').classList.add('hidden');
        }

        // Process payment
        function processPayment() {
            showNotification("Payment processed successfully! VIP access activated.");
            closePayment();
            
            // Add coins to user account
            setTimeout(() => {
                showNotification("Coins added to your account! Enjoy premium access.");
            }, 1000);
        }

        // Create room
        function createRoom() {
            showNotification("Room creation feature coming soon!");
        }

        // Event listeners
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize chat
            initializeChat();
            
            // Show welcome notification
            setTimeout(() => {
                showNotification("Welcome to VeXachat Elite! Enjoy premium experience.");
            }, 1000);
            
            // Send message on Enter
            document.getElementById('chatInput').addEventListener('keypress', function(e) {
                if (e.key === 'Enter') {
                    sendMessage();
                }
            });
            
            // Language selector
            document.getElementById('languageSelector').addEventListener('change', function(e) {
                changeLanguage(e.target.value);
            });
            
            // Add hover effects
            const cards = document.querySelectorAll('.hover-lift');
            cards.forEach(card => {
                card.addEventListener('mouseenter', () => {
                    card.style.transform = 'translateY(-5px)';
                });
                card.addEventListener('mouseleave', () => {
                    card.style.transform = 'translateY(0)';
                });
            });
        });

        // Add more models data
        const hotModels = [
            { name: "Sakura", age: 24, location: "Tokyo", status: "online" },
            { name: "Miyuki", age: 22, location: "Bangkok", status: "online" },
            { name: "Chloe", age: 25, location: "Seoul", status: "online" },
            { name: "Aria", age: 23, location: "Shanghai", status: "online" },
            { name: "Luna", age: 26, location: "Singapore", status: "away" },
            { name: "Hana", age: 21, location: "Osaka", status: "online" }
        ];

        // Simulate online users
        setInterval(() => {
            const onlineCount = document.querySelector('.text-xs.text-white\\/40 span');
            if (onlineCount) {
                const current = parseInt(onlineCount.textContent.replace(',', ''));
                const newCount = current + (Math.random() > 0.5 ? 1 : -1);
                if (newCount > 1400 && newCount < 1500) {
                    onlineCount.textContent = newCount.toLocaleString();
                }
            }
        }, 10000);
    </script>
</body>
</html>
EOF

echo "✅ تم تحديث الملف الرئيسي (index.html) بالقالب الجديد والسنة 2026"

# إنشاء ملف سكريبت الدفع (اختياري)
if [ ! -f "payment-webhook.js" ]; then
    cat > payment-webhook.js << 'EOF'
const express = require('express');
const app = express();
app.use(express.json());

const packages = {
    gold: { price: 19.99, coins: 500, vipDays: 30 },
    platinum: { price: 39.99, coins: 1000, vipDays: 60 },
    diamond: { price: 99.99, coins: 5000, vipDays: 365 }
};

app.post('/api/payment/webhook', (req, res) => {
    const { userId, packageType, paymentId, amount } = req.body;
    
    if (!userId || !packageType || !paymentId) {
        return res.status(400).json({ error: 'Missing required fields' });
    }
    
    const package = packages[packageType];
    if (!package) {
        return res.status(400).json({ error: 'Invalid package type' });
    }
    
    console.log(`Payment processed for user ${userId}:`);
    console.log(`- Package: ${packageType}`);
    console.log(`- Amount: $${amount}`);
    console.log(`- Payment ID: ${paymentId}`);
    
    res.json({
        success: true,
        message: 'Payment processed successfully',
        data: {
            userId,
            package: packageType,
            coinsAdded: package.coins,
            vipDays: package.vipDays,
            transactionId: `TXN${Date.now()}`
        }
    });
});

app.post('/api/payment/process', (req, res) => {
    const { cardNumber, expiry, cvv, packageType } = req.body;
    
    if (!cardNumber || !expiry || !cvv || !packageType) {
        return res.status(400).json({ error: 'Missing payment details' });
    }
    
    setTimeout(() => {
        const success = Math.random() < 0.8;
        
        if (success) {
            const package = packages[packageType];
            res.json({
                success: true,
                message: 'Payment successful',
                transactionId: `TXN${Date.now()}`,
                package: {
                    type: packageType,
                    price: package.price,
                    coins: package.coins,
                    vipDays: package.vipDays
                }
            });
        } else {
            res.status(402).json({
                success: false,
                error: 'Payment declined'
            });
        }
    }, 2000);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Payment server running on port ${PORT}`);
});
EOF
    echo "✅ تم إنشاء ملف الدفع (payment-webhook.js)"
else
    echo "📁 ملف الدفع موجود مسبقاً، تم الحفاظ عليه"
fi

# إنشاء ملف package.json (اختياري)
if [ ! -f "package.json" ]; then
    cat > package.json << 'EOF'
{
  "name": "vexachat-elite",
  "version": "2026.1.0",
  "description": "Premium adult social platform - 2026 Edition",
  "main": "index.html",
  "scripts": {
    "start": "node payment-webhook.js",
    "dev": "npx serve ."
  },
  "dependencies": {
    "express": "^4.18.2"
  },
  "author": "VeXachat Elite Team",
  "license": "PROPRIETARY"
}
EOF
    echo "✅ تم إنشاء ملف package.json"
else
    # تحديث السنة في package.json إذا كان موجوداً
    if grep -q "2025" package.json; then
        sed -i 's/2025/2026/g' package.json
        echo "✅ تم تحديث السنة في package.json إلى 2026"
    fi
fi

# إنشاء ملف README محدث
cat > README_UPDATED.md << 'EOF'
# VeXachat Elite - 2026 Edition

## 🎯 الميزات الجديدة في النسخة 2026

### 1. تصميم متطور
- تأثيرات Neon حديثة
- خلفيات متحركة
- تصميم زجاجي (Glassmorphism)
- ألوان متدرجة

### 2. نظام متكامل
- **غرف دردشة متعددة**: VIP، صوتية، خاصة
- **عارضات بريميوم**: بأسماء جذابة
- **نظام مواعدة**: اتصال مباشر
- **متجر إلكتروني**: باقات VIP
- **ملف شخصي**: قابل للتخصيص

### 3. دعم لغات
- الإنجليزية (الافتراضية)
- التايلندية (ไทย)
- الإسبانية (Español)
- الفرنسية (Français)
- الروسية (Русский)
- العربية (العربية)

### 4. نظام دفع آمن
- بوابة دفع متكاملة
- تشفير SSL 256-bit
- دعم بطاقات متعددة

## 🚀 كيفية التشغيل

### الطريقة السريعة:
```bash
# افتح الملف مباشرة في المتصفح
open index.html