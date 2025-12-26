"use client";

export default function NeonGlow() {
  return (
    <div className="fixed inset-0 z-[-4] pointer-events-none overflow-hidden">
      {/* توهج علوي */}
      <div 
        className="absolute top-0 left-1/2 -translate-x-1/2 w-[800px] h-[400px] rounded-full blur-3xl opacity-20"
        style={{
          background: 'radial-gradient(circle, rgba(0, 240, 255, 0.4) 0%, transparent 70%)',
        }}
      />
      
      {/* توهج سفلي */}
      <div 
        className="absolute bottom-0 right-1/4 w-[600px] h-[300px] rounded-full blur-3xl opacity-15"
        style={{
          background: 'radial-gradient(circle, rgba(181, 0, 255, 0.3) 0%, transparent 70%)',
        }}
      />
      
      {/* توهج جانبي */}
      <div 
        className="absolute top-1/2 left-0 w-[500px] h-[500px] rounded-full blur-3xl opacity-10"
        style={{
          background: 'radial-gradient(circle, rgba(255, 0, 200, 0.3) 0%, transparent 70%)',
        }}
      />
    </div>
  );
}

