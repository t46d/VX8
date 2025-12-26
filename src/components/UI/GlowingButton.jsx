"use client";

import { useState } from 'react';

export default function GlowingButton({
  children,
  onClick,
  variant = 'primary',
  size = 'md',
  disabled = false,
  className = '',
  ...props
}) {
  const [isHovered, setIsHovered] = useState(false);

  const variants = {
    primary: 'bg-gradient-to-r from-cyan-500 to-purple-500 text-white',
    secondary: 'bg-gradient-to-r from-purple-500 to-pink-500 text-white',
    accent: 'bg-gradient-to-r from-pink-500 to-cyan-500 text-white',
    outline: 'border-2 border-cyan-500 text-cyan-500 bg-transparent',
  };

  const sizes = {
    sm: 'px-4 py-2 text-sm',
    md: 'px-6 py-3 text-base',
    lg: 'px-8 py-4 text-lg',
  };

  return (
    <button
      className={`
        relative
        ${variants[variant]}
        ${sizes[size]}
        ${disabled ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer'}
        rounded-lg
        font-semibold
        transition-all
        duration-300
        overflow-hidden
        ${className}
      `}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
      onClick={onClick}
      disabled={disabled}
      {...props}
    >
      {/* تأثير التوهج */}
      <div
        className={`
          absolute inset-0
          bg-gradient-to-r from-cyan-400 via-purple-400 to-pink-400
          opacity-0
          transition-opacity duration-300
          ${isHovered ? 'opacity-30' : ''}
        `}
      />
      
      {/* تأثير الانزلاق */}
      <div
        className={`
          absolute inset-0
          bg-white
          opacity-0
          transition-all duration-500
          ${isHovered ? 'opacity-20 translate-x-full' : '-translate-x-full'}
        `}
        style={{
          background: 'linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent)',
        }}
      />
      
      {/* النص */}
      <span className="relative z-10">{children}</span>
      
      {/* تأثير التوهج الخارجي */}
      <div
        className={`
          absolute -inset-1
          bg-gradient-to-r from-cyan-500 via-purple-500 to-pink-500
          rounded-lg
          blur-sm
          opacity-0
          transition-opacity duration-300
          -z-10
          ${isHovered ? 'opacity-50' : ''}
        `}
      />
    </button>
  );
}

