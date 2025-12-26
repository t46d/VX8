"use client";

export default function TypingIndicator({ className = '' }) {
  return (
    <div className={`flex items-center space-x-1 ${className}`}>
      <div className="flex space-x-1">
        <div
          className="w-2 h-2 bg-cyan-400 rounded-full animate-bounce"
          style={{ animationDelay: '0ms', animationDuration: '1.4s' }}
        />
        <div
          className="w-2 h-2 bg-purple-400 rounded-full animate-bounce"
          style={{ animationDelay: '150ms', animationDuration: '1.4s' }}
        />
        <div
          className="w-2 h-2 bg-pink-400 rounded-full animate-bounce"
          style={{ animationDelay: '300ms', animationDuration: '1.4s' }}
        />
      </div>
      <span className="text-xs text-gray-400 ml-2">يكتب...</span>
    </div>
  );
}

