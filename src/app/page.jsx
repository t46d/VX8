"use client"

import { useState, useEffect } from 'react'

export default function Home() {
  const [mounted, setMounted] = useState(false)

  useEffect(() => {
    setMounted(true)
  }, [])

  const features = [
    { icon: '🤖', title: 'AI Matching', desc: 'Intelligent compatibility algorithms' },
    { icon: '💬', title: 'Unlimited Chat', desc: 'Free messaging with rich media' },
    { icon: '🎥', title: 'Video Rooms', desc: 'Group and private video sessions' },
    { icon: '🔒', title: 'Privacy First', desc: 'End-to-end encryption' },
    { icon: '🌍', title: 'Global Reach', desc: 'Multi-language support' },
    { icon: '⭐', title: 'Expert Advisors', desc: 'Professional relationship consultants' },
  ]

  return (
    <div style={styles.container}>
      <div style={styles.hero}>
        <div style={styles.glassCard}>
          <h1 style={styles.title}>🚀 VeXachat</h1>
          <p style={styles.subtitle}>Advanced Social Dating Platform</p>
          <p style={styles.description}>
            Experience the future of social dating with AI-powered matching, 
            immersive chat experiences, and unlimited possibilities.
          </p>
          
          <div style={styles.featureGrid}>
            {features.map((feature, index) => (
              <div key={index} style={{
                ...styles.featureCard,
                animationDelay: `${index * 0.1}s`,
                opacity: mounted ? 1 : 0,
                transform: mounted ? 'translateY(0)' : 'translateY(20px)',
              }}>
                <div style={styles.featureIcon}>{feature.icon}</div>
                <h3 style={styles.featureTitle}>{feature.title}</h3>
                <p style={styles.featureDesc}>{feature.desc}</p>
              </div>
            ))}
          </div>

          <div style={styles.ctaSection}>
            <button style={styles.primaryBtn}>
              🚀 Get Started Free
            </button>
            <button style={styles.secondaryBtn}>
              📱 Download App
            </button>
          </div>

          <div style={styles.stats}>
            <div style={styles.stat}>
              <div style={styles.statNumber}>10K+</div>
              <div style={styles.statLabel}>Active Users</div>
            </div>
            <div style={styles.stat}>
              <div style={styles.statNumber}>98%</div>
              <div style={styles.statLabel}>Success Rate</div>
            </div>
            <div style={styles.stat}>
              <div style={styles.statNumber}>24/7</div>
              <div style={styles.statLabel}>Support</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

const styles = {
  container: {
    minHeight: '100vh',
    background: 'linear-gradient(135deg, #0f172a 0%, #1e293b 100%)',
    color: 'white',
    fontFamily: '-apple-system, BlinkMacSystemFont, sans-serif',
  },
  hero: {
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '40px 20px',
  },
  glassCard: {
    background: 'rgba(255, 255, 255, 0.05)',
    backdropFilter: 'blur(10px)',
    borderRadius: '24px',
    padding: '60px 40px',
    border: '1px solid rgba(255, 255, 255, 0.1)',
    boxShadow: '0 20px 40px rgba(0, 0, 0, 0.3)',
  },
  title: {
    fontSize: '4.5rem',
    fontWeight: 'bold',
    background: 'linear-gradient(45deg, #60a5fa, #a78bfa, #f472b6)',
    WebkitBackgroundClip: 'text',
    WebkitTextFillColor: 'transparent',
    textAlign: 'center',
    marginBottom: '20px',
  },
  subtitle: {
    fontSize: '1.8rem',
    color: '#cbd5e1',
    textAlign: 'center',
    marginBottom: '30px',
  },
  description: {
    fontSize: '1.2rem',
    color: '#94a3b8',
    textAlign: 'center',
    maxWidth: '800px',
    margin: '0 auto 50px',
    lineHeight: '1.6',
  },
  featureGrid: {
    display: 'grid',
    gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))',
    gap: '30px',
    marginBottom: '60px',
  },
  featureCard: {
    background: 'rgba(255, 255, 255, 0.03)',
    padding: '30px',
    borderRadius: '20px',
    border: '1px solid rgba(255, 255, 255, 0.05)',
    transition: 'all 0.3s ease',
  },
  featureIcon: {
    fontSize: '3rem',
    marginBottom: '20px',
  },
  featureTitle: {
    fontSize: '1.4rem',
    marginBottom: '10px',
    color: '#f1f5f9',
  },
  featureDesc: {
    color: '#94a3b8',
    fontSize: '0.95rem',
    lineHeight: '1.5',
  },
  ctaSection: {
    display: 'flex',
    gap: '20px',
    justifyContent: 'center',
    marginBottom: '60px',
    flexWrap: 'wrap',
  },
  primaryBtn: {
    padding: '18px 45px',
    fontSize: '1.2rem',
    background: 'linear-gradient(45deg, #3b82f6, #8b5cf6)',
    color: 'white',
    border: 'none',
    borderRadius: '50px',
    fontWeight: 'bold',
    cursor: 'pointer',
    transition: 'transform 0.2s, box-shadow 0.2s',
  },
  secondaryBtn: {
    padding: '18px 45px',
    fontSize: '1.2rem',
    background: 'transparent',
    color: '#cbd5e1',
    border: '2px solid rgba(203, 213, 225, 0.3)',
    borderRadius: '50px',
    fontWeight: 'bold',
    cursor: 'pointer',
    transition: 'all 0.2s',
  },
  stats: {
    display: 'flex',
    justifyContent: 'center',
    gap: '60px',
    flexWrap: 'wrap',
    paddingTop: '40px',
    borderTop: '1px solid rgba(255, 255, 255, 0.1)',
  },
  stat: {
    textAlign: 'center',
  },
  statNumber: {
    fontSize: '2.5rem',
    fontWeight: 'bold',
    background: 'linear-gradient(45deg, #60a5fa, #a78bfa)',
    WebkitBackgroundClip: 'text',
    WebkitTextFillColor: 'transparent',
    marginBottom: '10px',
  },
  statLabel: {
    color: '#cbd5e1',
    fontSize: '1rem',
  },
}
