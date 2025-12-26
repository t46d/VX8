/**
 * توليد ألوان متناغمة للتصميم
 */

export const colorPalettes = {
  cyberpunk: {
    primary: '#00f0ff',
    secondary: '#b500ff',
    accent: '#ff00c8',
    success: '#00ff9d',
    warning: '#ffb800',
    error: '#ff4757',
  },
  neon: {
    primary: '#00ff9f',
    secondary: '#ff00c8',
    accent: '#00f0ff',
    success: '#00ff9d',
    warning: '#ffb800',
    error: '#ff4757',
  },
  dark: {
    primary: '#1a1a2e',
    secondary: '#16213e',
    accent: '#0f3460',
    success: '#00ff9d',
    warning: '#ffb800',
    error: '#ff4757',
  },
};

/**
 * توليد لون عشوائي من لوحة الألوان
 */
export function getRandomColor(palette = 'cyberpunk') {
  const colors = Object.values(colorPalettes[palette] || colorPalettes.cyberpunk);
  return colors[Math.floor(Math.random() * colors.length)];
}

/**
 * توليد تدرج لوني
 */
export function generateGradient(color1, color2, direction = '45deg') {
  return `linear-gradient(${direction}, ${color1}, ${color2})`;
}

/**
 * توليد لون مع الشفافية
 */
export function withOpacity(color, opacity = 1) {
  if (color.startsWith('#')) {
    const r = parseInt(color.slice(1, 3), 16);
    const g = parseInt(color.slice(3, 5), 16);
    const b = parseInt(color.slice(5, 7), 16);
    return `rgba(${r}, ${g}, ${b}, ${opacity})`;
  }
  return color;
}

/**
 * توليد لون متناسق بناءً على seed
 */
export function generateColorFromSeed(seed, palette = 'cyberpunk') {
  const colors = Object.values(colorPalettes[palette] || colorPalettes.cyberpunk);
  let hash = 0;
  for (let i = 0; i < seed.length; i++) {
    hash = seed.charCodeAt(i) + ((hash << 5) - hash);
  }
  return colors[Math.abs(hash) % colors.length];
}

