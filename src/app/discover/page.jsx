"use client"

export default function DiscoverPage() {
  const profiles = [
    { name: 'Alex', age: 28, location: 'New York', interests: ['Travel', 'Music', 'Art'] },
    { name: 'Sarah', age: 25, location: 'London', interests: ['Photography', 'Yoga', 'Food'] },
    { name: 'Mike', age: 30, location: 'Tokyo', interests: ['Tech', 'Gaming', 'Anime'] },
    { name: 'Emma', age: 27, location: 'Paris', interests: ['Fashion', 'Dance', 'Coffee'] },
  ]

  return (
    <div style={styles.container}>
      <div style={styles.header}>
        <h1 style={styles.title}>🔍 Discover Amazing People</h1>
        <p style={styles.subtitle}>Find your perfect match with AI-powered suggestions</p>
      </div>
      
      <div style={styles.filterBar}>
        <input type="text" placeholder="Search by interests..." style={styles.searchInput} />
        <select style={styles.filterSelect}>
          <option>All Locations</option>
          <option>Nearby</option>
          <option>International</option>
        </select>
        <button style={styles.filterBtn}>Apply Filters</button>
      </div>

      <div style={styles.profilesGrid}>
        {profiles.map((profile, index) => (
          <div key={index} style={styles.profileCard}>
            <div style={styles.avatar}>{profile.name.charAt(0)}</div>
            <h3 style={styles.profileName}>{profile.name}, {profile.age}</h3>
            <p style={styles.profileLocation}>📍 {profile.location}</p>
            <div style={styles.interests}>
              {profile.interests.map((interest, i) => (
                <span key={i} style={styles.interestTag}>{interest}</span>
              ))}
            </div>
            <button style={styles.connectBtn}>Connect</button>
          </div>
        ))}
      </div>

      <div style={styles.aiSection}>
        <h3>🤖 AI Match Suggestions</h3>
        <p>Our AI is analyzing profiles to find your perfect match...</p>
        <div style={styles.loadingBar}></div>
      </div>
    </div>
  )
}

const styles = {
  container: {
    maxWidth: '1200px',
    margin: '0 auto',
    padding: '40px 20px',
    color: 'white',
    minHeight: '100vh',
    background: 'linear-gradient(135deg, #0f172a 0%, #1e293b 100%)',
  },
  header: {
    textAlign: 'center',
    marginBottom: '40px',
  },
  title: {
    fontSize: '3rem',
    background: 'linear-gradient(45deg, #60a5fa, #a78bfa)',
    WebkitBackgroundClip: 'text',
    WebkitTextFillColor: 'transparent',
    marginBottom: '10px',
  },
  subtitle: {
    color: '#cbd5e1',
    fontSize: '1.2rem',
  },
  filterBar: {
    display: 'flex',
    gap: '15px',
    marginBottom: '40px',
    flexWrap: 'wrap',
    justifyContent: 'center',
  },
  searchInput: {
    padding: '12px 20px',
    borderRadius: '25px',
    border: '1px solid rgba(255, 255, 255, 0.1)',
    background: 'rgba(255, 255, 255, 0.05)',
    color: 'white',
    minWidth: '300px',
  },
  filterSelect: {
    padding: '12px 20px',
    borderRadius: '25px',
    border: '1px solid rgba(255, 255, 255, 0.1)',
    background: 'rgba(255, 255, 255, 0.05)',
    color: 'white',
  },
  filterBtn: {
    padding: '12px 30px',
    background: 'linear-gradient(45deg, #3b82f6, #8b5cf6)',
    color: 'white',
    border: 'none',
    borderRadius: '25px',
    cursor: 'pointer',
  },
  profilesGrid: {
    display: 'grid',
    gridTemplateColumns: 'repeat(auto-fill, minmax(280px, 1fr))',
    gap: '30px',
    marginBottom: '50px',
  },
  profileCard: {
    background: 'rgba(255, 255, 255, 0.03)',
    padding: '30px',
    borderRadius: '20px',
    border: '1px solid rgba(255, 255, 255, 0.05)',
    textAlign: 'center',
  },
  avatar: {
    width: '80px',
    height: '80px',
    background: 'linear-gradient(45deg, #3b82f6, #8b5cf6)',
    borderRadius: '50%',
    margin: '0 auto 20px',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    fontSize: '2rem',
    fontWeight: 'bold',
  },
  profileName: {
    fontSize: '1.5rem',
    marginBottom: '5px',
  },
  profileLocation: {
    color: '#94a3b8',
    marginBottom: '15px',
  },
  interests: {
    display: 'flex',
    gap: '8px',
    flexWrap: 'wrap',
    justifyContent: 'center',
    marginBottom: '20px',
  },
  interestTag: {
    background: 'rgba(59, 130, 246, 0.2)',
    padding: '5px 15px',
    borderRadius: '15px',
    fontSize: '0.9rem',
  },
  connectBtn: {
    padding: '10px 30px',
    background: 'transparent',
    color: '#60a5fa',
    border: '2px solid #60a5fa',
    borderRadius: '25px',
    cursor: 'pointer',
    width: '100%',
  },
  aiSection: {
    background: 'rgba(255, 255, 255, 0.03)',
    padding: '30px',
    borderRadius: '20px',
    textAlign: 'center',
  },
  loadingBar: {
    height: '10px',
    background: 'linear-gradient(90deg, #3b82f6, #8b5cf6, #3b82f6)',
    borderRadius: '5px',
    marginTop: '20px',
    animation: 'loading 2s infinite',
  },
}
