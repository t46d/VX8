"use client";

import { useEffect, useRef } from 'react';

export default function HolographicGrid() {
  const canvasRef = useRef(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const ctx = canvas.getContext('2d');
    let animationId;
    let time = 0;

    const resize = () => {
      canvas.width = window.innerWidth;
      canvas.height = window.innerHeight;
    };

    const drawGrid = () => {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      
      const gridSize = 80;
      const offsetX = (time * 20) % gridSize;
      const offsetY = (time * 15) % gridSize;
      
      // خطوط أفقية ناعمة
      ctx.beginPath();
      ctx.strokeStyle = 'rgba(0, 240, 255, 0.05)';
      ctx.lineWidth = 0.5;
      
      for (let y = -offsetY; y < canvas.height + gridSize; y += gridSize) {
        ctx.moveTo(0, y);
        ctx.lineTo(canvas.width, y);
      }
      
      // خطوط رأسية ناعمة
      for (let x = -offsetX; x < canvas.width + gridSize; x += gridSize) {
        ctx.moveTo(x, 0);
        ctx.lineTo(x, canvas.height);
      }
      
      ctx.stroke();
      
      // نقاط تقاطع مشعة
      ctx.fillStyle = 'rgba(181, 0, 255, 0.1)';
      for (let x = -offsetX; x < canvas.width + gridSize; x += gridSize) {
        for (let y = -offsetY; y < canvas.height + gridSize; y += gridSize) {
          const pulse = Math.sin(time * 2 + x * 0.01 + y * 0.01) * 0.5 + 0.5;
          ctx.globalAlpha = pulse * 0.1;
          ctx.beginPath();
          ctx.arc(x, y, 1, 0, Math.PI * 2);
          ctx.fill();
        }
      }
      
      ctx.globalAlpha = 1;
      time += 0.01;
      animationId = requestAnimationFrame(drawGrid);
    };

    resize();
    window.addEventListener('resize', resize);
    drawGrid();

    return () => {
      window.removeEventListener('resize', resize);
      cancelAnimationFrame(animationId);
    };
  }, []);

  return (
    <canvas
      ref={canvasRef}
      className="fixed inset-0 z-[-1] pointer-events-none"
      style={{ opacity: 0.3 }}
    />
  );
}

