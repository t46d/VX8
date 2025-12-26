"use client";

import React from 'react';

/**
 * فقاعة رسالة بتصميم Cyberpunk محسّن.
 * @param {boolean} isMine - لتحديد ما إذا كانت الرسالة مرسلة من المستخدم الحالي.
 * @param {string} content - محتوى الرسالة.
 * @param {string} timestamp - وقت إرسال الرسالة.
 * @param {string} avatar - رابط صورة الأفتار (اختياري).
 */
export default function ChatBubble({ isMine, content, timestamp, avatar }) {
    const containerClasses = isMine
        ? "flex justify-end items-end gap-2"
        : "flex justify-start items-end gap-2";
    
    const bubbleClasses = isMine
        ? "bg-gradient-to-br from-cyan-600/30 to-cyan-500/20 border-cyan-500/50 shadow-neon-cyan/50 self-end" 
        : "bg-gradient-to-br from-pink-600/30 to-pink-500/20 border-pink-500/50 shadow-neon-pink/50 self-start";

    return (
        <div className={containerClasses}>
            {!isMine && avatar && (
                <img 
                    src={avatar} 
                    alt="Avatar" 
                    className="w-8 h-8 rounded-full border-2 border-pink-500/30"
                />
            )}
            
            <div
                className={`max-w-xs lg:max-w-md p-4 rounded-xl border backdrop-blur-sm ${bubbleClasses} transition-all duration-300 hover:scale-[1.02]`}
                style={{
                    boxShadow: isMine
                        ? '0 0 15px rgba(0, 240, 255, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.1)'
                        : '0 0 15px rgba(255, 0, 200, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.1)'
                }}
            >
                <p className="text-gray-100 whitespace-pre-wrap leading-relaxed">{content}</p>
                <span className={`text-xs mt-2 block ${isMine ? 'text-right text-cyan-200/70' : 'text-left text-pink-200/70'}`}>
                    {timestamp}
                </span>
            </div>
            
            {isMine && avatar && (
                <img 
                    src={avatar} 
                    alt="Avatar" 
                    className="w-8 h-8 rounded-full border-2 border-cyan-500/30"
                />
            )}
        </div>
    );
}

