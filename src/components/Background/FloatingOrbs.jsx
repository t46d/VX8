"use client";

import { useEffect, useState } from 'react';
import styles from './FloatingOrbs.module.css';

export default function FloatingOrbs() {
  const [orbs, setOrbs] = useState([]);

  useEffect(() => {
    const colors = [
      'rgba(0, 240, 255, 0.1)',
      'rgba(181, 0, 255, 0.1)',
      'rgba(255, 0, 200, 0.1)',
      'rgba(0, 255, 200, 0.1)'
    ];
    
    const newOrbs = Array.from({ length: 8 }, (_, i) => ({
      id: i,
      x: Math.random() * 100,
      y: Math.random() * 100,
      size: Math.random() * 80 + 40,
      color: colors[i % colors.length],
      speedX: (Math.random() - 0.5) * 0.2,
      speedY: (Math.random() - 0.5) * 0.2,
    }));
    
    setOrbs(newOrbs);
  }, []);

  return (
    <div className="fixed inset-0 z-[-2] overflow-hidden pointer-events-none">
      {orbs.map(orb => (
        <div
          key={orb.id}
          className={styles.floatingOrb}
          style={{
            left: `${orb.x}vw`,
            top: `${orb.y}vh`,
            width: orb.size,
            height: orb.size,
            background: `radial-gradient(circle, ${orb.color} 0%, transparent 70%)`,
            animationDelay: `${orb.id * 0.5}s`,
          }}
        />
      ))}
    </div>
  );
}

