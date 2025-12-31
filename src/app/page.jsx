"use client"

import { useEffect } from 'react'

export default function HomePage() {
  useEffect(() => {
    console.log('VeXachat loaded successfully!')
  }, [])

  return (
    <div style={styles.container}>
      <div style={styles.glassCard}>
        <div style={styles.header}>
          <h1 style={styles.title}>🚀 VeXachat</h1>
          <p style={styles.subtitle}>Next Generation Social Dating Platform</p>
        </div>
        
        <div style={styles.features}>
          <div style={styles.featureCard}>
            <div style={styles.icon}>🤖</div>
            <h3>AI Matching</h3>
            <p>Intelligent compatibility algorithms</p>
          </div>
          
          <div style={styles.featureCard}>
            <div style={styles.icon}>💬</div>
            <h3>Unlimited Chat</h3>
            <p>Free messaging with rich media</p>
          </div>
          
          <div style={styles.featureCard}>
            <div style={styles.icon}>🎥</div>
            <h3>Video Rooms</h3>
            <p>Group and private video sessions</p>
          </div>
          
          <div style={styles.featureCard}>
            <div style={styles.icon}>🔒</div>
            <h3>Privacy First</h3>
            <p>End-to-end encryption</p>
          </div>
        </div>
        
        <div style={styles.ctaSection}>
          <button style={styles.primaryButton}>
            Start Free Today
          </button>
          <p style={styles.note}>No credit card required</p>
        </div>
      </div>
    </div>
  )
}

const styles = {
  container: {
    minHeight: '100vh',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    padding: '20px',
  },
  glassCard: {
    background: 'rgba(255, 255, 255, 0.05)',
    backdropFilter: 'blur(10px)',
    borderRadius: '24px',
    padding: '48px 32px',
    maxWidth: '900px',
    width: '100%',
    border: '1px solid rgba(255, 255, 255, 0.1)',
    boxShadow: '0 20px 40px rgba(0, 0, 0, 0.2)',
  },
  header: {
    textAlign: 'center',
    marginBottom: '48px',
  },
  title: {
    fontSize: '4rem',
    fontWeight: 'bold',
    background: 'linear-gradient(45deg, #60a5fa, #a78bfa)',
    WebkitBackgroundClip: 'text',
    WebkitTextFillColor: 'transparent',
    marginBottom: '16px',
  },
  subtitle: {
    fontSize: '1.25rem',
    color: '#cbd5e1',
  },
  features: {
    display: 'grid',
    gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))',
    gap: '24px',
    marginBottom: '48px',
  },
  featureCard: {
    background: 'rgba(255, 255, 255, 0.03)',
    padding: '24px',
    borderRadius: '16px',
    border: '1px solid rgba(255, 255, 255, 0.05)',
    textAlign: 'center',
    transition: 'transform 0.3s ease',
  },
  icon: {
    fontSize: '2.5rem',
    marginBottom: '16px',
  },
  ctaSection: {
    textAlign: 'center',
  },
  primaryButton: {
    padding: '16px 40px',
    fontSize: '1.125rem',
    background: 'linear-gradient(45deg, #3b82f6, #8b5cf6)',
    color: 'white',
    border: 'none',
    borderRadius: '50px',
    fontWeight: 'bold',
    marginBottom: '16px',
    transition: 'transform 0.2s ease',
  },
  note: {
    color: '#94a3b8',
    fontSize: '0.875rem',
  },
}
