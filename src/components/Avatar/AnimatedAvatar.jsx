"use client";

import { useEffect, useState } from 'react';
import styles from './AnimatedAvatar.module.css';

export default function AnimatedAvatar({ 
  seed, 
  size = 80,
  hasStatus = true,
  isOnline = true 
}) {
  const [isHovered, setIsHovered] = useState(false);
  
  // توليد صورة أفتار عشوائية من DiceBear
  const avatarUrl = `https://api.dicebear.com/7.x/avataaars/svg?seed=${seed || 'vexachat'}&backgroundType=gradientLinear&backgroundColor=b6e3f4,c0aede,d1d4f9,ffd5dc,ffdfbf`;

  return (
    <div 
      className={styles.avatarContainer}
      style={{ width: size, height: size }}
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
    >
      <div className={`${styles.avatarWrapper} ${isHovered ? styles.hover : ''}`}>
        <div className={styles.avatarGlow} />
        
        <img
          src={avatarUrl}
          alt={`Avatar ${seed}`}
          className={styles.avatarImage}
          width={size}
          height={size}
        />
        
        {hasStatus && (
          <div className={`${styles.statusIndicator} ${isOnline ? styles.online : styles.offline}`}>
            <div className={styles.statusPulse} />
          </div>
        )}
        
        {isHovered && (
          <div className={styles.hoverRing}>
            <div className={styles.ringParticle} style={{ '--i': 0 }} />
            <div className={styles.ringParticle} style={{ '--i': 1 }} />
            <div className={styles.ringParticle} style={{ '--i': 2 }} />
            <div className={styles.ringParticle} style={{ '--i': 3 }} />
            <div className={styles.ringParticle} style={{ '--i': 4 }} />
            <div className={styles.ringParticle} style={{ '--i': 5 }} />
            <div className={styles.ringParticle} style={{ '--i': 6 }} />
            <div className={styles.ringParticle} style={{ '--i': 7 }} />
          </div>
        )}
      </div>
    </div>
  );
}

