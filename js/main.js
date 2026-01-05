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
